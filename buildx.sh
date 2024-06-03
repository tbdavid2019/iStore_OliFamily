#!/bin/bash

# 定义菜单
show_menu() {
    echo "请选择要执行的命令："
    echo "1. 编译 x86_64"
    echo "2. 编译 rk33xx"
    echo "3. 编译 rk35xx"
    echo "q. 退出"
}
# 主循环
while true; do
    show_menu
    read -p "请输入选项：" choice
    case $choice in
        1)
            rm -rf ib_x86_64
            ./runmynas.sh x86_64
            ;;
        2)
            rm -rf ib_rk33xx
            ./runmynas.sh rk33xx
            ;;
        3)
            rm -rf ib_rk35xx
            ./runmynas.sh rk35xx
            ;;
        q)
            echo "退出菜单"
            break
            ;;
        *)
            echo "无效的选项，请重新输入"
            ;;
    esac
done

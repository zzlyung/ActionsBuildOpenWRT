#!/bin/bash

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' ./feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' ./feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' ./feeds.conf.default
sed -i '$a src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' ./feeds.conf.default

# homeproxy
git clone --depth=1 https://github.com/immortalwrt/homeproxy.git package/homeproxy

#git clone https://github.com/281677160/openwrt-package package/openwrt-package
git clone https://github.com/vernesong/OpenClash package/OpenClash
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git luci-app-argon-config
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git luci-theme-argon

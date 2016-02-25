#!/bin/sh

cd /tmp
echo "Start download install package..."
wget --no-check-certificate --tries=1 --timeout=15 https://raw.githubusercontent.com/wangchll/kuainiao_for_xiaobao/master/kuainiao.tar.gz
echo "Installing..."
tar -zxf kuainiao.tar.gz
chmod a+x /tmp/kuainiao/update.sh
sh /tmp/kuainiao/update.sh
echo "Kuainiao install success!"
echo "Update Soft Center..."
cd /koolshare/res
wget --no-check-certificate --tries=1 --timeout=15 https://raw.githubusercontent.com/wangchll/xiao_add_kuainiao/master/software_center.png -O software_center.png
wget -no-check-certificate --tries=1 --timeout=15 https://raw.githubusercontent.com/wangchll/xiao_add_kuainiao/master/Softerware_center.css -O Softerware_center.css
cd /koolshare/webs
wget --no-check-certificate --tries=1 --timeout=15 https://raw.githubusercontent.com/wangchll/xiao_add_kuainiao/master/Main_Soft_center.asp -O Main_Soft_center.asp
echo "All Done~"
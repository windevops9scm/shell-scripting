#!/bin/bash

LOG=/temp/roboshop.log

yum install nginx -y
if [ $? -e 0 ]
then
echo "installing nginx....done"
fi
systemctl enable nginx
if [ $? -e 0 ]
then
echo  "enable nginx ...done"
fi
systemctl start nginx
if [ $? -e 0 ]
then
echo  "starting nginx...done"
fi
echo "download frontend....done "
#curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
 # cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-master static
# mv localhost.conf /etc/nginx/default.d/roboshop.conf

# systemctl restart nginx
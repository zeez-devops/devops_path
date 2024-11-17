#!/bin/bash

sudo apt update -y

sudo apt install apache2 -y

sudo systemctl status apache2

#curl localhost

sudo touch /etc/apache2/sites-available/devops.conf
sudo chmod 777 /etc/apache2/sites-available/devops.conf
sudo mkdir /var/www/devops

echo " <VirtualHost *:80>
              ServerAdmin webmaster@localhost
              DocumentRoot /var/www/devops/2133_moso_interior

              ErrorLog ${APACHE_LOG_DIR}/error.log
              CustomLog ${APACHE_LOG_DIR}/access.log combined

      </VirtualHost> " > /etc/apache2/sites-available/devops.conf

sudo apt install unzip -y

unzip /home/ubuntu/2133_moso_interior.zip

sudo cp -r /home/ubuntu/2133_moso_interior /var/www/devops

sudo a2ensite devops.conf

sudo a2dissite 000-default.conf

sudo systemctl reload apache2

#curl localhost

1) apt update
2) apt upgrade
3) apt install sudo
4) mkdir -p /var/lib/pufferpanel
5) docker volume create pufferpanel-config
6) docker create --name pufferpanel -p 8080:8080 -p 5657:5657 -v pufferpanel-config:/etc/pufferpanel -v /var/lib/pufferpanel:/var/lib/pufferpanel -v /var/run/docker.sock:/var/run/docker.sock --restart=on-failure pufferpanel/pufferpanel:latest
7) docker start pufferpanel
8) docker exec -it pufferpanel /pufferpanel/pufferpanel user add
9) Open Port 8080 From Ports with Ctrl + Mouse left click

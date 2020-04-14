set timeout 20
set hostname [lindex $argv 0]
set username [lindex $argv 1]
set password [lindex $argv 2]
spawn ssh $username@$hostname
expect {
 "*yes/no" { send "yes\r";exp_continue; }
 "*password" { send "$password\r";}
}
expect eof
interact
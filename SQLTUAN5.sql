create database NhaSach
use NhaSach
create table TheLoai
(
maloai int identity primary key,
tenloai nvarchar(30)
)
create table Sach
(
masach int identity(1,1) primary key,
maloai int references
TheLoai(maloai),
tensach nvarchar(100) not null,
hinh varchar(50),
giaban decimal(18,0),
ngaycapnhat smalldatetime,
soluongton int
)
create table KhachHang(
makh int identity(1,1) primary key,
hoten nvarchar(50),
tendangnhap varchar(20),

matkhau varchar(10),
email varchar(50),
diachi nvarchar(100),
dienthoai varchar(15),
ngaysinh date
)
create table DonHang(
madon int identity(1,1) primary key,
thanhtoan bit,
giaohang bit,
ngaydat date,
ngaygiao date,
makh int references KhachHang(makh)
)
create table ChiTietDonHang(
madon int references DonHang(madon),
masach int references Sach(masach),
soluong int,
gia decimal(18,0),
primary key(madon,masach)
)

insert into TheLoai(tenloai) values(N'Công nghệ thông tin')
insert into TheLoai(tenloai) values(N'Kinh tế')
insert into TheLoai(tenloai) values(N'Mỹ thuật')
select * from TheLoai
go
---------------------
insert into Sach(maloai,tensach,hinh,giaban,ngaycapnhat,soluongton) values(1,N'Lập
trình Java','/Content/images/JK1.jpg',40000,'12/02/2022',20)
insert into Sach(maloai,tensach,hinh,giaban,ngaycapnhat,soluongton) values(2,N'Quản
trị kinh doanh quốc tế','/Content/images/JK2.jpg',50000,'02/24/2022',20)
insert into Sach(maloai,tensach,hinh,giaban,ngaycapnhat,soluongton) values(3,N'Kỹ
thuật tô màu','/Content/images/JK3.jpg',75000,'02/24/2022',20)
Select*from Sach
.class public Ln8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ln8/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-static {p0}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ln8/d;->c(Ljava/lang/String;)Ljava/lang/String;

    return v0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110070

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 3
    aget-object p0, p0, p1

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v0, 0x11e

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "1"

    const-string v3, "US"

    .line 1
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "1204"

    const-string v4, "CA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string v2, "1226"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v1, v6

    const-string v2, "1242"

    const-string v6, "BS"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "1246"

    const-string v6, "BB"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    const-string v2, "1250"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v1, v6

    const-string v2, "1264"

    const-string v6, "AI"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v1, v6

    const-string v2, "1268"

    const-string v6, "AG"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v1, v6

    const-string v2, "1284"

    const-string v6, "VG"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x8

    aput-object v2, v1, v6

    const-string v2, "1289"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x9

    aput-object v2, v1, v6

    const-string v2, "1306"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xa

    aput-object v2, v1, v6

    const-string v2, "1340"

    const-string v6, "VI"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb

    aput-object v2, v1, v6

    const-string v2, "1345"

    const-string v6, "KY"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xc

    aput-object v2, v1, v6

    const-string v2, "1403"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xd

    aput-object v2, v1, v6

    const-string v2, "1416"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xe

    aput-object v2, v1, v6

    const-string v2, "1418"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xf

    aput-object v2, v1, v6

    const-string v2, "1438"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x10

    aput-object v2, v1, v6

    const-string v2, "1441"

    const-string v6, "BM"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x11

    aput-object v2, v1, v6

    const-string v2, "1450"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x12

    aput-object v2, v1, v6

    const-string v2, "1473"

    const-string v6, "GD"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x13

    aput-object v2, v1, v6

    const-string v2, "1506"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x14

    aput-object v2, v1, v6

    const-string v2, "1514"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x15

    aput-object v2, v1, v6

    const-string v2, "1519"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x16

    aput-object v2, v1, v6

    const-string v2, "1600"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x17

    aput-object v2, v1, v6

    const-string v2, "1604"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x18

    aput-object v2, v1, v6

    const-string v2, "1613"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x19

    aput-object v2, v1, v6

    const-string v2, "1647"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1a

    aput-object v2, v1, v6

    const-string v2, "1649"

    const-string v6, "TC"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1b

    aput-object v2, v1, v6

    const-string v2, "1664"

    const-string v6, "MS"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1c

    aput-object v2, v1, v6

    const-string v2, "1670"

    const-string v6, "MP"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1d

    aput-object v2, v1, v6

    const-string v2, "1671"

    const-string v6, "GU"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1e

    aput-object v2, v1, v6

    const-string v2, "1684"

    const-string v6, "AS"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1f

    aput-object v2, v1, v6

    const-string v2, "1705"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x20

    aput-object v2, v1, v6

    const-string v2, "1709"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x21

    aput-object v2, v1, v7

    const-string v2, "1758"

    const-string v7, "LC"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x22

    aput-object v2, v1, v7

    const-string v2, "1767"

    const-string v7, "DM"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x23

    aput-object v2, v1, v7

    const-string v2, "1778"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x24

    aput-object v2, v1, v7

    const-string v2, "1780"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x25

    aput-object v2, v1, v7

    const-string v2, "1784"

    const-string v7, "VC"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x26

    aput-object v2, v1, v7

    const-string v2, "1787"

    const-string v7, "PR"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x27

    aput-object v2, v1, v8

    const-string v2, "1807"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x28

    aput-object v2, v1, v8

    const-string v2, "1809"

    const-string v8, "DO"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x29

    aput-object v2, v1, v9

    const-string v2, "1819"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x2a

    aput-object v2, v1, v9

    const-string v2, "1829"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x2b

    aput-object v2, v1, v8

    const-string v2, "1867"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x2c

    aput-object v2, v1, v9

    const-string v2, "1868"

    const-string v9, "TT"

    filled-new-array {v2, v9}, [Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x2d

    aput-object v2, v1, v9

    const-string v2, "1869"

    const-string v10, "KN"

    filled-new-array {v2, v10}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x2e

    aput-object v2, v1, v10

    const-string v2, "1876"

    const-string v10, "JM"

    filled-new-array {v2, v10}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x2f

    aput-object v2, v1, v10

    const-string v2, "1902"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x30

    aput-object v2, v1, v10

    const-string v2, "1905"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x31

    aput-object v2, v1, v4

    const-string v2, "1939"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x32

    aput-object v2, v1, v4

    const-string v2, "20"

    const-string v4, "EG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x33

    aput-object v2, v1, v4

    const-string v2, "212"

    const-string v4, "MA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x34

    aput-object v2, v1, v4

    const-string v2, "213"

    const-string v4, "DZ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x35

    aput-object v2, v1, v4

    const-string v2, "216"

    const-string v4, "TN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x36

    aput-object v2, v1, v4

    const-string v2, "218"

    const-string v4, "LY"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x37

    aput-object v2, v1, v4

    const-string v2, "220"

    const-string v4, "GM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x38

    aput-object v2, v1, v4

    const-string v2, "221"

    const-string v4, "SN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x39

    aput-object v2, v1, v4

    const-string v2, "222"

    const-string v4, "MR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3a

    aput-object v2, v1, v4

    const-string v2, "223"

    const-string v4, "ML"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3b

    aput-object v2, v1, v4

    const-string v2, "224"

    const-string v4, "GN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3c

    aput-object v2, v1, v4

    const-string v2, "225"

    const-string v4, "CI"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3d

    aput-object v2, v1, v4

    const-string v2, "226"

    const-string v4, "BF"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3e

    aput-object v2, v1, v4

    const-string v2, "227"

    const-string v4, "NE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3f

    aput-object v2, v1, v4

    const-string v2, "228"

    const-string v4, "TG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x40

    aput-object v2, v1, v4

    const-string v2, "229"

    const-string v4, "BJ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x41

    aput-object v2, v1, v4

    const-string v2, "230"

    const-string v4, "MU"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x42

    aput-object v2, v1, v4

    const-string v2, "231"

    const-string v4, "LR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x43

    aput-object v2, v1, v4

    const-string v2, "232"

    const-string v4, "SL"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x44

    aput-object v2, v1, v4

    const-string v2, "233"

    const-string v4, "GH"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x45

    aput-object v2, v1, v4

    const-string v2, "234"

    const-string v4, "NG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x46

    aput-object v2, v1, v4

    const-string v2, "235"

    const-string v4, "TD"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x47

    aput-object v2, v1, v4

    const-string v2, "236"

    const-string v4, "CF"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x48

    aput-object v2, v1, v4

    const-string v2, "237"

    const-string v4, "CM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x49

    aput-object v2, v1, v4

    const-string v2, "238"

    const-string v4, "CV"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x4a

    aput-object v2, v1, v4

    const-string v2, "239"

    const-string v4, "ST"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x4b

    aput-object v2, v1, v4

    const-string v2, "240"

    const-string v4, "GQ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x4c

    aput-object v2, v1, v4

    const-string v2, "241"

    const-string v4, "GA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x4d

    aput-object v2, v1, v4

    const-string v2, "242"

    const-string v4, "CG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x4e

    aput-object v2, v1, v4

    const-string v2, "243"

    const-string v4, "CD"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x4f

    aput-object v2, v1, v4

    const-string v2, "244"

    const-string v4, "AO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x50

    aput-object v2, v1, v4

    const-string v2, "245"

    const-string v4, "GW"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x51

    aput-object v2, v1, v4

    const-string v2, "247"

    const-string v4, "AC"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x52

    aput-object v2, v1, v4

    const-string v2, "248"

    const-string v4, "SC"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x53

    aput-object v2, v1, v4

    const-string v2, "249"

    const-string v4, "SD"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x54

    aput-object v2, v1, v4

    const-string v2, "250"

    const-string v4, "RW"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x55

    aput-object v2, v1, v4

    const-string v2, "251"

    const-string v4, "ET"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x56

    aput-object v2, v1, v4

    const-string v2, "252"

    const-string v4, "SO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x57

    aput-object v2, v1, v4

    const-string v2, "253"

    const-string v4, "DJ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x58

    aput-object v2, v1, v4

    const-string v2, "254"

    const-string v4, "KE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x59

    aput-object v2, v1, v4

    const-string v2, "255"

    const-string v4, "TZ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x5a

    aput-object v2, v1, v4

    const-string v2, "256"

    const-string v4, "UG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x5b

    aput-object v2, v1, v4

    const-string v2, "257"

    const-string v4, "BI"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x5c

    aput-object v2, v1, v4

    const-string v2, "258"

    const-string v4, "MZ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x5d

    aput-object v2, v1, v4

    const-string v2, "260"

    const-string v4, "ZM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x5e

    aput-object v2, v1, v4

    const-string v2, "261"

    const-string v4, "MG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x5f

    aput-object v2, v1, v4

    const-string v2, "262"

    const-string v4, "RE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x60

    aput-object v2, v1, v4

    const-string v2, "262269"

    const-string v4, "YT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x61

    aput-object v2, v1, v7

    const-string v2, "262639"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x62

    aput-object v2, v1, v7

    const-string v2, "263"

    const-string v7, "ZW"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x63

    aput-object v2, v1, v7

    const-string v2, "264"

    const-string v7, "NA"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x64

    aput-object v2, v1, v7

    const-string v2, "265"

    const-string v7, "MW"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x65

    aput-object v2, v1, v7

    const-string v2, "266"

    const-string v7, "LS"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x66

    aput-object v2, v1, v7

    const-string v2, "267"

    const-string v7, "BW"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x67

    aput-object v2, v1, v7

    const-string v2, "268"

    const-string v7, "SZ"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x68

    aput-object v2, v1, v7

    const-string v2, "269"

    const-string v7, "KM"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x69

    aput-object v2, v1, v7

    const-string v2, "2692"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x6a

    aput-object v2, v1, v7

    const-string v2, "2693"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x6b

    aput-object v2, v1, v7

    const-string v2, "2696"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x6c

    aput-object v2, v1, v7

    const-string v2, "269717"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x6d

    aput-object v2, v1, v7

    const-string v2, "26976"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x6e

    aput-object v2, v1, v4

    const-string v2, "27"

    const-string v4, "ZA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x6f

    aput-object v2, v1, v4

    const-string v2, "290"

    const-string v4, "SH"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x70

    aput-object v2, v1, v4

    const-string v2, "291"

    const-string v4, "ER"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x71

    aput-object v2, v1, v4

    const-string v2, "297"

    const-string v4, "AW"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x72

    aput-object v2, v1, v4

    const-string v2, "298"

    const-string v4, "FO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x73

    aput-object v2, v1, v4

    const-string v2, "299"

    const-string v4, "GL"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x74

    aput-object v2, v1, v4

    const-string v2, "30"

    const-string v4, "GR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x75

    aput-object v2, v1, v4

    const-string v2, "31"

    const-string v4, "NL"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x76

    aput-object v2, v1, v4

    const-string v2, "32"

    const-string v4, "BE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x77

    aput-object v2, v1, v4

    const-string v2, "33"

    const-string v4, "FR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x78

    aput-object v2, v1, v4

    const-string v2, "34"

    const-string v4, "ES"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x79

    aput-object v2, v1, v4

    const-string v2, "350"

    const-string v4, "GI"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x7a

    aput-object v2, v1, v4

    const-string v2, "351"

    const-string v4, "PT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x7b

    aput-object v2, v1, v4

    const-string v2, "352"

    const-string v4, "LU"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x7c

    aput-object v2, v1, v4

    const-string v2, "353"

    const-string v4, "IE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x7d

    aput-object v2, v1, v4

    const-string v2, "354"

    const-string v4, "IS"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x7e

    aput-object v2, v1, v4

    const-string v2, "355"

    const-string v4, "AL"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x7f

    aput-object v2, v1, v4

    const-string v2, "356"

    const-string v4, "MT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    aput-object v2, v1, v4

    const-string v2, "357"

    const-string v4, "CY"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x81

    aput-object v2, v1, v4

    const-string v2, "358"

    const-string v4, "FI"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x82

    aput-object v2, v1, v4

    const-string v2, "359"

    const-string v4, "BG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x83

    aput-object v2, v1, v4

    const-string v2, "36"

    const-string v4, "HU"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x84

    aput-object v2, v1, v4

    const-string v2, "370"

    const-string v4, "LT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x85

    aput-object v2, v1, v4

    const-string v2, "371"

    const-string v4, "LV"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x86

    aput-object v2, v1, v4

    const-string v2, "372"

    const-string v4, "EE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x87

    aput-object v2, v1, v4

    const-string v2, "373"

    const-string v4, "MD"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x88

    aput-object v2, v1, v4

    const-string v2, "374"

    const-string v4, "AM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x89

    aput-object v2, v1, v4

    const-string v2, "375"

    const-string v4, "BY"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8a

    aput-object v2, v1, v4

    const-string v2, "376"

    const-string v4, "AD"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8b

    aput-object v2, v1, v4

    const-string v2, "377"

    const-string v4, "MC"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8c

    aput-object v2, v1, v4

    const-string v2, "378"

    const-string v4, "SM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8d

    aput-object v2, v1, v4

    const-string v2, "379"

    const-string v4, "VA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8e

    aput-object v2, v1, v4

    const-string v2, "380"

    const-string v4, "UA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8f

    aput-object v2, v1, v4

    const-string v2, "381"

    const-string v4, "CS"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x90

    aput-object v2, v1, v4

    const-string v2, "385"

    const-string v4, "HR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x91

    aput-object v2, v1, v4

    const-string v2, "386"

    const-string v4, "SI"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x92

    aput-object v2, v1, v4

    const-string v2, "387"

    const-string v4, "BA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x93

    aput-object v2, v1, v4

    const-string v2, "389"

    const-string v4, "MK"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x94

    aput-object v2, v1, v4

    const-string v2, "39"

    const-string v4, "IT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x95

    aput-object v2, v1, v4

    const-string v2, "40"

    const-string v4, "RO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x96

    aput-object v2, v1, v4

    const-string v2, "41"

    const-string v4, "CH"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x97

    aput-object v2, v1, v4

    const-string v2, "420"

    const-string v4, "CZ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x98

    aput-object v2, v1, v4

    const-string v2, "421"

    const-string v4, "SK"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x99

    aput-object v2, v1, v4

    const-string v2, "423"

    const-string v4, "LI"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9a

    aput-object v2, v1, v4

    const-string v2, "43"

    const-string v4, "AT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9b

    aput-object v2, v1, v4

    const-string v2, "44"

    const-string v4, "GB"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9c

    aput-object v2, v1, v4

    const-string v2, "45"

    const-string v4, "DK"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9d

    aput-object v2, v1, v4

    const-string v2, "46"

    const-string v4, "SE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9e

    aput-object v2, v1, v4

    const-string v2, "47"

    const-string v4, "NO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9f

    aput-object v2, v1, v4

    const-string v2, "48"

    const-string v4, "PL"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa0

    aput-object v2, v1, v4

    const-string v2, "49"

    const-string v4, "DE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa1

    aput-object v2, v1, v4

    const-string v2, "500"

    const-string v4, "FK"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa2

    aput-object v2, v1, v4

    const-string v2, "501"

    const-string v4, "BZ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa3

    aput-object v2, v1, v4

    const-string v2, "502"

    const-string v4, "GT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa4

    aput-object v2, v1, v4

    const-string v2, "503"

    const-string v4, "SV"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa5

    aput-object v2, v1, v4

    const-string v2, "504"

    const-string v4, "HN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa6

    aput-object v2, v1, v4

    const-string v2, "505"

    const-string v4, "NI"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa7

    aput-object v2, v1, v4

    const-string v2, "506"

    const-string v4, "CR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa8

    aput-object v2, v1, v4

    const-string v2, "507"

    const-string v4, "PA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa9

    aput-object v2, v1, v4

    const-string v2, "508"

    const-string v4, "PM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xaa

    aput-object v2, v1, v4

    const-string v2, "509"

    const-string v4, "HT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xab

    aput-object v2, v1, v4

    const-string v2, "51"

    const-string v4, "PE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xac

    aput-object v2, v1, v4

    const-string v2, "52"

    const-string v4, "MX"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xad

    aput-object v2, v1, v4

    const-string v2, "53"

    const-string v4, "CU"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xae

    aput-object v2, v1, v4

    const-string v2, "54"

    const-string v4, "AR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xaf

    aput-object v2, v1, v4

    const-string v2, "55"

    const-string v4, "BR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb0

    aput-object v2, v1, v4

    const-string v2, "56"

    const-string v4, "CL"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb1

    aput-object v2, v1, v4

    const-string v2, "57"

    const-string v4, "CO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb2

    aput-object v2, v1, v4

    const-string v2, "58"

    const-string v4, "VE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb3

    aput-object v2, v1, v4

    const-string v2, "590"

    const-string v4, "GP"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb4

    aput-object v2, v1, v4

    const-string v2, "591"

    const-string v4, "BO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb5

    aput-object v2, v1, v4

    const-string v2, "592"

    const-string v4, "GY"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb6

    aput-object v2, v1, v4

    const-string v2, "593"

    const-string v4, "EC"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb7

    aput-object v2, v1, v4

    const-string v2, "594"

    const-string v4, "GF"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb8

    aput-object v2, v1, v4

    const-string v2, "595"

    const-string v4, "PY"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb9

    aput-object v2, v1, v4

    const-string v2, "596"

    const-string v4, "MQ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xba

    aput-object v2, v1, v4

    const-string v2, "597"

    const-string v4, "SR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xbb

    aput-object v2, v1, v4

    const-string v2, "598"

    const-string v4, "UY"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xbc

    aput-object v2, v1, v4

    const-string v2, "599"

    const-string v4, "AN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xbd

    aput-object v2, v1, v4

    const-string v2, "60"

    const-string v4, "MY"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xbe

    aput-object v2, v1, v4

    const-string v2, "61"

    const-string v4, "AU"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xbf

    aput-object v2, v1, v4

    const-string v2, "61891006"

    const-string v4, "CX"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xc0

    aput-object v2, v1, v7

    const-string v2, "61891007"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xc1

    aput-object v2, v1, v7

    const-string v2, "61891008"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xc2

    aput-object v2, v1, v7

    const-string v2, "61891010"

    const-string v7, "CC"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xc3

    aput-object v2, v1, v10

    const-string v2, "61891011"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xc4

    aput-object v2, v1, v10

    const-string v2, "61891012"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xc5

    aput-object v2, v1, v10

    const-string v2, "6189162"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xc6

    aput-object v2, v1, v7

    const-string v2, "6189164"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc7

    aput-object v2, v1, v4

    const-string v2, "62"

    const-string v4, "ID"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc8

    aput-object v2, v1, v4

    const-string v2, "63"

    const-string v4, "PH"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc9

    aput-object v2, v1, v4

    const-string v2, "64"

    const-string v4, "NZ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xca

    aput-object v2, v1, v4

    const-string v2, "65"

    const-string v4, "SG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xcb

    aput-object v2, v1, v4

    const-string v2, "66"

    const-string v4, "TH"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xcc

    aput-object v2, v1, v4

    const-string v2, "672"

    const-string v4, "AQ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xcd

    aput-object v2, v1, v4

    const-string v2, "6723"

    const-string v4, "NF"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xce

    aput-object v2, v1, v4

    const-string v2, "673"

    const-string v4, "BN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xcf

    aput-object v2, v1, v4

    const-string v2, "674"

    const-string v4, "NR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd0

    aput-object v2, v1, v4

    const-string v2, "675"

    const-string v4, "PG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd1

    aput-object v2, v1, v4

    const-string v2, "676"

    const-string v4, "TO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd2

    aput-object v2, v1, v4

    const-string v2, "677"

    const-string v4, "SB"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd3

    aput-object v2, v1, v4

    const-string v2, "678"

    const-string v4, "VU"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd4

    aput-object v2, v1, v4

    const-string v2, "679"

    const-string v4, "FJ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd5

    aput-object v2, v1, v4

    const-string v2, "680"

    const-string v4, "PW"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd6

    aput-object v2, v1, v4

    const-string v2, "681"

    const-string v4, "WF"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd7

    aput-object v2, v1, v4

    const-string v2, "682"

    const-string v4, "CK"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd8

    aput-object v2, v1, v4

    const-string v2, "683"

    const-string v4, "NU"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd9

    aput-object v2, v1, v4

    const-string v2, "685"

    const-string v4, "WS"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xda

    aput-object v2, v1, v4

    const-string v2, "686"

    const-string v4, "KI"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xdb

    aput-object v2, v1, v4

    const-string v2, "687"

    const-string v4, "NC"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xdc

    aput-object v2, v1, v4

    const-string v2, "688"

    const-string v4, "TV"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xdd

    aput-object v2, v1, v4

    const-string v2, "689"

    const-string v4, "PF"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xde

    aput-object v2, v1, v4

    const-string v2, "690"

    const-string v4, "TK"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xdf

    aput-object v2, v1, v4

    const-string v2, "691"

    const-string v4, "FM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe0

    aput-object v2, v1, v4

    const-string v2, "692"

    const-string v4, "MH"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe1

    aput-object v2, v1, v4

    const-string v2, "7"

    const-string v4, "RU"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe2

    aput-object v2, v1, v4

    const-string v2, "7300"

    const-string v4, "KZ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe3

    aput-object v2, v1, v7

    const-string v2, "731"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe4

    aput-object v2, v1, v7

    const-string v2, "732"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe5

    aput-object v2, v1, v7

    const-string v2, "7333"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe6

    aput-object v2, v1, v7

    const-string v2, "7336"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe7

    aput-object v2, v1, v7

    const-string v2, "7570"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe8

    aput-object v2, v1, v7

    const-string v2, "7571"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe9

    aput-object v2, v1, v7

    const-string v2, "7572"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xea

    aput-object v2, v1, v7

    const-string v2, "7573"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xeb

    aput-object v2, v1, v7

    const-string v2, "7574"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xec

    aput-object v2, v1, v7

    const-string v2, "76"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xed

    aput-object v2, v1, v7

    const-string v2, "77"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xee

    aput-object v2, v1, v4

    const-string v2, "81"

    const-string v4, "JP"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xef

    aput-object v2, v1, v4

    const-string v2, "82"

    const-string v4, "KR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf0

    aput-object v2, v1, v4

    const-string v2, "84"

    const-string v4, "VN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf1

    aput-object v2, v1, v4

    const-string v2, "850"

    const-string v4, "KP"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf2

    aput-object v2, v1, v4

    const-string v2, "852"

    const-string v4, "HK"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf3

    aput-object v2, v1, v4

    const-string v2, "853"

    const-string v4, "MO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf4

    aput-object v2, v1, v4

    const-string v2, "855"

    const-string v4, "KH"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf5

    aput-object v2, v1, v4

    const-string v2, "856"

    const-string v4, "LA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf6

    aput-object v2, v1, v4

    const-string v2, "86"

    const-string v4, "CN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf7

    aput-object v2, v1, v4

    const-string v2, "880"

    const-string v4, "BD"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf8

    aput-object v2, v1, v4

    const-string v2, "886"

    const-string v4, "TW"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf9

    aput-object v2, v1, v4

    const-string v2, "90"

    const-string v4, "TR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xfa

    aput-object v2, v1, v4

    const-string v2, "91"

    const-string v4, "IN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xfb

    aput-object v2, v1, v4

    const-string v2, "92"

    const-string v4, "PK"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xfc

    aput-object v2, v1, v4

    const-string v2, "93"

    const-string v4, "AF"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xfd

    aput-object v2, v1, v4

    const-string v2, "94"

    const-string v4, "LK"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xfe

    aput-object v2, v1, v4

    const-string v2, "95"

    const-string v4, "MM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xff

    aput-object v2, v1, v4

    const-string v2, "960"

    const-string v4, "MV"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x100

    aput-object v2, v1, v4

    const-string v2, "961"

    const-string v4, "LB"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x101

    aput-object v2, v1, v4

    const-string v2, "962"

    const-string v4, "JO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x102

    aput-object v2, v1, v4

    const-string v2, "963"

    const-string v4, "SY"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x103

    aput-object v2, v1, v4

    const-string v2, "964"

    const-string v4, "IQ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x104

    aput-object v2, v1, v4

    const-string v2, "965"

    const-string v4, "KW"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x105

    aput-object v2, v1, v4

    const-string v2, "966"

    const-string v4, "SA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x106

    aput-object v2, v1, v4

    const-string v2, "967"

    const-string v4, "YE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x107

    aput-object v2, v1, v4

    const-string v2, "968"

    const-string v4, "OM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x108

    aput-object v2, v1, v4

    const-string v2, "970"

    const-string v4, "PS"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x109

    aput-object v2, v1, v7

    const-string v2, "971"

    const-string v7, "AE"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x10a

    aput-object v2, v1, v7

    const-string v2, "972"

    const-string v7, "IL"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x10b

    aput-object v2, v1, v7

    const-string v2, "97222"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x10c

    aput-object v2, v1, v7

    const-string v2, "97232"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x10d

    aput-object v2, v1, v7

    const-string v2, "97242"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x10e

    aput-object v2, v1, v7

    const-string v2, "97259"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x10f

    aput-object v2, v1, v7

    const-string v2, "97282"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x110

    aput-object v2, v1, v7

    const-string v2, "97292"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x111

    aput-object v2, v1, v4

    const-string v2, "973"

    const-string v4, "BH"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x112

    aput-object v2, v1, v4

    const-string v2, "974"

    const-string v4, "QA"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x113

    aput-object v2, v1, v4

    const-string v2, "975"

    const-string v4, "BT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x114

    aput-object v2, v1, v4

    const-string v2, "976"

    const-string v4, "MN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x115

    aput-object v2, v1, v4

    const-string v2, "977"

    const-string v4, "NP"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x116

    aput-object v2, v1, v4

    const-string v2, "98"

    const-string v4, "IR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x117

    aput-object v2, v1, v4

    const-string v2, "992"

    const-string v4, "TJ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x118

    aput-object v2, v1, v4

    const-string v2, "993"

    const-string v4, "TM"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x119

    aput-object v2, v1, v4

    const-string v2, "994"

    const-string v4, "AZ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x11a

    aput-object v2, v1, v4

    const-string v2, "995"

    const-string v4, "GE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x11b

    aput-object v2, v1, v4

    const-string v2, "996"

    const-string v4, "KG"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x11c

    aput-object v2, v1, v4

    const-string v2, "998"

    const-string v4, "UZ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x11d

    aput-object v2, v1, v4

    .line 2
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 3
    :try_start_0
    aget-object v6, v1, v4

    .line 4
    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 5
    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6
    aget-object v2, v6, v5

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v7, v6, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v2
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    move v2, v0

    :cond_3
    if-nez v2, :cond_5

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    move v2, v1

    :catch_0
    :cond_5
    return v2
.end method

.method public static e(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const-string p0, "ERROR: unresolved block string"

    return-object p0

    :sswitch_0
    const-string p0, "db"

    return-object p0

    :sswitch_1
    const-string p0, "cache"

    return-object p0

    :sswitch_2
    const-string p0, "blacklist mask"

    return-object p0

    :sswitch_3
    const-string p0, "blacklist"

    return-object p0

    :sswitch_4
    const-string p0, "foreign"

    return-object p0

    :sswitch_5
    const-string p0, "block ALL except whitelist"

    return-object p0

    :sswitch_6
    const-string p0, "block ALL except contacts"

    return-object p0

    :sswitch_7
    const-string p0, "hidden"

    return-object p0

    :sswitch_8
    const-string p0, "block no need"

    return-object p0

    :sswitch_9
    const-string p0, "not blocked:contacts"

    return-object p0

    :sswitch_a
    const-string p0, "whitelist mask"

    return-object p0

    :sswitch_b
    const-string p0, "whitelist"

    return-object p0

    :sswitch_c
    const-string p0, "ERROR: unable to kill"

    return-object p0

    :sswitch_d
    const-string p0, "not blocked:second call"

    return-object p0

    :sswitch_e
    const-string p0, "block OFF"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_e
        -0x309 -> :sswitch_d
        -0x29a -> :sswitch_c
        -0x64 -> :sswitch_b
        -0x5a -> :sswitch_a
        -0xa -> :sswitch_9
        0x0 -> :sswitch_8
        0x1 -> :sswitch_7
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0xa -> :sswitch_4
        0x14 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1e -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

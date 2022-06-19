.class public final Lokhttp3/t$a;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/t$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    const-string/jumbo v0, ""

    iput-object v0, p0, Lokhttp3/t$a;->b:Ljava/lang/String;

    .line 980
    const-string/jumbo v0, ""

    iput-object v0, p0, Lokhttp3/t$a;->c:Ljava/lang/String;

    .line 982
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/t$a;->e:I

    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    .line 988
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1448
    if-ne p2, p3, :cond_1

    .line 1471
    :cond_0
    return-void

    .line 1452
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1453
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_4

    .line 1455
    :cond_2
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1456
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 p2, p2, 0x1

    :goto_0
    move v2, p2

    .line 1464
    :goto_1
    if-ge v2, p3, :cond_0

    .line 1465
    const-string/jumbo v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lokhttp3/internal/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1466
    if-ge v3, p3, :cond_5

    move v4, v5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 1467
    invoke-direct/range {v0 .. v5}, Lokhttp3/t$a;->a(Ljava/lang/String;IIZZ)V

    .line 1469
    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    move v2, v3

    .line 1470
    goto :goto_1

    .line 1460
    :cond_4
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1466
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1476
    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v8}, Lokhttp3/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1478
    invoke-direct {p0, v1}, Lokhttp3/t$a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    invoke-direct {p0, v1}, Lokhttp3/t$a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1482
    invoke-direct {p0}, Lokhttp3/t$a;->d()V

    goto :goto_0

    .line 1485
    :cond_2
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1486
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1490
    :goto_1
    if-eqz p4, :cond_0

    .line 1491
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1488
    :cond_3
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;II)I
    .locals 8

    .prologue
    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, -0x1

    .line 1532
    sub-int v1, p2, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1554
    :cond_0
    :goto_0
    return v0

    .line 1534
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1535
    if-lt v1, v6, :cond_2

    if-le v1, v7, :cond_3

    :cond_2
    if-lt v1, v4, :cond_0

    if-gt v1, v5, :cond_0

    .line 1537
    :cond_3
    add-int/lit8 v1, p1, 0x1

    :goto_1
    if-ge v1, p2, :cond_0

    .line 1538
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1540
    if-lt v2, v6, :cond_4

    if-le v2, v7, :cond_7

    :cond_4
    if-lt v2, v4, :cond_5

    if-le v2, v5, :cond_7

    :cond_5
    const/16 v3, 0x30

    if-lt v2, v3, :cond_6

    const/16 v3, 0x39

    if-le v2, v3, :cond_7

    :cond_6
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_8

    .line 1537
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1547
    :cond_8
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1548
    goto :goto_0
.end method

.method private static c(Ljava/lang/String;II)I
    .locals 3

    .prologue
    .line 1559
    const/4 v0, 0x0

    .line 1560
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1561
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1562
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 1563
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1564
    add-int/lit8 p1, p1, 0x1

    .line 1568
    goto :goto_0

    .line 1569
    :cond_1
    return v0
.end method

.method private static d(Ljava/lang/String;II)I
    .locals 3

    .prologue
    .line 1574
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1575
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1574
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1577
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1578
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1585
    :sswitch_1
    return v0

    .line 1575
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private d()V
    .locals 3

    .prologue
    .line 1517
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1520
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1521
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1525
    :goto_0
    return-void

    .line 1523
    :cond_0
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1591
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/t;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1592
    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;II)I
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 1598
    :try_start_0
    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lokhttp3/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1600
    if-lez v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 1603
    :goto_0
    return v0

    :cond_0
    move v0, v9

    .line 1601
    goto :goto_0

    .line 1602
    :catch_0
    move-exception v0

    move v0, v9

    .line 1603
    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1496
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1500
    const-string/jumbo v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%2e."

    .line 1501
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".%2e"

    .line 1502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%2e%2e"

    .line 1503
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1500
    :goto_0
    return v0

    .line 1503
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 1049
    iget v0, p0, Lokhttp3/t$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lokhttp3/t$a;->e:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/t;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method a(Lokhttp3/t;Ljava/lang/String;)Lokhttp3/t$a$a;
    .locals 15
    .param p1    # Lokhttp3/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1322
    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/c;->a(Ljava/lang/String;II)I

    move-result v3

    .line 1323
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v1}, Lokhttp3/internal/c;->b(Ljava/lang/String;II)I

    move-result v13

    .line 1326
    move-object/from16 v0, p2

    invoke-static {v0, v3, v13}, Lokhttp3/t$a;->b(Ljava/lang/String;II)I

    move-result v1

    .line 1327
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1328
    const/4 v2, 0x1

    const-string/jumbo v4, "https:"

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    const-string/jumbo v1, "https"

    iput-object v1, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    .line 1330
    const-string/jumbo v1, "https:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    .line 1344
    :goto_0
    const/4 v4, 0x0

    .line 1345
    const/4 v1, 0x0

    .line 1346
    move-object/from16 v0, p2

    invoke-static {v0, v3, v13}, Lokhttp3/t$a;->c(Ljava/lang/String;II)I

    move-result v2

    .line 1347
    const/4 v5, 0x2

    if-ge v2, v5, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v5, v0, Lokhttp3/t;->a:Ljava/lang/String;

    iget-object v6, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1357
    :cond_0
    add-int/2addr v2, v3

    move v10, v1

    move v11, v4

    .line 1360
    :goto_1
    const-string/jumbo v1, "@/\\?#"

    move-object/from16 v0, p2

    invoke-static {v0, v2, v13, v1}, Lokhttp3/internal/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v12

    .line 1361
    if-eq v12, v13, :cond_5

    .line 1362
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1364
    :goto_2
    sparse-switch v1, :sswitch_data_0

    move v1, v10

    move v3, v11

    :goto_3
    move v10, v1

    move v11, v3

    .line 1410
    goto :goto_1

    .line 1331
    :cond_1
    const/4 v2, 0x1

    const-string/jumbo v4, "http:"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1332
    const-string/jumbo v1, "http"

    iput-object v1, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    .line 1333
    const-string/jumbo v1, "http:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_0

    .line 1335
    :cond_2
    sget-object v1, Lokhttp3/t$a$a;->c:Lokhttp3/t$a$a;

    .line 1443
    :goto_4
    return-object v1

    .line 1337
    :cond_3
    if-eqz p1, :cond_4

    .line 1338
    move-object/from16 v0, p1

    iget-object v1, v0, Lokhttp3/t;->a:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    goto :goto_0

    .line 1340
    :cond_4
    sget-object v1, Lokhttp3/t$a$a;->b:Lokhttp3/t$a$a;

    goto :goto_4

    .line 1363
    :cond_5
    const/4 v1, -0x1

    goto :goto_2

    .line 1367
    :sswitch_0
    if-nez v10, :cond_8

    .line 1368
    const/16 v1, 0x3a

    move-object/from16 v0, p2

    invoke-static {v0, v2, v12, v1}, Lokhttp3/internal/c;->a(Ljava/lang/String;IIC)I

    move-result v3

    .line 1370
    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v9}, Lokhttp3/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    if-eqz v11, :cond_6

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lokhttp3/t$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "%40"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1375
    :cond_6
    iput-object v1, p0, Lokhttp3/t$a;->b:Ljava/lang/String;

    .line 1376
    if-eq v3, v12, :cond_7

    .line 1377
    const/4 v10, 0x1

    .line 1378
    add-int/lit8 v2, v3, 0x1

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lokhttp3/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/t$a;->c:Ljava/lang/String;

    .line 1382
    :cond_7
    const/4 v11, 0x1

    .line 1388
    :goto_5
    add-int/lit8 v2, v12, 0x1

    move v1, v10

    move v3, v11

    .line 1389
    goto/16 :goto_3

    .line 1384
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/t$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lokhttp3/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/t$a;->c:Ljava/lang/String;

    goto :goto_5

    .line 1397
    :sswitch_1
    move-object/from16 v0, p2

    invoke-static {v0, v2, v12}, Lokhttp3/t$a;->d(Ljava/lang/String;II)I

    move-result v1

    .line 1398
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v12, :cond_9

    .line 1399
    move-object/from16 v0, p2

    invoke-static {v0, v2, v1}, Lokhttp3/t$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/t$a;->d:Ljava/lang/String;

    .line 1400
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v1, v12}, Lokhttp3/t$a;->f(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lokhttp3/t$a;->e:I

    .line 1401
    iget v1, p0, Lokhttp3/t$a;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    sget-object v1, Lokhttp3/t$a$a;->d:Lokhttp3/t$a$a;

    goto/16 :goto_4

    .line 1403
    :cond_9
    move-object/from16 v0, p2

    invoke-static {v0, v2, v1}, Lokhttp3/t$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/t$a;->d:Ljava/lang/String;

    .line 1404
    iget-object v1, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/t;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lokhttp3/t$a;->e:I

    .line 1406
    :cond_a
    iget-object v1, p0, Lokhttp3/t$a;->d:Ljava/lang/String;

    if-nez v1, :cond_b

    sget-object v1, Lokhttp3/t$a$a;->e:Lokhttp3/t$a$a;

    goto/16 :goto_4

    :cond_b
    move v3, v12

    .line 1425
    :cond_c
    :goto_6
    const-string/jumbo v1, "?#"

    move-object/from16 v0, p2

    invoke-static {v0, v3, v13, v1}, Lokhttp3/internal/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 1426
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3, v1}, Lokhttp3/t$a;->a(Ljava/lang/String;II)V

    .line 1430
    if-ge v1, v13, :cond_10

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_10

    .line 1431
    const/16 v2, 0x23

    move-object/from16 v0, p2

    invoke-static {v0, v1, v13, v2}, Lokhttp3/internal/c;->a(Ljava/lang/String;IIC)I

    move-result v3

    .line 1432
    add-int/lit8 v2, v1, 0x1

    const-string/jumbo v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v9}, Lokhttp3/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/t;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    .line 1438
    :goto_7
    if-ge v3, v13, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_d

    .line 1439
    add-int/lit8 v2, v3, 0x1

    const-string/jumbo v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v3, v13

    invoke-static/range {v1 .. v9}, Lokhttp3/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/t$a;->h:Ljava/lang/String;

    .line 1443
    :cond_d
    sget-object v1, Lokhttp3/t$a$a;->a:Lokhttp3/t$a$a;

    goto/16 :goto_4

    .line 1413
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lokhttp3/t;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/t$a;->b:Ljava/lang/String;

    .line 1414
    invoke-virtual/range {p1 .. p1}, Lokhttp3/t;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/t$a;->c:Ljava/lang/String;

    .line 1415
    move-object/from16 v0, p1

    iget-object v1, v0, Lokhttp3/t;->b:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/t$a;->d:Ljava/lang/String;

    .line 1416
    move-object/from16 v0, p1

    iget v1, v0, Lokhttp3/t;->c:I

    iput v1, p0, Lokhttp3/t$a;->e:I

    .line 1417
    iget-object v1, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1418
    iget-object v1, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/t;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1419
    if-eq v3, v13, :cond_f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_c

    .line 1420
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lokhttp3/t;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/t$a;->e(Ljava/lang/String;)Lokhttp3/t$a;

    goto/16 :goto_6

    :cond_10
    move v3, v1

    goto :goto_7

    .line 1364
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x23 -> :sswitch_1
        0x2f -> :sswitch_1
        0x3f -> :sswitch_1
        0x40 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public a(I)Lokhttp3/t$a;
    .locals 3

    .prologue
    .line 1043
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_1
    iput p1, p0, Lokhttp3/t$a;->e:I

    .line 1045
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lokhttp3/t$a;
    .locals 3

    .prologue
    .line 992
    if-nez p1, :cond_0

    .line 993
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_0
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    .line 1001
    :goto_0
    return-object p0

    .line 996
    :cond_1
    const-string/jumbo v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    const-string/jumbo v0, "https"

    iput-object v0, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    goto :goto_0

    .line 999
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1159
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_0
    iget-object v0, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    .line 1161
    :cond_1
    iget-object v6, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    const-string/jumbo v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 1162
    invoke-static/range {v0 .. v5}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1161
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v6, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 1164
    const-string/jumbo v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1163
    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    return-object p0

    .line 1165
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Lokhttp3/t$a;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1242
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_0
    if-ge v6, v7, :cond_0

    .line 1243
    iget-object v0, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1244
    iget-object v8, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    const-string/jumbo v1, "[]"

    move v3, v2

    move v5, v2

    .line 1245
    invoke-static/range {v0 .. v5}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1242
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1247
    :cond_0
    iget-object v0, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1248
    iget-object v0, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1249
    iget-object v3, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1250
    if-eqz v5, :cond_1

    .line 1251
    iget-object v3, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    const-string/jumbo v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 1252
    invoke-static/range {v5 .. v10}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 1251
    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1256
    :cond_2
    iget-object v0, p0, Lokhttp3/t$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1257
    iget-object v0, p0, Lokhttp3/t$a;->h:Ljava/lang/String;

    const-string/jumbo v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t$a;->h:Ljava/lang/String;

    .line 1260
    :cond_3
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/t$a;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1005
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_0
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t$a;->b:Ljava/lang/String;

    .line 1007
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1171
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_0
    iget-object v0, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    .line 1173
    :cond_1
    iget-object v6, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    const-string/jumbo v1, " \"\'<>#&="

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1174
    invoke-static/range {v0 .. v5}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    iget-object v6, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 1176
    const-string/jumbo v1, " \"\'<>#&="

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1175
    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    return-object p0

    .line 1177
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lokhttp3/t$a;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1018
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_0
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t$a;->c:Ljava/lang/String;

    .line 1020
    return-object p0
.end method

.method public c()Lokhttp3/t;
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1265
    :cond_0
    iget-object v0, p0, Lokhttp3/t$a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1266
    :cond_1
    new-instance v0, Lokhttp3/t;

    invoke-direct {v0, p0}, Lokhttp3/t;-><init>(Lokhttp3/t$a;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lokhttp3/t$a;
    .locals 3

    .prologue
    .line 1035
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lokhttp3/t$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1037
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_1
    iput-object v0, p0, Lokhttp3/t$a;->d:Ljava/lang/String;

    .line 1039
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lokhttp3/t$a;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 1150
    if-eqz p1, :cond_0

    .line 1151
    const-string/jumbo v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1152
    invoke-static/range {v0 .. v5}, Lokhttp3/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-static {v0}, Lokhttp3/t;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1153
    :goto_0
    iput-object v0, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    .line 1154
    return-object p0

    .line 1153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    iget-object v1, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    iget-object v1, p0, Lokhttp3/t$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/t$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1275
    :cond_0
    iget-object v1, p0, Lokhttp3/t$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    iget-object v1, p0, Lokhttp3/t$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1277
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1278
    iget-object v1, p0, Lokhttp3/t$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1283
    :cond_2
    iget-object v1, p0, Lokhttp3/t$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 1285
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1286
    iget-object v1, p0, Lokhttp3/t$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    :goto_0
    invoke-virtual {p0}, Lokhttp3/t$a;->a()I

    move-result v1

    .line 1293
    iget-object v2, p0, Lokhttp3/t$a;->a:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/t;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1298
    :cond_3
    iget-object v1, p0, Lokhttp3/t$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/t;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1300
    iget-object v1, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 1301
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1302
    iget-object v1, p0, Lokhttp3/t$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/t;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1305
    :cond_4
    iget-object v1, p0, Lokhttp3/t$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1306
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1307
    iget-object v1, p0, Lokhttp3/t$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1289
    :cond_6
    iget-object v1, p0, Lokhttp3/t$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

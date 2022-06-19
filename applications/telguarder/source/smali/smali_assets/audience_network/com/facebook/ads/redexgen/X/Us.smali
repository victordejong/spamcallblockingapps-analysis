.class public final Lcom/facebook/ads/redexgen/X/Us;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DT;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/CJ;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/CI;

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/DT;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/IM;

.field public final A07:Lcom/facebook/ads/redexgen/X/IY;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 57458
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Us;->A00()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ut;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ut;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Us;->A09:Lcom/facebook/ads/redexgen/X/CJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 57459
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/IY;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Us;-><init>(Lcom/facebook/ads/redexgen/X/IY;)V

    .line 57460
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IY;)V
    .locals 2

    .line 57461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57462
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Us;->A07:Lcom/facebook/ads/redexgen/X/IY;

    .line 57463
    const/16 v1, 0x1000

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    .line 57464
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:Landroid/util/SparseArray;

    .line 57465
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8quc8x2rdtYhBX3hJ7iwLlBZi86nBdix"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3mgGCm5ynxL17QSrczIjhuD5CRXUByvH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xOmRF6iQhV6vkIiNbLEyJxLIkoe5Ql8r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FqtFELgbpAX5KTm8NJc6NpNVAx2rALiI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vgChNuXxWTqm20fff"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "i3Jg0Ys6PgyoL0SvapYp0qolYkVGeB7I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "L4iVtpgN01oufF7uoS77e"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FL4XTSj7tcaQAHtUtURxCBGkEdR5IdsG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 3

    .line 57466
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Us;->A01:Lcom/facebook/ads/redexgen/X/CI;

    .line 57467
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 57468
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v1, v2, v0, v7}, Lcom/facebook/ads/redexgen/X/CH;->ACN([BIIZ)Z

    move-result v0

    const/4 v6, -0x1

    if-nez v0, :cond_0

    .line 57470
    return v6

    .line 57471
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v4

    .line 57473
    .local p0, "nextStartCode":I
    const/16 v5, 0x1b9

    sget-object v1, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const-string v1, "dpPCVZAQ5WP6FnhRxYQl8Q7aJP10BPYv"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    if-ne v4, v5, :cond_2

    .line 57474
    return v6

    .line 57475
    :cond_2
    const/16 v0, 0x1ba

    if-ne v4, v0, :cond_3

    .line 57476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 57477
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 57479
    .local p1, "packStuffingLength":I
    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 57480
    return v2

    .line 57481
    .end local p1    # "packStuffingLength":I
    :cond_3
    const/16 v0, 0x1bb

    const/4 v6, 0x2

    if-ne v4, v0, :cond_4

    .line 57482
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const-string v1, "3nCL31uZajKrrOeYvEWczAFwUIrHHUy6"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v6}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 57483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    .line 57485
    .local p1, "systemHeaderLength":I
    add-int/lit8 v0, v0, 0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 57486
    return v2

    .line 57487
    .end local p1    # "systemHeaderLength":I
    :cond_4
    and-int/lit16 v0, v4, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v7, :cond_5

    .line 57488
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_7

    .line 57489
    sget-object v3, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const-string v1, "fn2MRRvOj4wLv254lDv9tAZH7KYm"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    return v2

    .line 57490
    :cond_5
    and-int/lit16 v4, v4, 0xff

    .line 57491
    .local v0, "streamId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/DT;

    .line 57492
    .local v7, "payloadReader":Lcom/facebook/ads/redexgen/X/DT;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A02:Z

    if-nez v0, :cond_b

    .line 57493
    if-nez v3, :cond_a

    .line 57494
    const/4 v5, 0x0

    .line 57495
    .local v2, "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/DM;
    const/16 v9, 0xbd

    sget-object v8, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v8, v0

    const/4 v0, 0x2

    aget-object v0, v8, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    goto/16 :goto_0

    .line 57496
    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const-string v1, "D"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v6}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 57497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    .line 57499
    .local p1, "systemHeaderLength":I
    add-int/lit8 v0, v0, 0x3

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 57500
    return v2

    .line 57501
    :cond_7
    sget-object v3, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const-string v1, "CVMS94PGzOrtKCwGfRurBfktb3yHtdh6"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "8AoGXdWAtDtD8gfuLrkIAotX9aiyxtCI"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    return v2

    :cond_8
    sget-object v8, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const-string v1, "K1eh7jxyAK7sk0FgUtsweeBBJJJ6s0zI"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "aaOm22RQD7XYtIMyKRYBCLCisiVLpFsI"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    if-ne v4, v9, :cond_e

    .line 57502
    new-instance v5, Lcom/facebook/ads/redexgen/X/V7;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/V7;-><init>()V

    .line 57503
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Us;->A03:Z

    .line 57504
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A00:J

    .line 57505
    :cond_9
    :goto_1
    if-eqz v5, :cond_a

    .line 57506
    const/16 v0, 0x100

    new-instance v1, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Da;-><init>(II)V

    .line 57507
    .local v0, "idGenerator":Lcom/facebook/ads/redexgen/X/Da;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A01:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/DM;->A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 57508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A07:Lcom/facebook/ads/redexgen/X/IY;

    new-instance v3, Lcom/facebook/ads/redexgen/X/DT;

    invoke-direct {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/DT;-><init>(Lcom/facebook/ads/redexgen/X/DM;Lcom/facebook/ads/redexgen/X/IY;)V

    .line 57509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57510
    .end local v2    # "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/DM;
    .end local v0    # "idGenerator":Lcom/facebook/ads/redexgen/X/Da;
    :cond_a
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A03:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A04:Z

    if-eqz v0, :cond_d

    .line 57511
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Us;->A00:J

    const-wide/16 v0, 0x2000

    add-long/2addr v4, v0

    .line 57512
    .local v2, "maxSearchPosition":J
    :goto_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-lez v0, :cond_b

    .line 57513
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Us;->A02:Z

    .line 57514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A01:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 57515
    .end local v2    # "maxSearchPosition":J
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v6}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 57516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    .line 57518
    .local p1, "payloadLength":I
    add-int/lit8 v1, v0, 0x6

    .line 57519
    .local v1, "pesLength":I
    if-nez v3, :cond_c

    .line 57520
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 57521
    :goto_3
    return v2

    .line 57522
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 57523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 57524
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/DT;->A03(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 57526
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Us;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    goto :goto_3

    .line 57527
    :cond_d
    const-wide/32 v4, 0x100000

    goto :goto_2

    .line 57528
    :cond_e
    and-int/lit16 v1, v4, 0xe0

    const/16 v0, 0xc0

    if-ne v1, v0, :cond_f

    .line 57529
    new-instance v5, Lcom/facebook/ads/redexgen/X/Uv;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/Uv;-><init>()V

    .line 57530
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Us;->A03:Z

    .line 57531
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A00:J

    goto/16 :goto_1

    .line 57532
    :cond_f
    and-int/lit16 v10, v4, 0xf0

    const/16 v9, 0xe0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_10

    sget-object v8, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const-string v1, "IZmGxcVFDZLi5bLq4amOM1alI7cWVc0I"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "fMaaUOeAnJU23v4KzwuiKj4B5r1Zv3bI"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    if-ne v10, v9, :cond_9

    .line 57533
    new-instance v5, Lcom/facebook/ads/redexgen/X/V0;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/V0;-><init>()V

    .line 57534
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Us;->A04:Z

    .line 57535
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A00:J

    goto/16 :goto_1

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADX(JJ)V
    .locals 2

    .line 57536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A07:Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A09()V

    .line 57537
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 57538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Us;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DT;->A02()V

    .line 57539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57540
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57541
    const/16 v0, 0xe

    new-array v1, v0, [B

    .line 57542
    .local p1, "scratch":[B
    const/4 v5, 0x0

    invoke-interface {p1, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 57543
    aget-byte v0, v1, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x18

    const/4 v4, 0x1

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v3, v0

    const/4 v8, 0x2

    aget-byte v0, v1, v8

    and-int/lit16 v0, v0, 0xff

    const/16 v7, 0x8

    shl-int/2addr v0, v7

    or-int/2addr v3, v0

    const/4 v2, 0x3

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    const/16 v0, 0x1ba

    if-eq v0, v3, :cond_0

    .line 57544
    return v5

    .line 57545
    :cond_0
    const/4 v6, 0x4

    aget-byte v0, v1, v6

    and-int/lit16 v3, v0, 0xc4

    const/16 v0, 0x44

    if-eq v3, v0, :cond_1

    .line 57546
    return v5

    .line 57547
    :cond_1
    const/4 v0, 0x6

    aget-byte v0, v1, v0

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_2

    .line 57548
    return v5

    .line 57549
    :cond_2
    aget-byte v0, v1, v7

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_3

    .line 57550
    return v5

    .line 57551
    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_4

    .line 57552
    return v5

    .line 57553
    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_5

    .line 57554
    return v5

    .line 57555
    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 57556
    .local p0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 57557
    invoke-interface {p1, v1, v5, v2}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 57558
    aget-byte v0, v1, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v6, v0, 0x10

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v6, v0

    aget-byte v3, v1, v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Us;->A08:[Ljava/lang/String;

    const-string v1, "8HARywLAIRunx3GgltIlTO042pg1UXxb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    and-int/lit16 v0, v3, 0xff

    or-int/2addr v0, v6

    if-ne v4, v0, :cond_7

    const/4 v5, 0x1

    :cond_7
    return v5
.end method

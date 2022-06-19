.class public final Lcom/facebook/ads/redexgen/X/V5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A07:I


# instance fields
.field public A00:Z

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/V4;

.field public final A03:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58600
    invoke-static {}, Lcom/facebook/ads/redexgen/X/V5;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V5;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/V6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/V6;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/V5;->A06:Lcom/facebook/ads/redexgen/X/CJ;

    .line 58601
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/V5;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58602
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/V5;-><init>(J)V

    .line 58603
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 58604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58605
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/V5;->A01:J

    .line 58606
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/V4;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/V4;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A02:Lcom/facebook/ads/redexgen/X/V4;

    .line 58607
    const/16 v1, 0xc8

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A03:Lcom/facebook/ads/redexgen/X/IM;

    .line 58608
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/V5;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/V5;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/V5;->A05:[Ljava/lang/String;

    const-string v1, "TYphVU2KmRKFLvdQA6cRBtELNei4wOv8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x24

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/4 v0, 0x3

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/V5;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/V5;->A05:[Ljava/lang/String;

    const-string v1, "7SaxddgL3cv9USllHft2zC5LaCcPhjo4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/V5;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x78t
        0xft
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VuuQthr8wZVpxhM0E5hCWmqmXOvVP7BI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hossO5m"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iJyhTnxse4EXMyDMLZit24EuHnHHOrSj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fjFcU6Dp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "U31CQu1iW67Ddxo5puObiNxnsCO9oYZz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AhQxMSSx7xHW6DEGfWNEVIJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RN0wzBgCfEL57hfh1zq2aqv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2gKeLUged2ZUeyM7UtLUCZVsAv3Zn22Q"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V5;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 4

    .line 58609
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V5;->A02:Lcom/facebook/ads/redexgen/X/V4;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Da;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 58610
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 58611
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 58612
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A03:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v4, 0x0

    const/16 v0, 0xc8

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/CH;->read([BII)I

    move-result v1

    .line 58614
    .local p0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 58615
    return v0

    .line 58616
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 58618
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A00:Z

    if-nez v0, :cond_1

    .line 58619
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V5;->A02:Lcom/facebook/ads/redexgen/X/V4;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/V5;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/V4;->ACJ(JZ)V

    .line 58620
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A00:Z

    .line 58621
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V5;->A02:Lcom/facebook/ads/redexgen/X/V4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A45(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 58622
    return v4
.end method

.method public final ADX(JJ)V
    .locals 1

    .line 58623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A00:Z

    .line 58624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A02:Lcom/facebook/ads/redexgen/X/V4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V4;->ADW()V

    .line 58625
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

    .line 58626
    const/16 v2, 0xa

    new-instance v5, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 58627
    .local p0, "scratch":Lcom/facebook/ads/redexgen/X/IM;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    new-instance v4, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    .line 58628
    .local v2, "scratchBits":Lcom/facebook/ads/redexgen/X/IL;
    const/4 v3, 0x0

    .line 58629
    .local v5, "startPosition":I
    :goto_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v8, 0x0

    invoke-interface {p1, v0, v8, v2}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 58630
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58631
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/V5;->A07:I

    if-eq v1, v0, :cond_4

    .line 58632
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 58633
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 58634
    move v7, v3

    .line 58635
    .local p1, "headerPosition":I
    const/4 v6, 0x0

    .line 58636
    .local v0, "validFramesSize":I
    const/4 v2, 0x0

    .line 58637
    .local v3, "validFramesCount":I
    :goto_1
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x2

    invoke-interface {p1, v1, v8, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 58638
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58639
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    .line 58640
    .local v0, "syncBytes":I
    const v1, 0xfff6

    and-int/2addr v1, v0

    const v0, 0xfff0

    if-eq v1, v0, :cond_1

    .line 58641
    const/4 v2, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/V5;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_5

    .line 58642
    sget-object v6, Lcom/facebook/ads/redexgen/X/V5;->A05:[Ljava/lang/String;

    const-string v1, "92kgLu"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v6, 0x0

    .line 58643
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 58644
    add-int/lit8 v7, v7, 0x1

    sub-int v1, v7, v3

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 58645
    return v8

    .line 58646
    :cond_0
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    goto :goto_1

    .line 58647
    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x4

    if-lt v2, v1, :cond_2

    const/16 v0, 0xbc

    if-le v6, v0, :cond_2

    .line 58648
    const/4 v0, 0x1

    return v0

    .line 58649
    :cond_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v8, v1}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 58650
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 58651
    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 58652
    .local v8, "frameSize":I
    const/4 v0, 0x6

    if-gt v1, v0, :cond_3

    .line 58653
    return v8

    .line 58654
    :cond_3
    add-int/lit8 v0, v1, -0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 58655
    add-int/2addr v6, v1

    goto :goto_1

    .line 58656
    .end local p1    # "headerPosition":I
    .end local v0    # "syncBytes":I
    .end local v3    # "validFramesCount":I
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 58657
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v1

    .line 58658
    .local v0, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v3, v0

    .line 58659
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 58660
    .end local v0    # "length":I
    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

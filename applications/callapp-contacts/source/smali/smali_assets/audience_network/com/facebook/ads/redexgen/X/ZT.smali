.class public final Lcom/facebook/ads/redexgen/X/ZT;
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

.field public final A02:Lcom/facebook/ads/redexgen/X/ZU;

.field public final A03:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 64620
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZT;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZT;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZS;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZT;->A06:Lcom/facebook/ads/redexgen/X/CJ;

    .line 64621
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZT;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64622
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZT;-><init>(J)V

    .line 64623
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 64624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64625
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ZT;->A01:J

    .line 64626
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZU;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    .line 64627
    const/16 v1, 0xae2

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A03:Lcom/facebook/ads/redexgen/X/IM;

    .line 64628
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZT;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x39

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZT;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0x2t
        0x75t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "P5w0t5YmbfCx1ojda5KKDsEMO6jqUmnr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UdOatSKcJailVD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xAiF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "epl8GGi5jyNsT2QZHjLNLopZqyhNzplR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TY8pRi4pa4JcG30Kuv61m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fOMFGQDuqjq2usuY2YJ2oGF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ObZwfJQfEiVxl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZT;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7q(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 4

    .line 64629
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZT;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Da;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/ZU;->A4V(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 64630
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 64631
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 64632
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

    .line 64633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A03:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v4, 0x0

    const/16 v0, 0xae2

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/CH;->read([BII)I

    move-result v1

    .line 64634
    .local p0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 64635
    return v0

    .line 64636
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 64638
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A00:Z

    if-nez v0, :cond_1

    .line 64639
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZT;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ZT;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ZU;->ACJ(JZ)V

    .line 64640
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A00:Z

    .line 64641
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZT;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZU;->A49(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 64642
    return v4
.end method

.method public final ADW(JJ)V
    .locals 1

    .line 64643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A00:Z

    .line 64644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZU;->ADV()V

    .line 64645
    return-void
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64646
    const/16 v3, 0xa

    new-instance v6, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v6, v3}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 64647
    .local p0, "scratch":Lcom/facebook/ads/redexgen/X/IM;
    const/4 v5, 0x0

    .line 64648
    .local v3, "startPosition":I
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZT;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64649
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZT;->A05:[Ljava/lang/String;

    const-string v1, "IuOldmz1qGC5b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64650
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/ZT;->A07:I

    if-eq v1, v0, :cond_6

    .line 64651
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 64652
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 64653
    move v3, v5

    .line 64654
    .local p1, "headerPosition":I
    const/4 v2, 0x0

    .line 64655
    .local v6, "validFramesCount":I
    :goto_1
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x5

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 64656
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64657
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v1

    .line 64658
    .local v0, "syncBytes":I
    const/16 v0, 0xb77

    if-eq v1, v0, :cond_2

    .line 64659
    const/4 v2, 0x0

    .line 64660
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 64661
    add-int/lit8 v3, v3, 0x1

    sub-int v1, v3, v5

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_1

    .line 64662
    return v4

    .line 64663
    :cond_1
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    goto :goto_1

    .line 64664
    :cond_2
    add-int/lit8 v2, v2, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZT;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3

    sget-object v7, Lcom/facebook/ads/redexgen/X/ZT;->A05:[Ljava/lang/String;

    const-string v1, "a4rI"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    const-string v1, "EnE3h5gngskpWhoTVRGnZEO"

    const/4 v0, 0x6

    aput-object v1, v7, v0

    const/4 v0, 0x4

    if-lt v2, v0, :cond_4

    .line 64665
    :goto_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x4

    if-lt v2, v0, :cond_4

    goto :goto_2

    .line 64666
    :cond_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A05([B)I

    move-result v1

    .line 64667
    .local v4, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_5

    .line 64668
    return v4

    .line 64669
    :cond_5
    add-int/lit8 v0, v1, -0x5

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    goto :goto_1

    .line 64670
    .end local p1    # "headerPosition":I
    .end local v6    # "validFramesCount":I
    :cond_6
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 64671
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v1

    .line 64672
    .local v6, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v5, v0

    .line 64673
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 64674
    .end local v6    # "length":I
    goto/16 :goto_0
.end method

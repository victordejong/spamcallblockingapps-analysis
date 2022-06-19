.class public final Lcom/facebook/ads/redexgen/X/ZN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# static fields
.field public static A03:[B

.field public static final A04:Lcom/facebook/ads/redexgen/X/CJ;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/CI;

.field public A01:Lcom/facebook/ads/redexgen/X/DC;

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 64461
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZN;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZM;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZN;->A04:Lcom/facebook/ads/redexgen/X/CJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/IM;
    .locals 1

    .line 64463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64464
    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZN;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x72

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZN;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x78t
        0x70t
        0x75t
        0x7ct
        0x7dt
        0x39t
        0x6dt
        0x76t
        0x39t
        0x7dt
        0x7ct
        0x6dt
        0x7ct
        0x6bt
        0x74t
        0x70t
        0x77t
        0x7ct
        0x39t
        0x7bt
        0x70t
        0x6dt
        0x6at
        0x6dt
        0x6bt
        0x7ct
        0x78t
        0x74t
        0x39t
        0x6dt
        0x60t
        0x69t
        0x7ct
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64465
    new-instance v2, Lcom/facebook/ads/redexgen/X/D8;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/D8;-><init>()V

    .line 64466
    .local p0, "header":Lcom/facebook/ads/redexgen/X/D8;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget v1, v2, Lcom/facebook/ads/redexgen/X/D8;->A04:I

    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_1

    .line 64467
    .end local v2
    .end local v0
    :cond_0
    return v4

    .line 64468
    :cond_1
    iget v1, v2, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    const/16 v0, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 64469
    .local v2, "length":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 64470
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/IM;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v4, v2}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 64471
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ZN;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZL;->A05(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64472
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZL;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Lcom/facebook/ads/redexgen/X/DC;

    .line 64473
    :goto_0
    return v3

    .line 64474
    :cond_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ZN;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZQ;->A07(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64475
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZQ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Lcom/facebook/ads/redexgen/X/DC;

    goto :goto_0

    .line 64476
    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ZN;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A05(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64477
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Lcom/facebook/ads/redexgen/X/DC;

    goto :goto_0

    .line 64478
    :cond_4
    return v4
.end method


# virtual methods
.method public final A7q(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 0

    .line 64479
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/CI;

    .line 64480
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Lcom/facebook/ads/redexgen/X/DC;

    if-nez v0, :cond_0

    .line 64482
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZN;->A03(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64483
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 64484
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A02:Z

    if-nez v0, :cond_1

    .line 64485
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/CI;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v2

    .line 64486
    .local p0, "trackOutput":Lcom/facebook/ads/redexgen/X/CS;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 64487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Lcom/facebook/ads/redexgen/X/DC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/CI;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/DC;->A07(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/CS;)V

    .line 64488
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/ZN;->A02:Z

    .line 64489
    .end local p0    # "trackOutput":Lcom/facebook/ads/redexgen/X/CS;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Lcom/facebook/ads/redexgen/X/DC;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DC;->A03(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I

    move-result v0

    return v0

    .line 64490
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZN;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ADW(JJ)V
    .locals 1

    .line 64491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Lcom/facebook/ads/redexgen/X/DC;

    if-eqz v0, :cond_0

    .line 64492
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/DC;->A06(JJ)V

    .line 64493
    :cond_0
    return-void
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64494
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZN;->A03(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/AJ; {:try_start_0 .. :try_end_0} :catch_0

    .line 64495
    .local p0, "e":Lcom/facebook/ads/redexgen/X/AJ;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/facebook/ads/redexgen/X/2X;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:I

.field public static A04:I

.field public static A05:[Ljava/lang/Object;

.field public static A06:[Ljava/lang/Object;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:[I

.field public A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2X;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2X;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5490
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5491
    sget-object v0, Lcom/facebook/ads/redexgen/X/2N;->A01:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5492
    sget-object v0, Lcom/facebook/ads/redexgen/X/2N;->A03:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5493
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .line 5494
    return-void
.end method

.method private final A00()I
    .locals 6

    .line 5495
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .line 5496
    .local p0, "N":I
    if-nez v4, :cond_0

    .line 5497
    const/4 v0, -0x1

    return v0

    .line 5498
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    const/4 v0, 0x0

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/2X;->A02([III)I

    move-result v2

    .line 5499
    .local v4, "index":I
    if-gez v2, :cond_1

    .line 5500
    return v2

    .line 5501
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_2

    .line 5502
    return v2

    .line 5503
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .local v0, "end":I
    :goto_0
    if-ge v3, v4, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    aget v0, v0, v3

    if-nez v0, :cond_4

    .line 5504
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_3

    return v3

    .line 5505
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5506
    :cond_4
    add-int/lit8 v5, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v5, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    aget v0, v0, v5

    if-nez v0, :cond_7

    .line 5507
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "nljZKXIH96LM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "33MSJmaTT2hK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    shl-int/lit8 v0, v5, 0x1

    aget-object v0, v4, v0

    if-nez v0, :cond_6

    return v5

    .line 5508
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 5509
    .end local v1    # "i":I
    :cond_7
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method private final A01(Ljava/lang/Object;I)I
    .locals 6

    .line 5510
    .local v2, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .line 5511
    .local p0, "N":I
    if-nez v4, :cond_0

    .line 5512
    const/4 v0, -0x1

    return v0

    .line 5513
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    invoke-static {v0, v4, p2}, Lcom/facebook/ads/redexgen/X/2X;->A02([III)I

    move-result v2

    .line 5514
    .local p1, "index":I
    if-gez v2, :cond_1

    .line 5515
    return v2

    .line 5516
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5517
    return v2

    .line 5518
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .local p2, "end":I
    :goto_0
    if-ge v3, v4, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    aget v0, v0, v3

    if-ne v0, p2, :cond_4

    .line 5519
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 5520
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5521
    :cond_4
    add-int/lit8 v5, v2, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v5, :cond_7

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "0KWp7g9eUEy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aget v0, v4, v5

    if-ne v0, p2, :cond_7

    .line 5522
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v5

    .line 5523
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 5524
    .end local v4    # "i":I
    :cond_7
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method public static A02([III)I
    .locals 0

    .line 5525
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2N;->A02([III)I

    move-result p0

    return p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5526
    .local p0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2X;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x70t
        0x6ct
        0x6dt
        0x77t
        0x24t
        0x49t
        0x65t
        0x74t
        0x2dt
        0x22t
        0x2et
        0x3ft
        0x39t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8z1HmzrTIPy39LL5zlYrlacFIwKg5dSL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BF3wuf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SqgiIkCbsFt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0ewbfDqWIohK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kTJoDQcQ4hAXz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5fxnXFw2KP9B"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "f0gXGPwWqu0hk91oP6YtPFY8hQ1GOrGw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wtH1M9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    return-void
.end method

.method private A06(I)V
    .locals 6

    .line 5527
    .local v2, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 5528
    const-class v2, Lcom/facebook/ads/redexgen/X/bC;

    monitor-enter v2

    .line 5529
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2X;->A06:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5530
    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A06:[Ljava/lang/Object;

    .line 5531
    .local v3, "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5532
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2X;->A06:[Ljava/lang/Object;

    .line 5533
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5534
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 5535
    sget v0, Lcom/facebook/ads/redexgen/X/2X;->A04:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/2X;->A04:I

    .line 5536
    monitor-exit v2

    return-void

    .line 5537
    .end local v3    # "array":[Ljava/lang/Object;
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5538
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 5539
    const-class v2, Lcom/facebook/ads/redexgen/X/bC;

    monitor-enter v2

    .line 5540
    :try_start_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/2X;->A05:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 5541
    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A05:[Ljava/lang/Object;

    .line 5542
    .restart local v3    # "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5543
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2X;->A05:[Ljava/lang/Object;

    .line 5544
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5545
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 5546
    sget v0, Lcom/facebook/ads/redexgen/X/2X;->A03:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/2X;->A03:I

    .line 5547
    monitor-exit v2

    return-void

    .line 5548
    .end local v3    # "array":[Ljava/lang/Object;
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 5549
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5550
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5551
    return-void
.end method

.method public static A07([I[Ljava/lang/Object;I)V
    .locals 7

    .line 5552
    array-length v1, p0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v2, 0x1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_2

    .line 5553
    const-class v1, Lcom/facebook/ads/redexgen/X/bC;

    monitor-enter v1

    .line 5554
    :try_start_0
    sget v0, Lcom/facebook/ads/redexgen/X/2X;->A04:I

    if-ge v0, v4, :cond_1

    .line 5555
    sget-object v0, Lcom/facebook/ads/redexgen/X/2X;->A06:[Ljava/lang/Object;

    aput-object v0, p1, v5

    .line 5556
    aput-object p0, p1, v2

    .line 5557
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    .local v1, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 5558
    aput-object v6, p1, v0

    .line 5559
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5560
    .end local v1    # "i":I
    :cond_0
    sput-object p1, Lcom/facebook/ads/redexgen/X/2X;->A06:[Ljava/lang/Object;

    .line 5561
    sget v0, Lcom/facebook/ads/redexgen/X/2X;->A04:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/2X;->A04:I

    .line 5562
    :cond_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5563
    :cond_2
    array-length v1, p0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    .line 5564
    const-class v1, Lcom/facebook/ads/redexgen/X/bC;

    monitor-enter v1

    .line 5565
    :try_start_1
    sget v0, Lcom/facebook/ads/redexgen/X/2X;->A03:I

    if-ge v0, v4, :cond_4

    .line 5566
    sget-object v0, Lcom/facebook/ads/redexgen/X/2X;->A05:[Ljava/lang/Object;

    aput-object v0, p1, v5

    .line 5567
    aput-object p0, p1, v2

    .line 5568
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    .restart local v1    # "i":I
    :goto_1
    if-lt v0, v3, :cond_3

    .line 5569
    aput-object v6, p1, v0

    .line 5570
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5571
    .end local v1    # "i":I
    :cond_3
    sput-object p1, Lcom/facebook/ads/redexgen/X/2X;->A05:[Ljava/lang/Object;

    .line 5572
    sget v0, Lcom/facebook/ads/redexgen/X/2X;->A03:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/2X;->A03:I

    .line 5573
    :cond_4
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 5574
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final A08(Ljava/lang/Object;)I
    .locals 7

    .line 5575
    .local v5, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    mul-int/lit8 v6, v0, 0x2

    .line 5576
    .local p0, "N":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5577
    .local p1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 5578
    const/4 v1, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v1, v6, :cond_5

    .line 5579
    aget-object v0, v5, v1

    if-nez v0, :cond_0

    .line 5580
    shr-int/lit8 v0, v1, 0x1

    return v0

    .line 5581
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 5582
    :cond_1
    const/4 v4, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-ge v4, v6, :cond_5

    .line 5583
    aget-object v0, v5, v4

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "bt44SpsCW8by"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Iovdsjym1Cx2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 5584
    shr-int/lit8 v3, v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5585
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "ZvOUY6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "nVlZAl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 5586
    .end local v0    # "i":I
    :cond_5
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "MKm6k3UubQ6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "2Vghj6DMfX1I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "igqcF6KEPQ66"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method

.method public final A09(Ljava/lang/Object;)I
    .locals 1

    .line 5587
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2X;->A00()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public final A0A(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 5588
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0B(I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 5589
    .local v3, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    const/4 v5, 0x1

    add-int/2addr v0, v5

    aget-object v9, v1, v0

    .line 5590
    .local p1, "old":Ljava/lang/Object;
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .line 5591
    .local v0, "osize":I
    if-gt v4, v5, :cond_1

    .line 5592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    invoke-static {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/2X;->A07([I[Ljava/lang/Object;I)V

    .line 5593
    sget-object v0, Lcom/facebook/ads/redexgen/X/2N;->A01:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5594
    sget-object v0, Lcom/facebook/ads/redexgen/X/2N;->A03:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5595
    const/4 v3, 0x0

    .line 5596
    .local p0, "nsize":I
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-ne v4, v0, :cond_9

    .line 5597
    iput v3, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_8

    .line 5598
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "hOF5xMBjbG58"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "k56GqMXOqoxT"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v9

    .line 5599
    .end local p0    # "nsize":I
    :cond_1
    add-int/lit8 v3, v4, -0x1

    .line 5600
    .restart local p0    # "nsize":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    array-length v0, v2

    const/16 v8, 0x8

    if-le v0, v8, :cond_5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    array-length v0, v2

    div-int/lit8 v0, v0, 0x3

    if-ge v1, v0, :cond_5

    .line 5601
    if-le v4, v8, :cond_2

    shr-int/lit8 v0, v4, 0x1

    add-int v8, v4, v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 5602
    .local v5, "n":I
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5603
    .local v0, "ohashes":[I
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5604
    .local v9, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/2X;->A06(I)V

    .line 5605
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-ne v4, v0, :cond_a

    .line 5606
    :goto_1
    if-lez p1, :cond_3

    .line 5607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    const/4 v2, 0x0

    invoke-static {v6, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5608
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5609
    :cond_3
    if-ge p1, v3, :cond_0

    .line 5610
    add-int/lit8 v2, p1, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    sub-int v0, v3, p1

    invoke-static {v6, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5611
    add-int/lit8 v6, p1, 0x1

    shl-int/2addr v6, v5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v3, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v7, v6, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 5612
    .local v5, "n":I
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "WH99ujY4Es6AewxBY41FF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5613
    .local v0, "ohashes":[I
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5614
    .local v9, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/2X;->A06(I)V

    .line 5615
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-ne v4, v0, :cond_a

    goto :goto_1

    .line 5616
    .end local v5    # "n":I
    .end local v0    # "ohashes":[I
    .end local v9    # "oarray":[Ljava/lang/Object;
    :cond_5
    if-ge p1, v3, :cond_6

    .line 5617
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    add-int/lit8 v1, p1, 0x1

    sub-int v0, v3, p1

    invoke-static {v2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5618
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    shl-int/2addr v7, v5

    shl-int/lit8 v6, p1, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "XDTfJnpJ3BwszyLE1LguEyDn"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sub-int v0, v3, p1

    shl-int/2addr v0, v5

    invoke-static {v8, v7, v8, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5619
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    const/4 v1, 0x0

    aput-object v1, v2, v0

    .line 5620
    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v5

    aput-object v1, v2, v0

    goto/16 :goto_0

    :cond_7
    sub-int v0, v3, p1

    shl-int/2addr v0, v5

    invoke-static {v8, v7, v8, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5621
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 5622
    .restart local v5    # "n":I
    .restart local v0    # "ohashes":[I
    .restart local v9    # "oarray":[Ljava/lang/Object;
    :cond_a
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final A0C(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 5623
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0D(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 5624
    .local p2, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local v2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 5625
    .end local v0
    .local p0, "index":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 5626
    .local p1, "old":Ljava/lang/Object;, "TV;"
    aput-object p2, v1, v2

    .line 5627
    return-object v0
.end method

.method public final A0E(I)V
    .locals 6

    .line 5628
    .local v3, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v5, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .line 5629
    .local p0, "osize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 5630
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5631
    .local p1, "ohashes":[I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5632
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A06(I)V

    .line 5633
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-lez v0, :cond_0

    .line 5634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    const/4 v2, 0x0

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5635
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5636
    :cond_0
    invoke-static {v4, v3, v5}, Lcom/facebook/ads/redexgen/X/2X;->A07([I[Ljava/lang/Object;I)V

    .line 5637
    .end local p1    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-ne v0, v5, :cond_2

    .line 5638
    return-void

    .line 5639
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 4

    .line 5640
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-lez v0, :cond_0

    .line 5641
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 5642
    .local p0, "ohashes":[I
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "UNrHeFRST0N9gyLTBJ6FVG6osgOV0jla"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Uxp69fMHdnF3RanJB6hneAcQQEE567qn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5643
    .local v0, "oarray":[Ljava/lang/Object;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .line 5644
    .local v3, "osize":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/2N;->A01:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5645
    sget-object v0, Lcom/facebook/ads/redexgen/X/2N;->A03:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5646
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .line 5647
    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/2X;->A07([I[Ljava/lang/Object;I)V

    .line 5648
    .end local p0    # "ohashes":[I
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v3    # "osize":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-gtz v0, :cond_1

    .line 5649
    return-void

    .line 5650
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 5651
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A09(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 5652
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A08(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 5653
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 5654
    return v5

    .line 5655
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2X;

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 5656
    check-cast p1, Lcom/facebook/ads/redexgen/X/2X;

    .line 5657
    .local p1, "map":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2X;->size()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 5658
    return v4

    .line 5659
    :cond_1
    move v3, v4

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-ge v3, v0, :cond_5

    .line 5660
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2X;->A0A(I)Ljava/lang/Object;

    move-result-object v2

    .line 5661
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2X;->A0C(I)Ljava/lang/Object;

    move-result-object v1

    .line 5662
    .local p1, "mine":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5663
    .local p1, "theirs":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 5664
    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/2X;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 5665
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 5666
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local p1    # "theirs":Ljava/lang/Object;
    .end local p1
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5667
    :cond_4
    :goto_1
    return v4

    .line 5668
    :goto_2
    return v4

    .line 5669
    .end local v0    # "i":I
    :cond_5
    return v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5670
    .local p0, "ignored":Ljava/lang/ClassCastException;
    :catch_0
    return v4

    .line 5671
    .end local p0    # "ignored":Ljava/lang/ClassCastException;
    .local p0, "ignored":Ljava/lang/NullPointerException;
    :catch_1
    return v4

    .line 5672
    .end local p0    # "ignored":Ljava/lang/NullPointerException;
    .end local p1
    :cond_6
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 5673
    check-cast p1, Ljava/util/Map;

    .line 5674
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 5675
    return v4

    .line 5676
    :cond_7
    move v3, v4

    .restart local v0    # "i":I
    :goto_3
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-ge v3, v0, :cond_b

    .line 5677
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2X;->A0A(I)Ljava/lang/Object;

    move-result-object v2

    .line 5678
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2X;->A0C(I)Ljava/lang/Object;

    move-result-object v1

    .line 5679
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5680
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez v1, :cond_8

    .line 5681
    if-nez v0, :cond_a

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 5682
    :cond_8
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    .line 5683
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local p1
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5684
    :cond_a
    :goto_4
    return v4

    .line 5685
    :goto_5
    return v4

    .line 5686
    .end local v0    # "i":I
    :cond_b
    return v5
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5687
    .local p0, "ignored":Ljava/lang/ClassCastException;
    :catch_2
    return v4

    .line 5688
    .end local p0    # "ignored":Ljava/lang/ClassCastException;
    .local p0, "ignored":Ljava/lang/NullPointerException;
    :catch_3
    return v4

    .line 5689
    .end local p0    # "ignored":Ljava/lang/NullPointerException;
    .end local p1
    :cond_c
    return v4
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 5690
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A09(Ljava/lang/Object;)I

    move-result v0

    .line 5691
    .local p0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 8

    .line 5692
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5693
    .local p0, "hashes":[I
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5694
    .local v7, "array":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 5695
    .local v6, "result":I
    const/4 v4, 0x0

    .local v5, "i":I
    const/4 v3, 0x1

    .local v4, "v":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .local v3, "s":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 5696
    aget-object v0, v6, v3

    .line 5697
    .local v2, "value":Ljava/lang/Object;
    aget v1, v7, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v1, v0

    add-int/2addr v5, v1

    .line 5698
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 5699
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 5700
    .end local v5    # "i":I
    .end local v4    # "v":I
    .end local v3    # "s":I
    :cond_1
    return v5
.end method

.method public final isEmpty()Z
    .locals 1

    .line 5701
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 5702
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local v4, "key":Ljava/lang/Object;, "TK;"
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget v5, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .line 5703
    .local p0, "osize":I
    if-nez p1, :cond_0

    .line 5704
    const/4 v6, 0x0

    .line 5705
    .local p1, "hash":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2X;->A00()I

    move-result v0

    .line 5706
    .local p2, "index":I
    .restart local p2    # "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5707
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 5708
    .end local p2    # "index":I
    .local v5, "index":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 5709
    .local v6, "old":Ljava/lang/Object;, "TV;"
    aput-object p2, v1, v2

    .line 5710
    return-object v0

    .line 5711
    .end local p1    # "hash":I
    .end local p2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 5712
    .restart local p1    # "hash":I
    invoke-direct {p0, p1, v6}, Lcom/facebook/ads/redexgen/X/2X;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    .line 5713
    .end local v5    # "index":I
    .end local v6    # "old":Ljava/lang/Object;, "TV;"
    .restart local p2    # "index":I
    :cond_1
    xor-int/lit8 v4, v0, -0x1

    .line 5714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    array-length v0, v0

    if-lt v5, v0, :cond_4

    .line 5715
    const/4 v0, 0x4

    const/16 v1, 0x8

    if-lt v5, v1, :cond_6

    shr-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v5

    .line 5716
    .local v5, "n":I
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    .line 5717
    .local v6, "ohashes":[I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    .line 5718
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2X;->A06(I)V

    .line 5719
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-ne v5, v0, :cond_9

    .line 5720
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    array-length v0, v1

    if-lez v0, :cond_3

    .line 5721
    array-length v0, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5722
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    array-length v0, v3

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5723
    :cond_3
    invoke-static {v7, v3, v5}, Lcom/facebook/ads/redexgen/X/2X;->A07([I[Ljava/lang/Object;I)V

    .line 5724
    .end local v5    # "n":I
    .end local v6    # "ohashes":[I
    .end local v0    # "oarray":[Ljava/lang/Object;
    :cond_4
    if-ge v4, v5, :cond_5

    .line 5725
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    add-int/lit8 v1, v4, 0x1

    sub-int v0, v5, v4

    invoke-static {v2, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5726
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v2, v4, 0x1

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v1, v0, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    sub-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5727
    :cond_5
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-ne v5, v3, :cond_8

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5728
    :cond_6
    if-lt v5, v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A08:[Ljava/lang/String;

    const-string v1, "wNq2gfAl4zWIB1XFoKeYdvHUl0gsJJAY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ABvHOLLiQ2Gbe1PeIygvGpsQN2lfiJ3N"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    array-length v0, v5

    if-ge v4, v0, :cond_8

    .line 5729
    aput v6, v5, v4

    .line 5730
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v4, 0x1

    aput-object p1, v1, v0

    .line 5731
    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    aput-object p2, v1, v0

    .line 5732
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    .line 5733
    const/4 v0, 0x0

    return-object v0

    .line 5734
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 5735
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 5736
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A09(Ljava/lang/Object;)I

    move-result v0

    .line 5737
    .local p0, "index":I
    if-ltz v0, :cond_0

    .line 5738
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2X;->A0B(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5739
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 5740
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 5741
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2X;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5742
    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5743
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5744
    .local p0, "buffer":Ljava/lang/StringBuilder;
    const/16 v0, 0x7b

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5745
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    if-ge v4, v0, :cond_4

    .line 5746
    if-lez v4, :cond_1

    .line 5747
    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5748
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/2X;->A0A(I)Ljava/lang/Object;

    move-result-object v3

    .line 5749
    .local v2, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A03(III)Ljava/lang/String;

    move-result-object v1

    if-eq v3, p0, :cond_3

    .line 5750
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5751
    :goto_1
    const/16 v0, 0x3d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5752
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/2X;->A0C(I)Ljava/lang/Object;

    move-result-object v0

    .line 5753
    .local v0, "value":Ljava/lang/Object;
    if-eq v0, p0, :cond_2

    .line 5754
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5755
    .end local v2    # "key":Ljava/lang/Object;
    .end local v0    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5756
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5757
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5758
    .end local v0
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5759
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

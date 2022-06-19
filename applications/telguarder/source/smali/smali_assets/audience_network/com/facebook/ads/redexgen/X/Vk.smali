.class public final Lcom/facebook/ads/redexgen/X/Vk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CJ;


# static fields
.field public static A06:[B

.field public static final A07:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/CG;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 61489
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vk;->A01()V

    const/4 v0, 0x0

    .line 61490
    .local v0, "flacExtractorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/facebook/ads/internal/exoplayer2/extractor/Extractor;>;"
    :try_start_0
    const/16 v3, 0x4a

    const/16 v2, 0x3b

    const/16 v1, 0x4b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v1

    .line 61491
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v1, Lcom/facebook/ads/redexgen/X/CG;

    .line 61492
    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 61493
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61494
    :catch_0
    sput-object v0, Lcom/facebook/ads/redexgen/X/Vk;->A07:Ljava/lang/reflect/Constructor;

    .line 61495
    .end local v0    # "flacExtractorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/facebook/ads/internal/exoplayer2/extractor/Extractor;>;"
    return-void

    .line 61496
    :catch_1
    move-exception v3

    .line 61497
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 61498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61499
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:I

    .line 61500
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x44

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

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vk;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x65t
        -0x38t
        -0x38t
        -0x3bt
        -0x38t
        0x76t
        -0x41t
        -0x3ct
        -0x37t
        -0x36t
        -0x49t
        -0x3ct
        -0x36t
        -0x41t
        -0x49t
        -0x36t
        -0x41t
        -0x3ct
        -0x43t
        0x76t
        -0x64t
        -0x5et
        -0x69t
        -0x67t
        0x76t
        -0x45t
        -0x32t
        -0x36t
        -0x45t
        -0x3ct
        -0x37t
        -0x41t
        -0x3bt
        -0x3ct
        -0x25t
        -0xct
        -0x15t
        -0x2t
        -0xat
        -0x15t
        -0x17t
        -0x6t
        -0x15t
        -0x16t
        -0x5at
        -0x15t
        -0x8t
        -0x8t
        -0xbt
        -0x8t
        -0x5at
        -0x17t
        -0x8t
        -0x15t
        -0x19t
        -0x6t
        -0x11t
        -0xct
        -0x13t
        -0x5at
        -0x34t
        -0x2et
        -0x39t
        -0x37t
        -0x5at
        -0x15t
        -0x2t
        -0x6t
        -0x8t
        -0x19t
        -0x17t
        -0x6t
        -0xbt
        -0x8t
        -0xet
        -0x2t
        -0x4t
        -0x43t
        -0xbt
        -0x10t
        -0xet
        -0xct
        -0xft
        -0x2t
        -0x2t
        -0x6t
        -0x43t
        -0x10t
        -0xdt
        0x2t
        -0x43t
        -0x8t
        -0x3t
        0x3t
        -0xct
        0x1t
        -0x3t
        -0x10t
        -0x5t
        -0x43t
        -0xct
        0x7t
        -0x2t
        -0x1t
        -0x5t
        -0x10t
        0x8t
        -0xct
        0x1t
        -0x3ft
        -0x43t
        -0xct
        0x7t
        0x3t
        -0x43t
        -0xbt
        -0x5t
        -0x10t
        -0xet
        -0x43t
        -0x2bt
        -0x5t
        -0x10t
        -0xet
        -0x2ct
        0x7t
        0x3t
        0x1t
        -0x10t
        -0xet
        0x3t
        -0x2t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized A4F()[Lcom/facebook/ads/redexgen/X/CG;
    .locals 7

    monitor-enter p0

    .line 61501
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vk;->A07:Ljava/lang/reflect/Constructor;

    const/16 v6, 0xc

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/CG;

    .line 61502
    .local p0, "extractors":[Lcom/facebook/ads/redexgen/X/CG;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/VV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VV;-><init>(I)V

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 61503
    const/4 v4, 0x1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/VL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VL;-><init>(I)V

    aput-object v0, v2, v4

    .line 61504
    const/4 v4, 0x2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/VJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VJ;-><init>(I)V

    aput-object v0, v2, v4

    .line 61505
    const/4 v4, 0x3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/VS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VS;-><init>(I)V

    aput-object v0, v2, v4

    .line 61506
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/V5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/V5;-><init>()V

    aput-object v0, v2, v1

    .line 61507
    const/4 v1, 0x5

    new-instance v0, Lcom/facebook/ads/redexgen/X/V8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/V8;-><init>()V

    aput-object v0, v2, v1

    .line 61508
    const/4 v5, 0x6

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Um;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Um;-><init>(II)V

    aput-object v0, v2, v5

    .line 61509
    const/4 v1, 0x7

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vc;-><init>()V

    aput-object v0, v2, v1

    .line 61510
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/VD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VD;-><init>()V

    aput-object v0, v2, v1

    .line 61511
    const/16 v1, 0x9

    new-instance v0, Lcom/facebook/ads/redexgen/X/Us;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Us;-><init>()V

    aput-object v0, v2, v1

    .line 61512
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Uk;-><init>()V

    aput-object v0, v2, v1

    .line 61513
    const/16 v1, 0xb

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vf;-><init>()V

    aput-object v0, v2, v1

    .line 61514
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vk;->A07:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61515
    :try_start_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A07:Ljava/lang/reflect/Constructor;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CG;

    aput-object v0, v2, v6

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61516
    .end local v3
    :catch_0
    move-exception v3

    .line 61517
    :try_start_2
    const/16 v2, 0x22

    const/16 v1, 0x28

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61518
    .end local v0
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v2

    .line 61519
    .end local p0    # "extractors":[Lcom/facebook/ads/redexgen/X/CG;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

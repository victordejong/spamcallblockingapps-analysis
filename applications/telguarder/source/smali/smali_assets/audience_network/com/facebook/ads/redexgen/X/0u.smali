.class public final Lcom/facebook/ads/redexgen/X/0u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/0t;

.field public static A01:Lcom/facebook/ads/redexgen/X/8D;

.field public static A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A03:Ljava/util/concurrent/CountDownLatch;

.field public static A04:Ljava/util/concurrent/CountDownLatch;

.field public static A05:Z

.field public static A06:[B

.field public static final A07:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2432
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/0u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A07:Ljava/lang/String;

    .line 2433
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A03:Ljava/util/concurrent/CountDownLatch;

    .line 2434
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A04:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Ljava/lang/String;
    .locals 3

    .line 2436
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0t;->A03()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x5

    const/4 v1, 0x2

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0u;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2437
    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2438
    .local v2, "file":Ljava/io/File;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object p0

    .line 2439
    .local v1, "fileContent":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-lez v0, :cond_0

    .line 2440
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2441
    .local v0, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    new-array v3, v0, [B

    .line 2442
    .local v4, "data":[B
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 2443
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 2444
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2445
    :catch_0
    move-exception v3

    .line 2446
    .local v0, "e":Ljava/io/IOException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 2447
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0v:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 2448
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1

    .line 2449
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 2450
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 2451
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0u:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 2452
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 2453
    :goto_0
    move-object p0, v0

    .line 2454
    :cond_0
    :goto_1
    return-object p0
.end method

.method public static A03()V
    .locals 3

    .line 2455
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A02:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2456
    .end local v0
    :cond_0
    return-void

    .line 2457
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0u;->A02:Ljava/lang/String;

    .line 2458
    .local v0, "encryptedAdId":Ljava/lang/String;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cE;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/cE;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2459
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x40t
        0x52t
        0x39t
        0x2ct
        0x61t
        0x67t
        0x4at
        0x4ft
        0x58t
        0x68t
        0x4at
        0x5bt
        0x5bt
        0x42t
        0x45t
        0x4ct
        0x62t
        0x45t
        0x4dt
        0x44t
        0x5t
        0x5ft
        0x53t
        0x5ft
        0x47t
        0x45t
        0x54t
        0x54t
        0x41t
        0x40t
        0x65t
        0x40t
        0x57t
        0xat
        0x50t
        0x5ct
        0x50t
        0x53t
        0x47t
        0x50t
        0x44t
        0x40t
        0x50t
        0x5bt
        0x56t
        0x4ct
        0x6at
        0x56t
        0x54t
        0x45t
        0x45t
        0x5ct
        0x5bt
        0x52t
    .end array-data
.end method

.method public static synthetic A05()V
    .locals 0

    .line 2460
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A08()V

    return-void
.end method

.method public static synthetic A06()V
    .locals 0

    .line 2461
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A09()V

    return-void
.end method

.method public static declared-synchronized A07()V
    .locals 4

    const-class v3, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v3

    .line 2462
    :try_start_0
    const/4 v2, 0x7

    const/16 v1, 0x12

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A0E(Ljava/lang/String;)V

    .line 2463
    const/16 v2, 0x19

    const/16 v1, 0xd

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A0E(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    monitor-exit v3

    return-void

    .line 2465
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized A08()V
    .locals 6

    const-class v5, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v5

    .line 2466
    :try_start_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    const/16 v2, 0x19

    const/16 v1, 0xd

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/0t;->A08(Ljava/lang/String;)V

    .line 2467
    sget-object v3, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    const/4 v2, 0x7

    const/16 v1, 0x12

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/0t;->A06(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2468
    :catch_0
    move-exception v4

    .line 2469
    .local v3, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A07()V

    .line 2470
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 2471
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0w:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 2472
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2473
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    monitor-exit v5

    return-void

    .line 2474
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static declared-synchronized A09()V
    .locals 4

    const-class v3, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v3

    .line 2475
    :try_start_0
    const/16 v2, 0x19

    const/16 v1, 0xd

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A0F(Ljava/lang/String;[B)V

    .line 2476
    const/4 v2, 0x7

    const/16 v1, 0x12

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    .line 2477
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0t;->A04()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2478
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A0F(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2479
    monitor-exit v3

    return-void

    .line 2480
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Z)V
    .locals 0

    .line 2481
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/0u;->A0B(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Z)V

    return-void
.end method

.method public static declared-synchronized A0B(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Z)V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v1

    .line 2482
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/1M;->A08(Z)V

    .line 2483
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1M;->A09()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1M;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2484
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0t;->A07(Ljava/lang/String;)V

    goto :goto_0

    .line 2485
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0t;->A09(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2486
    :goto_0
    monitor-exit v1

    return-void

    .line 2487
    .end local p2    # null:Z
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized A0C(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v2

    .line 2488
    :try_start_0
    sput-object p0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 2489
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A02:Ljava/lang/String;

    .line 2490
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/cH;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2491
    monitor-exit v2

    return-void

    .line 2492
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A0D(Ljava/lang/String;)V
    .locals 2

    .line 2493
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A0H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2494
    return-void

    .line 2495
    :cond_0
    sput-object p0, Lcom/facebook/ads/redexgen/X/0u;->A02:Ljava/lang/String;

    .line 2496
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cF;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2497
    return-void
.end method

.method public static A0E(Ljava/lang/String;)V
    .locals 2

    .line 2498
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2499
    .local p0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2500
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2501
    :cond_0
    return-void
.end method

.method public static declared-synchronized A0F(Ljava/lang/String;[B)V
    .locals 6

    const-class v5, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v5

    .line 2502
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2503
    .local p1, "file":Ljava/io/File;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2504
    .local v5, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2505
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2506
    :catch_0
    move-exception v4

    .line 2507
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 2508
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0v:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 2509
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0

    .line 2510
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 2511
    .local v5, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 2512
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0u:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 2513
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2514
    :goto_0
    monitor-exit v5

    return-void

    .line 2515
    .end local p1    # "file":Ljava/io/File;
    .end local v4
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static A0G(Lorg/json/JSONObject;)V
    .locals 2

    .line 2516
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0v(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/0u;->A05:Z

    .line 2517
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/0u;->A05:Z

    if-nez v0, :cond_0

    .line 2518
    return-void

    .line 2519
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cG;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2520
    return-void
.end method

.method public static A0H()Z
    .locals 1

    .line 2521
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/0u;->A05:Z

    return v0
.end method

.method public static A0I(Ljava/lang/String;)Z
    .locals 7

    .line 2522
    const/4 v6, 0x0

    .line 2523
    .local p0, "hasData":Z
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    .line 2524
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0t;->A04()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Lcom/facebook/ads/redexgen/X/1M;

    .line 2525
    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2526
    :catch_0
    move-exception v1

    .line 2527
    .local v6, "e":Lorg/json/JSONException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 2528
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0w:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 2529
    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 2530
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    return v6
.end method

.method public static synthetic A0J(Ljava/lang/String;)Z
    .locals 0

    .line 2531
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/0u;->A0I(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

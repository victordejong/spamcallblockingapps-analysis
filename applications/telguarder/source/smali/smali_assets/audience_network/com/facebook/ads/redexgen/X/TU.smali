.class public final Lcom/facebook/ads/redexgen/X/TU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JB;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:Landroid/net/ConnectivityManager;

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/redexgen/X/Wl;

.field public final A07:Lcom/facebook/ads/redexgen/X/JA;

.field public final A08:Lcom/facebook/ads/redexgen/X/QF;

.field public final A09:Ljava/lang/Runnable;

.field public final A0A:Ljava/lang/Runnable;

.field public final A0B:Ljava/util/concurrent/ThreadPoolExecutor;

.field public volatile A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 54466
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TU;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TU;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/JB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TU;->A0F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 7

    .line 54467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54468
    new-instance v0, Lcom/facebook/ads/redexgen/X/TW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TW;-><init>(Lcom/facebook/ads/redexgen/X/TU;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A0A:Ljava/lang/Runnable;

    .line 54469
    new-instance v0, Lcom/facebook/ads/redexgen/X/TV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TV;-><init>(Lcom/facebook/ads/redexgen/X/TU;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A09:Ljava/lang/Runnable;

    .line 54470
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TU;->A07:Lcom/facebook/ads/redexgen/X/JA;

    .line 54471
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TU;->A06:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54472
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A0B:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54473
    const/16 v2, 0x125

    const/16 v1, 0xc

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A04:Landroid/net/ConnectivityManager;

    .line 54474
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/QX;->A01(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A08:Lcom/facebook/ads/redexgen/X/QF;

    .line 54475
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A05:Landroid/os/Handler;

    .line 54476
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J6;->A0K(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A03:J

    .line 54477
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J6;->A0J(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A02:J

    .line 54478
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/TU;)I
    .locals 1

    .line 54479
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:I

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/TU;)J
    .locals 1

    .line 54480
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A01:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/TU;)Ljava/lang/Runnable;
    .locals 0

    .line 54481
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TU;->A0A:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/TU;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TU;->A0E:[Ljava/lang/String;

    const-string v1, "STFGVVXWKW9SjLATYObI8PiLTu9r"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "1bj9PcPMGQWJpkILDx"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/TU;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 54482
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TU;->A0B:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method private A05()V
    .locals 2

    .line 54483
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 54484
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:I

    .line 54485
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A01:J

    .line 54486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A0B:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 54487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A07:Lcom/facebook/ads/redexgen/X/JA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JA;->A9O()V

    .line 54488
    :cond_0
    return-void
.end method

.method private A06()V
    .locals 5

    .line 54489
    iget v1, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A06:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A09(Landroid/content/Context;)I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 54490
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TU;->A05()V

    .line 54491
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TU;->A4n()V

    .line 54492
    return-void

    .line 54493
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/TU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TU;->A0E:[Ljava/lang/String;

    const-string v1, "48XWu56AgSaDG2v80CTGd4cBK4h9Z0cs"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "AYX5vj0PphgSAPbgEesjNh2Dg1h2Tuc1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    .line 54494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A06:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J6;->A0I(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A01:J

    .line 54495
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TU;->A4o()V

    .line 54496
    return-void

    .line 54497
    :cond_2
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/TU;->A01:J

    const-wide/16 v0, 0x2

    mul-long/2addr v2, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/TU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x6

    aget-object v4, v4, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/TU;->A0E:[Ljava/lang/String;

    const-string v1, "1ToF3hMm2VA6KDOeCYlfpYX9EZhWZaCs"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "Z30ky6DQTC9ucfzgiQKOMI68k5hVrHHu"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/TU;->A01:J

    goto :goto_1
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x142

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TU;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x6at
        0x79t
        0x63t
        0x54t
        0x58t
        0x75t
        0x6ft
        0x6ct
        0x7dt
        0x68t
        0x7ft
        0x74t
        0x75t
        0x72t
        0x7bt
        0x3ct
        0x79t
        0x6at
        0x79t
        0x72t
        0x68t
        0x3ct
        0x34t
        0x40t
        0x7dt
        0x66t
        0x60t
        0x75t
        0x71t
        0x6ct
        0x6at
        0x6bt
        0x25t
        0x72t
        0x6dt
        0x6ct
        0x69t
        0x60t
        0x25t
        0x61t
        0x6ct
        0x76t
        0x75t
        0x64t
        0x71t
        0x66t
        0x6dt
        0x6ct
        0x6bt
        0x62t
        0x25t
        0x60t
        0x73t
        0x60t
        0x6bt
        0x71t
        0x76t
        0x2bt
        0x49t
        0x7ft
        0x68t
        0x6ct
        0x7ft
        0x68t
        0x3at
        0x6at
        0x68t
        0x75t
        0x79t
        0x7ft
        0x69t
        0x69t
        0x7ft
        0x7et
        0x3at
        0x6at
        0x7bt
        0x68t
        0x6et
        0x73t
        0x7bt
        0x76t
        0x3at
        0x78t
        0x7bt
        0x6et
        0x79t
        0x72t
        0x36t
        0x3at
        0x79t
        0x75t
        0x74t
        0x6et
        0x73t
        0x74t
        0x6ft
        0x73t
        0x74t
        0x7dt
        0x3at
        0x6et
        0x75t
        0x3at
        0x74t
        0x7ft
        0x62t
        0x6et
        0x3at
        0x75t
        0x74t
        0x7ft
        0x34t
        0x59t
        0x6ft
        0x78t
        0x7ct
        0x6ft
        0x78t
        0x2at
        0x78t
        0x6ft
        0x79t
        0x7at
        0x65t
        0x64t
        0x79t
        0x6ft
        0x2at
        0x63t
        0x79t
        0x2at
        0x6ft
        0x67t
        0x7at
        0x7et
        0x73t
        0x24t
        0x0t
        0x36t
        0x21t
        0x25t
        0x36t
        0x21t
        0x73t
        0x21t
        0x36t
        0x27t
        0x26t
        0x21t
        0x3dt
        0x36t
        0x37t
        0x73t
        0x32t
        0x73t
        0x3dt
        0x3ct
        0x3dt
        0x7et
        0x20t
        0x26t
        0x30t
        0x30t
        0x36t
        0x20t
        0x20t
        0x35t
        0x26t
        0x3ft
        0x73t
        0x20t
        0x27t
        0x32t
        0x27t
        0x26t
        0x20t
        0x73t
        0x30t
        0x3ct
        0x37t
        0x36t
        0x73t
        0x3ct
        0x35t
        0x73t
        0x46t
        0x70t
        0x67t
        0x63t
        0x70t
        0x67t
        0x35t
        0x62t
        0x74t
        0x66t
        0x35t
        0x60t
        0x7bt
        0x74t
        0x77t
        0x79t
        0x70t
        0x35t
        0x61t
        0x7at
        0x35t
        0x65t
        0x67t
        0x7at
        0x76t
        0x70t
        0x66t
        0x66t
        0x35t
        0x74t
        0x79t
        0x79t
        0x35t
        0x70t
        0x63t
        0x70t
        0x7bt
        0x61t
        0x66t
        0x39t
        0x35t
        0x61t
        0x67t
        0x6ct
        0x7ct
        0x7bt
        0x72t
        0x35t
        0x74t
        0x72t
        0x74t
        0x7ct
        0x7bt
        0x3bt
        0x39t
        0x1t
        0x3t
        0x1at
        0x1at
        0x3t
        0x4t
        0xdt
        0x4at
        0xet
        0x3t
        0x19t
        0x1at
        0xbt
        0x1et
        0x9t
        0x2t
        0x4at
        0xet
        0x1ft
        0xft
        0x4at
        0x1et
        0x5t
        0x4at
        0x6t
        0xbt
        0x9t
        0x1t
        0x4at
        0x5t
        0xct
        0x4at
        0x9t
        0x5t
        0x4t
        0x4t
        0xft
        0x9t
        0x1et
        0x3t
        0x1ct
        0x3t
        0x1et
        0x13t
        0x44t
        0x4at
        0x5ft
        0x5ft
        0x4et
        0x46t
        0x5bt
        0x5ft
        0x5dt
        0x51t
        0x50t
        0x50t
        0x5bt
        0x5dt
        0x4at
        0x57t
        0x48t
        0x57t
        0x4at
        0x47t
        0x20t
        0x25t
        0x30t
        0x25t
        0x3t
        0x10t
        0x3t
        0x8t
        0x12t
        0x15t
        0x3bt
        0x2at
        0x32t
        0x27t
        0x24t
        0x2at
        0x2ft
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KlcQ4aPMCjTEuj6tlqvSPg02tmhmGUou"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NbdeitWOc1zrv1JDjauqKHmjPPhSGwGe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "R4vSD9xrU3uFkHfeeGcLq0xvgbIcHayT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rvVAUvGslDbkwSzXQ4gHiQTP5zrG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ljLEgEfbMYnmdR7mWy3vUvMk8HSCwfcz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YjYM3cC5SO9DuryblpH9N9a8sNamrwLD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dglxEHbBnsXp5lOZvNi9PFSn5QE5iyod"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nrMzKM4Ejqm74mRasA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TU;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private A09(J)V
    .locals 2

    .line 54498
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TU;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A09:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54499
    return-void
.end method

.method private A0A(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A06:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A02()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8G;->A4Q()Ljava/util/Map;

    move-result-object v0

    .line 54501
    .local p0, "shortEvnData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 54502
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54503
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 54504
    :cond_0
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/TU;Z)Z
    .locals 0

    .line 54505
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/TU;->A0C:Z

    return p1
.end method


# virtual methods
.method public final A0C()V
    .locals 8

    .line 54506
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A04:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 54507
    .local p0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54508
    .restart local p0    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54509
    sget-object v3, Lcom/facebook/ads/redexgen/X/TU;->A0F:Ljava/lang/String;

    const/16 v2, 0xf0

    const/16 v1, 0x2e

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54510
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A02:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TU;->A09(J)V

    .line 54511
    return-void

    .line 54512
    :cond_2
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 54513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A07:Lcom/facebook/ads/redexgen/X/JA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JA;->A4E()Lorg/json/JSONObject;

    move-result-object v5

    .line 54514
    .local v0, "payloadJson":Lorg/json/JSONObject;
    if-nez v5, :cond_3

    .line 54515
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 54516
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TU;->A05()V

    .line 54517
    return-void

    .line 54518
    :cond_3
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x135

    const/4 v1, 0x6

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54519
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 54520
    .local v0, "events":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 54521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/16 v1, 0x13

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54522
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54523
    .end local v0    # "i":I
    .end local v0
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 54524
    .local v0, "dataJson":Lorg/json/JSONObject;
    const/16 v2, 0x11e

    const/4 v1, 0x7

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54525
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/TU;->A0A(Lorg/json/JSONObject;)V

    .line 54526
    const/16 v2, 0x131

    const/4 v1, 0x4

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54527
    new-instance v3, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 54528
    .local v0, "parameters":Lcom/facebook/ads/redexgen/X/QT;
    const/16 v2, 0x13b

    const/4 v1, 0x7

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/QT;->A08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54529
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TU;->A08:Lcom/facebook/ads/redexgen/X/QF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A06:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54530
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A03()Lcom/facebook/ads/redexgen/X/8H;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8H;->A6V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QT;->A09()[B

    move-result-object v0

    .line 54531
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QF;->ACQ(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v7

    .line 54532
    .local v3, "response":Lcom/facebook/ads/redexgen/X/QE;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->A5i()Ljava/lang/String;

    move-result-object v2

    .line 54533
    .local v2, "responseBody":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    .line 54534
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 54535
    :goto_2
    if-nez v7, :cond_6

    goto/16 :goto_3

    .line 54536
    :cond_6
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v1

    const/16 v0, 0xc8

    if-eq v1, v0, :cond_a

    .line 54537
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54538
    sget-object v6, Lcom/facebook/ads/redexgen/X/TU;->A0F:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8a

    const/16 v1, 0x30

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54539
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54540
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54541
    :cond_7
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v1

    const/16 v0, 0x19d

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A06:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54542
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1W(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A07:Lcom/facebook/ads/redexgen/X/JA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JA;->ABL()V

    .line 54544
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TU;->A05()V

    goto/16 :goto_4

    .line 54545
    :cond_8
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54546
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TU;->A07:Lcom/facebook/ads/redexgen/X/JA;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/JA;->A9s(Lorg/json/JSONArray;)V

    .line 54547
    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TU;->A06()V

    goto/16 :goto_4

    .line 54548
    :cond_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TU;->A07:Lcom/facebook/ads/redexgen/X/JA;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/JA;->A9u(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 54549
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 54550
    sget-object v3, Lcom/facebook/ads/redexgen/X/TU;->A0F:Ljava/lang/String;

    const/16 v2, 0xba

    const/16 v1, 0x36

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54551
    :cond_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TU;->A06()V

    goto :goto_4

    .line 54552
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A07:Lcom/facebook/ads/redexgen/X/JA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JA;->A89()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 54553
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54554
    sget-object v3, Lcom/facebook/ads/redexgen/X/TU;->A0F:Ljava/lang/String;

    const/16 v2, 0x3a

    const/16 v1, 0x37

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54555
    :cond_d
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TU;->A06()V

    goto :goto_4

    .line 54556
    :cond_e
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TU;->A05()V

    goto :goto_4

    .line 54557
    :cond_f
    :goto_3
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 54558
    sget-object v3, Lcom/facebook/ads/redexgen/X/TU;->A0F:Ljava/lang/String;

    const/16 v2, 0x71

    const/16 v1, 0x19

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54559
    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A06:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54560
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54561
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TU;->A07:Lcom/facebook/ads/redexgen/X/JA;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/JA;->A9s(Lorg/json/JSONArray;)V

    .line 54562
    :cond_11
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TU;->A06()V

    goto :goto_4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54563
    .end local p0    # "activeNetwork":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v4

    .line 54564
    .local p0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 54565
    sget-object v3, Lcom/facebook/ads/redexgen/X/TU;->A0F:Ljava/lang/String;

    const/16 v2, 0x17

    const/16 v1, 0x23

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54566
    :cond_12
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TU;->A06()V

    .line 54567
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public final A4n()V
    .locals 2

    .line 54568
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A0C:Z

    if-eqz v0, :cond_0

    .line 54569
    return-void

    .line 54570
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A0C:Z

    .line 54571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TU;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A09:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54572
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A02:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TU;->A09(J)V

    .line 54573
    return-void
.end method

.method public final A4o()V
    .locals 2

    .line 54574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A0C:Z

    .line 54575
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TU;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A09:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54576
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A03:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TU;->A09(J)V

    .line 54577
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/5q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/BidderTokenProviderApi;


# static fields
.field public static A03:[B

.field public static final A04:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/XK;

.field public A01:Ljava/lang/String;

.field public final A02:Lcom/facebook/ads/redexgen/X/LJ;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 13837
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5q;->A04()V

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5q;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 13838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13839
    new-instance v3, Lcom/facebook/ads/redexgen/X/U1;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/U1;-><init>(Lcom/facebook/ads/redexgen/X/5q;)V

    const-wide v1, 0x45d964b800L

    new-instance v0, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/LJ;-><init>(JLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A02:Lcom/facebook/ads/redexgen/X/LJ;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/95;
    .locals 4

    .line 13840
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13841
    const/4 v0, 0x3

    new-array p0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5q;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    const/4 v3, 0x1

    const/16 v2, 0x12

    const/16 v1, 0xc

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5q;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    const/4 v3, 0x2

    const/4 v2, 0x6

    const/16 v1, 0xc

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5q;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/96;->A01([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    return-object v0

    .line 13842
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/96;->A00()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5q;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 3

    .line 13843
    monitor-enter p0

    .line 13844
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 13845
    .local p0, "ctx":Lcom/facebook/ads/redexgen/X/XK;
    monitor-exit p0

    .line 13846
    if-nez v2, :cond_0

    .line 13847
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13848
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/98;->A00()Lcom/facebook/ads/redexgen/X/98;

    move-result-object v1

    const/4 v0, 0x1

    .line 13849
    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/98;->A01(Lcom/facebook/ads/redexgen/X/8D;Z)Lcom/facebook/ads/redexgen/X/97;

    move-result-object v1

    .line 13850
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/5q;->A00(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/97;->A7I(Lcom/facebook/ads/redexgen/X/95;)Ljava/lang/String;

    move-result-object v0

    .line 13851
    .local v2, "token":Ljava/lang/String;
    monitor-enter p0

    .line 13852
    :try_start_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A01:Ljava/lang/String;

    .line 13853
    monitor-exit p0

    .line 13854
    return-void

    .line 13855
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 13856
    .end local p0    # "ctx":Lcom/facebook/ads/redexgen/X/XK;
    .end local v2    # "token":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static A03()V
    .locals 2

    .line 13857
    sget-object v1, Lcom/facebook/ads/redexgen/X/5q;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13858
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5q;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x64t
        -0x57t
        -0x64t
        -0x59t
        -0x56t
        -0x5et
        0x70t
        0x67t
        0x76t
        0x79t
        0x71t
        0x74t
        0x6dt
        -0x7ft
        0x76t
        0x7bt
        0x72t
        0x67t
        0x77t
        0x69t
        0x77t
        0x77t
        0x6dt
        0x73t
        0x72t
        -0x7dt
        0x78t
        0x6dt
        0x71t
        0x69t
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/5q;)V
    .locals 0

    .line 13859
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5q;->A02()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 13860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A02:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->A05()V

    .line 13861
    return-void
.end method

.method public final declared-synchronized getBidderToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 13862
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 13863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->maybeAttachCrashListener(Landroid/content/Context;)V

    .line 13864
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xs;->A02()Lcom/facebook/ads/redexgen/X/Xs;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 13865
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xs;->A0C(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    .line 13866
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8Q;->ADw()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5q;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13867
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 13868
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A01:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 13869
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5q;->A02()V

    .line 13870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A02:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->A04()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LH;->A03()V

    .line 13871
    sget-object v1, Lcom/facebook/ads/redexgen/X/5q;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13872
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A02:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->A06()V

    .line 13873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A01:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 13874
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

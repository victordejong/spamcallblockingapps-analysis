.class public final Lcom/facebook/ads/redexgen/X/5q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/BidderTokenProviderApi;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wl;

.field public A01:Ljava/lang/String;

.field public final A02:Lcom/facebook/ads/redexgen/X/LL;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 13928
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5q;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5q;->A04()V

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5q;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 13929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13930
    new-instance v3, Lcom/facebook/ads/redexgen/X/a4;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/a4;-><init>(Lcom/facebook/ads/redexgen/X/5q;)V

    const-wide v1, 0x45d964b800L

    new-instance v0, Lcom/facebook/ads/redexgen/X/LL;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/LL;-><init>(JLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A02:Lcom/facebook/ads/redexgen/X/LL;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/95;
    .locals 4

    .line 13931
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13932
    const/4 v0, 0x3

    new-array p0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5q;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    const/4 v3, 0x1

    const/16 v2, 0x12

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5q;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    const/4 v3, 0x2

    const/4 v2, 0x6

    const/16 v1, 0xc

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5q;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/96;->A01([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    return-object v0

    .line 13933
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/96;->A00()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5q;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A04:[Ljava/lang/String;

    const-string v1, "nxgwtcREVhWb65LNNy3FUU3bPx1baIqs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_2

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x25

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A04:[Ljava/lang/String;

    const-string v1, "k1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "jI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 3

    .line 13934
    monitor-enter p0

    .line 13935
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 13936
    .local p0, "ctx":Lcom/facebook/ads/redexgen/X/Wl;
    monitor-exit p0

    .line 13937
    if-nez v2, :cond_0

    .line 13938
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13939
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/98;->A00()Lcom/facebook/ads/redexgen/X/98;

    move-result-object v1

    const/4 v0, 0x1

    .line 13940
    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/98;->A01(Lcom/facebook/ads/redexgen/X/8D;Z)Lcom/facebook/ads/redexgen/X/97;

    move-result-object v1

    .line 13941
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/5q;->A00(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/97;->A7K(Lcom/facebook/ads/redexgen/X/95;)Ljava/lang/String;

    move-result-object v0

    .line 13942
    .local v2, "token":Ljava/lang/String;
    monitor-enter p0

    .line 13943
    :try_start_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A01:Ljava/lang/String;

    .line 13944
    monitor-exit p0

    .line 13945
    return-void

    .line 13946
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 13947
    .end local p0    # "ctx":Lcom/facebook/ads/redexgen/X/Wl;
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

    .line 13948
    sget-object v1, Lcom/facebook/ads/redexgen/X/5q;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13949
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
        0x3t
        0xct
        0x3t
        0xet
        0xdt
        0x5t
        0x65t
        0x6et
        0x7ft
        0x7ct
        0x64t
        0x79t
        0x60t
        0x74t
        0x7ft
        0x72t
        0x7bt
        0x6et
        0xet
        0x18t
        0xet
        0xet
        0x14t
        0x12t
        0x13t
        0x2t
        0x9t
        0x14t
        0x10t
        0x18t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4B"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "I48PAJ0y61swde9c5qk7aAbIIfWH1Byn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BSSIV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rma9ingRacN5DAytCxo1o2WgbOJyH1yt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LMKYbcnmuPSgqVj7QGrZVztC852oBTH6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oxbGCKhi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LKx8wfe4EtYjMAwb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5q;->A04:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/5q;)V
    .locals 0

    .line 13950
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5q;->A02()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 13951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A02:Lcom/facebook/ads/redexgen/X/LL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LL;->A06()V

    .line 13952
    return-void
.end method

.method public final declared-synchronized getBidderToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 13953
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 13954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->maybeAttachCrashListener(Landroid/content/Context;)V

    .line 13955
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A02()Lcom/facebook/ads/redexgen/X/WN;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 13956
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0C(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    .line 13957
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8Q;->ADx()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5q;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13958
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 13959
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1E(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A01:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 13960
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5q;->A02()V

    .line 13961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A02:Lcom/facebook/ads/redexgen/X/LL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LL;->A05()Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->A04()V

    .line 13962
    sget-object v1, Lcom/facebook/ads/redexgen/X/5q;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13963
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A02:Lcom/facebook/ads/redexgen/X/LL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LL;->A07()V

    .line 13964
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5q;->A01:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A04:[Ljava/lang/String;

    const-string v1, "vv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "7x"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    .line 13965
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/7D;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/79;,
        Lcom/facebook/ads/redexgen/X/78;,
        Lcom/facebook/ads/redexgen/X/7B;,
        Lcom/facebook/ads/redexgen/X/7C;,
        Lcom/facebook/ads/redexgen/X/7A;,
        Lcom/facebook/ads/redexgen/X/76;,
        Lcom/facebook/ads/internal/cache/AdCacheManager$CacheFileExtension;
    }
.end annotation


# static fields
.field public static A0A:Lcom/facebook/ads/redexgen/X/00;

.field public static A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;

.field public static final A0F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/06;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/JK;

.field public final A02:Landroid/os/Handler;

.field public final A03:Lcom/facebook/ads/redexgen/X/7E;

.field public final A04:Lcom/facebook/ads/redexgen/X/8D;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 16178
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7D;->A0F()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7D;->A0E()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0E:Ljava/lang/String;

    .line 16179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16180
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0F:Ljava/util/Map;

    .line 16181
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 2

    .line 16182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16184
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A07:Ljava/util/Map;

    .line 16185
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    .line 16186
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A02:Landroid/os/Handler;

    .line 16187
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A06(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/7E;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A03:Lcom/facebook/ads/redexgen/X/7E;

    .line 16188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A05:Ljava/util/List;

    .line 16189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A06:Ljava/util/List;

    .line 16190
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A1j(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A08:Z

    .line 16191
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pt;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/J4;->A1q(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A09:Z

    .line 16192
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7D;)J
    .locals 1

    .line 16193
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7D;)Landroid/os/Handler;
    .locals 0

    .line 16194
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7D;->A02:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/00;
    .locals 0

    .line 16195
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7D;->A03(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized A03(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/00;
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/7D;

    monitor-enter v2

    .line 16196
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0A:Lcom/facebook/ads/redexgen/X/00;

    if-nez v0, :cond_0

    .line 16197
    new-instance v1, Lcom/facebook/ads/redexgen/X/07;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/07;-><init>()V

    .line 16198
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A04(Landroid/content/Context;)I

    move-result v0

    .line 16199
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A00(I)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    .line 16200
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A03()Lcom/facebook/ads/redexgen/X/8H;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8H;->A7z()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A02(Z)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    const/4 v0, -0x1

    .line 16201
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A01(I)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    .line 16202
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0k(Landroid/content/Context;)Z

    move-result v0

    .line 16203
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A03(Z)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    .line 16204
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A1p(Landroid/content/Context;)Z

    move-result v0

    .line 16205
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A04(Z)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v0

    .line 16206
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/07;->A05()Lcom/facebook/ads/redexgen/X/08;

    move-result-object v1

    .line 16207
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7D;->A05(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/0L;

    move-result-object v0

    .line 16208
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/01;->A00(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/08;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0A:Lcom/facebook/ads/redexgen/X/00;

    .line 16209
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0A:Lcom/facebook/ads/redexgen/X/00;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 16210
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;
    .locals 2

    .line 16211
    sget-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/06;

    .line 16212
    .local p0, "storedCacheData":Lcom/facebook/ads/redexgen/X/06;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7G;->A07(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 16213
    new-instance v0, Lcom/facebook/ads/redexgen/X/06;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/06;-><init>(Lcom/facebook/ads/redexgen/X/06;)V

    .line 16214
    :goto_0
    return-object v0

    .line 16215
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/06;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/06;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/0L;
    .locals 1

    .line 16216
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wp;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/7E;
    .locals 0

    .line 16217
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7D;->A03:Lcom/facebook/ads/redexgen/X/7E;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;
    .locals 0

    .line 16218
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    return-object p0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7D;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static declared-synchronized A09(Lcom/facebook/ads/redexgen/X/8D;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/facebook/ads/redexgen/X/7D;

    monitor-enter v1

    .line 16219
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0B:Ljava/util/List;

    if-nez v0, :cond_0

    .line 16220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0B:Ljava/util/List;

    .line 16221
    sget-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0B:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/7D;->A0I(Ljava/util/List;Lcom/facebook/ads/redexgen/X/8D;)V

    .line 16222
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0B:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16223
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic A0A()Ljava/util/Map;
    .locals 1

    .line 16224
    sget-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0F:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/7D;)Ljava/util/Map;
    .locals 0

    .line 16225
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7D;->A07:Ljava/util/Map;

    return-object p0
.end method

.method public static A0C(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/util/concurrent/atomic/AtomicBoolean;"
        }
    .end annotation

    .line 16226
    .local v0, "downloaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 16227
    .local p0, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 16228
    .local v3, "downloader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lo;->A02()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16229
    .end local v3    # "downloader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 16230
    :cond_0
    const/4 v0, 0x1

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16231
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 16232
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 16233
    .local v1, "partialResult":Ljava/lang/Boolean;
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16234
    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    .line 16235
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/7D;->A0E:Ljava/lang/String;

    const/16 v2, 0x56

    const/16 v1, 0x2a

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16236
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16237
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object p0
.end method

.method public static synthetic A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 16238
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7D;->A0C(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0xbe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7D;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        0x7bt
        0x70t
        0x7ft
        0x7ft
        0x29t
        0x7dt
        0x7bt
        0x5dt
        0x59t
        0x5ft
        0x5bt
        0x58t
        0xct
        0x8t
        0xct
        0x20t
        0x73t
        0x21t
        0x26t
        0x24t
        0x25t
        0x20t
        0x2ft
        0xbt
        0x29t
        0x2bt
        0x20t
        0x2dt
        0x68t
        0x3bt
        0x3ct
        0x29t
        0x3at
        0x3ct
        0x2dt
        0x2ct
        0x66t
        0x64t
        0x46t
        0x44t
        0x4ft
        0x4et
        0x49t
        0x40t
        0x7t
        0x44t
        0x48t
        0x4at
        0x57t
        0x4bt
        0x42t
        0x53t
        0x42t
        0x3ft
        0x1dt
        0x1ft
        0x14t
        0x15t
        0x12t
        0x1bt
        0x5ct
        0x1at
        0x1dt
        0x15t
        0x10t
        0x19t
        0x18t
        0x45t
        0x67t
        0x65t
        0x6et
        0x6ft
        0x68t
        0x61t
        0x26t
        0x75t
        0x72t
        0x67t
        0x74t
        0x72t
        0x63t
        0x62t
        0x28t
        0x28t
        0x28t
        0x67t
        0x5at
        0x41t
        0x47t
        0x52t
        0x56t
        0x4bt
        0x4dt
        0x4ct
        0x2t
        0x55t
        0x4at
        0x4bt
        0x4et
        0x47t
        0x2t
        0x47t
        0x5at
        0x47t
        0x41t
        0x57t
        0x56t
        0x4bt
        0x4ct
        0x45t
        0x2t
        0x41t
        0x43t
        0x41t
        0x4at
        0x47t
        0x2t
        0x46t
        0x4dt
        0x55t
        0x4ct
        0x4et
        0x4dt
        0x43t
        0x46t
        0x51t
        0xct
        0x42t
        0x40t
        0x42t
        0x49t
        0x44t
        0x62t
        0x4et
        0x4ct
        0x51t
        0x4dt
        0x44t
        0x55t
        0x48t
        0x4et
        0x4ft
        0x69t
        0x4et
        0x4et
        0x4at
        0x6ft
        0x6dt
        0x6ft
        0x64t
        0x69t
        0x4at
        0x6dt
        0x65t
        0x60t
        0x79t
        0x7et
        0x69t
        0x44t
        0x63t
        0x63t
        0x67t
        0x68t
        0x75t
        0x68t
        0x6et
        0x78t
        0x79t
        0x68t
        0x65t
        0x66t
        0x68t
        0x6dt
        0x77t
        0x74t
        0x7at
        0x7ft
        0x44t
        0x6ft
        0x72t
        0x76t
        0x7et
        0x44t
        0x76t
        0x68t
        0x59t
        0x42t
        0x45t
        0x5dt
    .end array-data
.end method

.method public static A0F()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9sbbD15"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Lu4K49mlxrSXSmjNh7fbv8QTyeXNNeG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dxmg93Ac1Ci0DpKcQcYnCSB5QhHSt8Hl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k6rgF4fsXLHTj2vl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7FEQyJVT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NWpMXisSbHx8hQWP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4pbn9SiXGJE3zFdxdKEeQNSdsbhvbmq3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7D;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/JJ;)V
    .locals 0

    .line 16239
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7D;->A0H(Lcom/facebook/ads/redexgen/X/JJ;)V

    return-void
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/JJ;)V
    .locals 5

    .line 16240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A01:Lcom/facebook/ads/redexgen/X/JK;

    if-nez v0, :cond_0

    .line 16241
    return-void

    .line 16242
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 16243
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A04(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xae

    const/16 v1, 0xc

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A01:Lcom/facebook/ads/redexgen/X/JK;

    invoke-virtual {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 16245
    return-void
.end method

.method public static A0I(Ljava/util/List;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/8D;",
            ")V"
        }
    .end annotation

    .line 16246
    .local p1, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cX;->A01(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0J(Ljava/util/List;Ljava/io/File;)V

    .line 16247
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7E;->A07(Lcom/facebook/ads/redexgen/X/8D;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0J(Ljava/util/List;Ljava/io/File;)V

    .line 16248
    return-void
.end method

.method public static A0J(Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 16249
    .local v4, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 16250
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 16251
    .local p0, "path":Ljava/lang/String;
    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v0

    if-eq v4, v0, :cond_0

    .line 16252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7D;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/7D;->A0D:[Ljava/lang/String;

    const-string v1, "BAOa9xP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16253
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/7D;)Z
    .locals 0

    .line 16254
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/7D;->A08:Z

    return p0
.end method


# virtual methods
.method public final A0L(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A07:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final A0M(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16256
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A08:Z

    move v7, p3

    move v6, p2

    move-object v5, p1

    if-eqz v0, :cond_0

    .line 16257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/7D;->A04(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;

    move-result-object v3

    .line 16258
    .local p0, "cacheFileData":Lcom/facebook/ads/redexgen/X/06;
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/06;->A03:Ljava/lang/String;

    .line 16259
    iput v7, v3, Lcom/facebook/ads/redexgen/X/06;->A01:I

    .line 16260
    iput v6, v3, Lcom/facebook/ads/redexgen/X/06;->A00:I

    .line 16261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A03(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v1

    const/4 v0, 0x1

    .line 16262
    invoke-interface {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/00;->ADJ(Lcom/facebook/ads/redexgen/X/06;Z)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    .line 16263
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 16264
    return-object v0

    .line 16265
    .end local p0    # "cacheFileData":Lcom/facebook/ads/redexgen/X/06;
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7D;->A03:Lcom/facebook/ads/redexgen/X/7E;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    const/16 v2, 0xaa

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7E;->A0F(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0N(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/7D;->A04(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;

    move-result-object v3

    .line 16267
    .local p0, "storedCacheFileData":Lcom/facebook/ads/redexgen/X/06;
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/06;->A03:Ljava/lang/String;

    .line 16268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A03(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    .line 16269
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/00;->ADK(Lcom/facebook/ads/redexgen/X/06;)Ljava/io/File;

    move-result-object v0

    .line 16270
    return-object v0
.end method

.method public final A0O(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16271
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A08:Z

    if-eqz v0, :cond_0

    .line 16272
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7D;->A0N(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 16273
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A03:Lcom/facebook/ads/redexgen/X/7E;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7E;->A0G(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final A0P(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16274
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A08:Z

    if-eqz v0, :cond_0

    .line 16275
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7D;->A0Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16276
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A03:Lcom/facebook/ads/redexgen/X/7E;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7E;->A0H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 16277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/7D;->A04(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;

    move-result-object v3

    .line 16278
    .local p0, "storedCacheFileData":Lcom/facebook/ads/redexgen/X/06;
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/06;->A03:Ljava/lang/String;

    .line 16279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    .line 16280
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A03(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    .line 16281
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/00;->ADM(Lcom/facebook/ads/redexgen/X/06;)Ljava/lang/String;

    move-result-object v0

    .line 16282
    .local p1, "cachedUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public final A0R(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16283
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A09:Z

    if-eqz v0, :cond_0

    .line 16284
    return-object p1

    .line 16285
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7D;->A0Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0S()V
    .locals 5

    const/16 v2, 0x80

    const/16 v1, 0x13

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x26

    const/16 v1, 0x10

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16286
    return-void
.end method

.method public final A0T()V
    .locals 5

    const/16 v2, 0x93

    const/16 v1, 0x10

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x36

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16287
    return-void
.end method

.method public final A0U()V
    .locals 1

    .line 16288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A07:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16289
    return-void
.end method

.method public final A0V(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V
    .locals 10
    .param p1    # Lcom/facebook/ads/redexgen/X/75;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v2, 0xa3

    const/4 v1, 0x7

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x44

    const/16 v1, 0x12

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:J

    .line 16291
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7D;->A04:Lcom/facebook/ads/redexgen/X/8D;

    sget v6, Lcom/facebook/ads/redexgen/X/7G;->A07:I

    const/16 v2, 0x18

    const/16 v1, 0xe

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A08(III)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    move-object v5, p2

    move-object v5, v5

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7G;->A03(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/76;ILjava/lang/String;J)V

    .line 16292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A05:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16293
    .local v5, "mandatoryDownloadersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A06:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16294
    .local v0, "optionalDownloadersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lo;->A03()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Wq;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Wq;-><init>(Lcom/facebook/ads/redexgen/X/7D;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;Ljava/util/ArrayList;)V

    .line 16295
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 16296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16298
    return-void
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/7A;)V
    .locals 2

    .line 16299
    new-instance v1, Lcom/facebook/ads/redexgen/X/7B;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/7B;-><init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7A;)V

    .line 16300
    .local p0, "imageDownloaderCallable":Lcom/facebook/ads/redexgen/X/7B;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/7A;->A02:Z

    if-nez v0, :cond_0

    .line 16301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A05:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16302
    :goto_0
    return-void

    .line 16303
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/7A;)V
    .locals 1

    .line 16304
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/7A;->A02:Z

    .line 16305
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7D;->A0W(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 16306
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 2

    .line 16307
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7D;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/79;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/79;-><init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16308
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 2

    .line 16309
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/7C;->A05:Z

    .line 16310
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7D;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/79;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/79;-><init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16311
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 2

    .line 16312
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/7C;->A05:Z

    .line 16313
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A09:Z

    if-eqz v0, :cond_0

    .line 16314
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7D;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/78;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/78;-><init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16315
    :goto_0
    return-void

    .line 16316
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7D;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/79;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/79;-><init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 2

    .line 16317
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A09:Z

    if-eqz v0, :cond_0

    .line 16318
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7D;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/78;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/78;-><init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16319
    :goto_0
    return-void

    .line 16320
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7D;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/79;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/79;-><init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/JK;)V
    .locals 0

    .line 16321
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7D;->A01:Lcom/facebook/ads/redexgen/X/JK;

    .line 16322
    return-void
.end method

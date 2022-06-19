.class public final Lcom/facebook/ads/redexgen/X/6B;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6A;,
        Lcom/facebook/ads/redexgen/X/69;
    }
.end annotation


# static fields
.field public static A07:Lcom/facebook/ads/redexgen/X/6B;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6A;

.field public A01:Lcom/facebook/ads/redexgen/X/6K;

.field public A02:Lcom/facebook/ads/redexgen/X/6L;

.field public A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6O;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Landroid/content/Context;

.field public final A05:Lcom/facebook/ads/redexgen/X/5v;

.field public final A06:Lcom/facebook/ads/redexgen/X/6i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 14291
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6B;->A02()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6B;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5v;Landroid/content/Context;)V
    .locals 2

    .line 14292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14293
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6B;->A05:Lcom/facebook/ads/redexgen/X/5v;

    .line 14294
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A00()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A04()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6A;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/6A;-><init>(Lcom/facebook/ads/redexgen/X/6B;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6A;

    .line 14295
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6B;->A04:Landroid/content/Context;

    .line 14296
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5v;->A0a()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A06:Lcom/facebook/ads/redexgen/X/6i;

    .line 14297
    return-void
.end method

.method public static declared-synchronized A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)Lcom/facebook/ads/redexgen/X/6B;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/6B;

    monitor-enter v1

    .line 14298
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6B;->A07:Lcom/facebook/ads/redexgen/X/6B;

    if-nez v0, :cond_0

    .line 14299
    new-instance v0, Lcom/facebook/ads/redexgen/X/6B;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/6B;-><init>(Lcom/facebook/ads/redexgen/X/5v;Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6B;->A07:Lcom/facebook/ads/redexgen/X/6B;

    .line 14300
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6B;->A07:Lcom/facebook/ads/redexgen/X/6B;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14301
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6B;)Lcom/facebook/ads/redexgen/X/6L;
    .locals 0

    .line 14302
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6B;->A02:Lcom/facebook/ads/redexgen/X/6L;

    return-object p0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lhELmGRUtbYPcwJFNCjn5HfCntRtzqQU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Mt1hbHTlPicMeG4rtX3JBcBhsjGdj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WXTUL6dhKmyeG13MmR9X1nSF3ta0T4v7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pnvqG2PyjZWupJIeMnGxGNF5M9wfPV2M"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tVIu8wQwIUzvrLJUsX9QEkuDOevngDVu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qDTAVfu3jvCTQwnOSiE3SjcB7mVx4hBM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "klm6aBATY902pfwdRKxrpHOkJcym9ne5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "D4wxrsR0ab6WquJuKpvZlDWLQMdeNXqb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6B;->A08:[Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized A03()V
    .locals 3

    monitor-enter p0

    .line 14303
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/6B;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14305
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6B;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6B;->A08:[Ljava/lang/String;

    const-string v1, "OJ9tJzFQNQxQ8qaEQfi4ar7y8Z5YVilt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "oKX4c494QlidqOlhH9QFYLNn1ihcq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 14306
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A04()V
    .locals 2

    monitor-enter p0

    .line 14307
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A01:Lcom/facebook/ads/redexgen/X/6K;

    if-eqz v0, :cond_0

    .line 14308
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A01:Lcom/facebook/ads/redexgen/X/6K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6K;->A04(Ljava/util/List;)V

    .line 14309
    .end local v1
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6B;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14310
    monitor-exit p0

    return-void

    .line 14311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A05(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/6b;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/6f;",
            ")V"
        }
    .end annotation

    .local v1, "biometricSignals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    monitor-enter p0

    .line 14312
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6B;->A03()V

    .line 14313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A05:Lcom/facebook/ads/redexgen/X/5v;

    new-instance v3, Lcom/facebook/ads/redexgen/X/6F;

    invoke-direct {v3, v0, p1}, Lcom/facebook/ads/redexgen/X/6F;-><init>(Lcom/facebook/ads/redexgen/X/5v;Ljava/util/Map;)V

    .line 14314
    .local p0, "biometricSignalValueHandler":Lcom/facebook/ads/redexgen/X/6F;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 14315
    .local p1, "biometricSignalSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 14316
    .local p2, "biometricSignalIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14317
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14318
    .local v0, "biometricSignalEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14319
    .local v3, "bdSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/6b;->A04(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 14320
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v0, 0x2a30

    if-eq v1, v0, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 14321
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A0D:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14322
    .end local v1    # "biometricSignals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A05:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14323
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A06:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14324
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A09:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14325
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A0E:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14326
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A0C:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14327
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A0B:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14328
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A07:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14329
    :pswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A0A:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14330
    :pswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A08:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14331
    :pswitch_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A04:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14332
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6B;->A04:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A06:Lcom/facebook/ads/redexgen/X/6i;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6L;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/6L;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6F;Lcom/facebook/ads/redexgen/X/6i;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A02:Lcom/facebook/ads/redexgen/X/6L;

    .line 14333
    sget-object v1, Lcom/facebook/ads/redexgen/X/6B;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 14334
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6B;->A04:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A06:Lcom/facebook/ads/redexgen/X/6i;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6K;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6F;Lcom/facebook/ads/redexgen/X/6i;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A01:Lcom/facebook/ads/redexgen/X/6K;

    .line 14335
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A01:Lcom/facebook/ads/redexgen/X/6K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6K;->A03(Ljava/util/List;)V

    .line 14336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6A;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14337
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A00()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A04()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6A;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/6A;-><init>(Lcom/facebook/ads/redexgen/X/6B;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6A;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14338
    :cond_4
    monitor-exit p0

    return-void

    .line 14339
    .end local p0    # "biometricSignalValueHandler":Lcom/facebook/ads/redexgen/X/6F;
    .end local p1    # "biometricSignalSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;>;"
    .end local p2    # "biometricSignalIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;>;"
    .end local v1
    .end local v0    # "biometricSignalEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2a3a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized A06(Landroid/view/MotionEvent;)Z
    .locals 2

    monitor-enter p0

    .line 14340
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6B;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14341
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 14342
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 14343
    .local p0, "msg":Landroid/os/Message;
    sget-object v0, Lcom/facebook/ads/redexgen/X/69;->A03:Lcom/facebook/ads/redexgen/X/69;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/69;->ordinal()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 14344
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6A;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6A;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14346
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 14347
    .end local p0    # "msg":Landroid/os/Message;
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

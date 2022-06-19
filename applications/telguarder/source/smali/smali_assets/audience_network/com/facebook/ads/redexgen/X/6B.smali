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
    .annotation build Landroidx/annotation/Nullable;
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

    .line 14382
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6B;->A02()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6B;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5v;Landroid/content/Context;)V
    .locals 2

    .line 14383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14384
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6B;->A05:Lcom/facebook/ads/redexgen/X/5v;

    .line 14385
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A00()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A04()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6A;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/6A;-><init>(Lcom/facebook/ads/redexgen/X/6B;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6A;

    .line 14386
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6B;->A04:Landroid/content/Context;

    .line 14387
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5v;->A0b()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A06:Lcom/facebook/ads/redexgen/X/6i;

    .line 14388
    return-void
.end method

.method public static declared-synchronized A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)Lcom/facebook/ads/redexgen/X/6B;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/6B;

    monitor-enter v1

    .line 14389
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6B;->A07:Lcom/facebook/ads/redexgen/X/6B;

    if-nez v0, :cond_0

    .line 14390
    new-instance v0, Lcom/facebook/ads/redexgen/X/6B;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/6B;-><init>(Lcom/facebook/ads/redexgen/X/5v;Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6B;->A07:Lcom/facebook/ads/redexgen/X/6B;

    .line 14391
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6B;->A07:Lcom/facebook/ads/redexgen/X/6B;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14392
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6B;)Lcom/facebook/ads/redexgen/X/6L;
    .locals 0

    .line 14393
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6B;->A02:Lcom/facebook/ads/redexgen/X/6L;

    return-object p0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2ypK25qkhJNfeeeFSr4y0Jg8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jqpeEEzK4KviYB2oN3YGF0KSbKpWL6FI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1Mb2uJzwXyjtlgcynBIYNigzyJqt8xua"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0mh9InmOtDVXpb8pVsACzI3iYr96yBux"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MPldksR5eSY5IoI7OnTLL4FgQlR1z7my"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "P7tM7b20B588xjLO64mm0EGV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HyEnRqZCKrH48igPv4vtDl4g"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rBFOdvGFZ1ADF9V85ifRBYeyoFHGkeTH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6B;->A08:[Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized A03()V
    .locals 2

    monitor-enter p0

    .line 14394
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/6B;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14396
    monitor-exit p0

    return-void

    .line 14397
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A04()V
    .locals 3

    monitor-enter p0

    .line 14398
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A01:Lcom/facebook/ads/redexgen/X/6K;

    if-eqz v0, :cond_0

    .line 14399
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A01:Lcom/facebook/ads/redexgen/X/6K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6K;->A04(Ljava/util/List;)V

    .line 14400
    .end local v1
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6B;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14401
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6B;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6B;->A08:[Ljava/lang/String;

    const-string v1, "1Pa6nSym3CryX8BM747iN1ZPfEtIaWNi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    .line 14402
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

    .line 14403
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6B;->A03()V

    .line 14404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A05:Lcom/facebook/ads/redexgen/X/5v;

    new-instance v3, Lcom/facebook/ads/redexgen/X/6F;

    invoke-direct {v3, v0, p1}, Lcom/facebook/ads/redexgen/X/6F;-><init>(Lcom/facebook/ads/redexgen/X/5v;Ljava/util/Map;)V

    .line 14405
    .local p0, "biometricSignalValueHandler":Lcom/facebook/ads/redexgen/X/6F;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 14406
    .local p1, "biometricSignalSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 14407
    .local p2, "biometricSignalIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14408
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14409
    .local v0, "biometricSignalEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6b;

    .line 14410
    .local v3, "bdSignal":Lcom/facebook/ads/redexgen/X/6b;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/6b;->A05(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 14411
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

    .line 14412
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A0C:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14413
    .end local v1    # "biometricSignals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A04:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14414
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A05:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14415
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A08:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14416
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A0D:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14417
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A0B:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14418
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A0A:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14419
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A06:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14420
    :pswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A09:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14421
    :pswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A07:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14422
    :pswitch_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6O;->A03:Lcom/facebook/ads/redexgen/X/6O;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14423
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6B;->A04:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A06:Lcom/facebook/ads/redexgen/X/6i;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6L;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/6L;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6F;Lcom/facebook/ads/redexgen/X/6i;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A02:Lcom/facebook/ads/redexgen/X/6L;

    .line 14424
    sget-object v1, Lcom/facebook/ads/redexgen/X/6B;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 14425
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6B;->A04:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A06:Lcom/facebook/ads/redexgen/X/6i;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6K;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6F;Lcom/facebook/ads/redexgen/X/6i;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A01:Lcom/facebook/ads/redexgen/X/6K;

    .line 14426
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A01:Lcom/facebook/ads/redexgen/X/6K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A03:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6K;->A03(Ljava/util/List;)V

    .line 14427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6A;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14428
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

    .line 14429
    :cond_4
    monitor-exit p0

    return-void

    .line 14430
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
    .locals 4

    monitor-enter p0

    .line 14431
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6B;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14432
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6B;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

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

    const-string v1, "5ZGkAfzwGBjGDxMiXOtnaNhrO5tJjBRy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "7kvMs8zicUDMvsGn6evc3Ofqd1vgB5rV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    monitor-exit p0

    return v3

    .line 14433
    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 14434
    .local p0, "msg":Landroid/os/Message;
    sget-object v0, Lcom/facebook/ads/redexgen/X/69;->A02:Lcom/facebook/ads/redexgen/X/69;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/69;->ordinal()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 14435
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6A;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6A;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14437
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 14438
    .end local p0    # "msg":Landroid/os/Message;
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

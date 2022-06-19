.class public final Lcom/facebook/ads/redexgen/X/Zw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5z;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6f;

.field public A01:Lcom/facebook/ads/redexgen/X/73;

.field public A02:Lcom/facebook/ads/redexgen/X/74;

.field public final A03:Lcom/facebook/ads/redexgen/X/5v;

.field public final A04:Lcom/facebook/ads/redexgen/X/6Q;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zw;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5v;Lcom/facebook/ads/redexgen/X/6Q;)V
    .locals 1

    .line 66548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66549
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66550
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zw;->A03:Lcom/facebook/ads/redexgen/X/5v;

    .line 66551
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zw;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    .line 66552
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Zw;)Lcom/facebook/ads/redexgen/X/5v;
    .locals 0

    .line 66553
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A03:Lcom/facebook/ads/redexgen/X/5v;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Zw;)Lcom/facebook/ads/redexgen/X/6Q;
    .locals 0

    .line 66554
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Zw;)Lcom/facebook/ads/redexgen/X/73;
    .locals 0

    .line 66555
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A01:Lcom/facebook/ads/redexgen/X/73;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Zw;)Lcom/facebook/ads/redexgen/X/74;
    .locals 0

    .line 66556
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A02:Lcom/facebook/ads/redexgen/X/74;

    return-object p0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3M002WVGPtTwbiFDoQ3khu2uIKJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KAJyQ5EDnKzc6rsBBMkJK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZlIh5oGSJUMDOJTsoy66gdyI6qvK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SHlse6Lwq4c"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1AWDuA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YN0mffabB5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "J6XFZcInbJTbqmJr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7FXqS99"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zw;->A06:[Ljava/lang/String;

    return-void
.end method

.method private final declared-synchronized A05()V
    .locals 3

    monitor-enter p0

    .line 66557
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A02:Lcom/facebook/ads/redexgen/X/74;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66558
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zw;->A01:Lcom/facebook/ads/redexgen/X/73;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A02:Lcom/facebook/ads/redexgen/X/74;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/73;->A01(Lcom/facebook/ads/redexgen/X/74;)V

    .line 66559
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A00()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A05()V

    .line 66560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A02()V

    .line 66561
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zw;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66562
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 66563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A06(Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 3

    monitor-enter p0

    .line 66564
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66565
    :cond_0
    monitor-exit p0

    return-void

    .line 66566
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A03:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66567
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/72;->A0F(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66568
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A00()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A04()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/73;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/73;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A01:Lcom/facebook/ads/redexgen/X/73;

    .line 66569
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zw;->A00:Lcom/facebook/ads/redexgen/X/6f;

    .line 66570
    new-instance v1, Lcom/facebook/ads/redexgen/X/5z;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/5z;-><init>(Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/redexgen/X/6f;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/74;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/74;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A02:Lcom/facebook/ads/redexgen/X/74;

    .line 66571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A03(Lcom/facebook/ads/redexgen/X/6f;)V

    .line 66572
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zw;->A01:Lcom/facebook/ads/redexgen/X/73;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A02:Lcom/facebook/ads/redexgen/X/74;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/73;->A00(Lcom/facebook/ads/redexgen/X/74;)V

    .line 66573
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zw;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66574
    .end local v0
    :cond_2
    monitor-exit p0

    return-void

    .line 66575
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEV(Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 3

    monitor-enter p0

    .line 66576
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A00:Lcom/facebook/ads/redexgen/X/6f;

    if-ne v0, p1, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66577
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zw;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zw;->A06:[Ljava/lang/String;

    const-string v1, "UARsQR7NEuUCbamAZDbBNthOgOro"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2SB9G36"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 66578
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zw;->A00:Lcom/facebook/ads/redexgen/X/6f;

    .line 66579
    sget-object v0, Lcom/facebook/ads/redexgen/X/6f;->A05:Lcom/facebook/ads/redexgen/X/6f;

    if-ne p1, v0, :cond_2

    .line 66580
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zw;->A05()V

    goto :goto_0

    .line 66581
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/6f;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Zw;->A06(Lcom/facebook/ads/redexgen/X/6f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66582
    :goto_0
    monitor-exit p0

    return-void

    .line 66583
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

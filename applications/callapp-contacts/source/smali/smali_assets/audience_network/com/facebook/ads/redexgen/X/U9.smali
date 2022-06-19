.class public final Lcom/facebook/ads/redexgen/X/U9;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U9;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5v;Lcom/facebook/ads/redexgen/X/6Q;)V
    .locals 1

    .line 55775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55776
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55777
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U9;->A03:Lcom/facebook/ads/redexgen/X/5v;

    .line 55778
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/U9;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    .line 55779
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/U9;)Lcom/facebook/ads/redexgen/X/5v;
    .locals 0

    .line 55780
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/U9;->A03:Lcom/facebook/ads/redexgen/X/5v;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/U9;)Lcom/facebook/ads/redexgen/X/6Q;
    .locals 0

    .line 55781
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/U9;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/U9;)Lcom/facebook/ads/redexgen/X/73;
    .locals 0

    .line 55782
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/U9;->A01:Lcom/facebook/ads/redexgen/X/73;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/U9;)Lcom/facebook/ads/redexgen/X/74;
    .locals 0

    .line 55783
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/U9;->A02:Lcom/facebook/ads/redexgen/X/74;

    return-object p0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9Omy7cax2OJ4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ulOhDbnf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JfFg1yjSSK9TQh7N867q1b7oOj16BTWR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cs88erT1Nmdhof2Vlv4YHjmvLJ5hV6oE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "codoSKf0AAHHcDxXKaV5ItDp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Lc71QfpBcjqOx3z6Bpry4MoTnJ3L2Amk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bxh30V7DNH8aSp9XNgBHezc1nItbXmG0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iIuCBEGs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/U9;->A06:[Ljava/lang/String;

    return-void
.end method

.method private final declared-synchronized A05()V
    .locals 3

    monitor-enter p0

    .line 55784
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A02:Lcom/facebook/ads/redexgen/X/74;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55785
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U9;->A01:Lcom/facebook/ads/redexgen/X/73;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A02:Lcom/facebook/ads/redexgen/X/74;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/73;->A01(Lcom/facebook/ads/redexgen/X/74;)V

    .line 55786
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A00()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A05()V

    .line 55787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A02()V

    .line 55788
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/U9;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55789
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 55790
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A06(Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 3

    monitor-enter p0

    .line 55791
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55792
    :cond_0
    monitor-exit p0

    return-void

    .line 55793
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A03:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55794
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/72;->A0F(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55795
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6z;->A00()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A04()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/73;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/73;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A01:Lcom/facebook/ads/redexgen/X/73;

    .line 55796
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U9;->A00:Lcom/facebook/ads/redexgen/X/6f;

    .line 55797
    new-instance v1, Lcom/facebook/ads/redexgen/X/5z;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/5z;-><init>(Lcom/facebook/ads/redexgen/X/U9;Lcom/facebook/ads/redexgen/X/6f;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/74;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/74;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A02:Lcom/facebook/ads/redexgen/X/74;

    .line 55798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A03(Lcom/facebook/ads/redexgen/X/6f;)V

    .line 55799
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U9;->A01:Lcom/facebook/ads/redexgen/X/73;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A02:Lcom/facebook/ads/redexgen/X/74;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/73;->A00(Lcom/facebook/ads/redexgen/X/74;)V

    .line 55800
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/U9;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55801
    .end local v0
    :cond_2
    monitor-exit p0

    return-void

    .line 55802
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AET(Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 3

    monitor-enter p0

    .line 55803
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U9;->A00:Lcom/facebook/ads/redexgen/X/6f;

    if-ne v0, p1, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55804
    monitor-exit p0

    return-void

    .line 55805
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U9;->A00:Lcom/facebook/ads/redexgen/X/6f;

    .line 55806
    sget-object v0, Lcom/facebook/ads/redexgen/X/6f;->A04:Lcom/facebook/ads/redexgen/X/6f;

    if-ne p1, v0, :cond_1

    .line 55807
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/U9;->A05()V

    goto :goto_0

    .line 55808
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/6f;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/U9;->A06(Lcom/facebook/ads/redexgen/X/6f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55809
    :goto_0
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/U9;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/U9;->A06:[Ljava/lang/String;

    const-string v1, "6KXzTJPK6a3Rx51uMQDwScazunOB6mre"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    .line 55810
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

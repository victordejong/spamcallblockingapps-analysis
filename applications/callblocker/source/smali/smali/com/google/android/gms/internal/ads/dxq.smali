.class public final Lcom/google/android/gms/internal/ads/dxq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/a;

.field private final f:Lcom/google/android/gms/internal/ads/dqu;

.field private final g:Lcom/google/android/gms/internal/ads/b;

.field private final h:[Lcom/google/android/gms/internal/ads/dpv;

.field private i:Lcom/google/android/gms/internal/ads/aza;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dzo;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/eao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/dqu;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dxq;-><init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/dqu;I)V

    .line 18
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/dqu;I)V
    .locals 4

    .prologue
    .line 13
    const/4 v0, 0x4

    new-instance v1, Lcom/google/android/gms/internal/ads/dmv;

    new-instance v2, Landroid/os/Handler;

    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dmv;-><init>(Landroid/os/Handler;)V

    .line 15
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/dxq;-><init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/dqu;ILcom/google/android/gms/internal/ads/b;)V

    .line 16
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/dqu;ILcom/google/android/gms/internal/ads/b;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->j:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->k:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxq;->e:Lcom/google/android/gms/internal/ads/a;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dxq;->f:Lcom/google/android/gms/internal/ads/dqu;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dpv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->h:[Lcom/google/android/gms/internal/ads/dpv;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dxq;->g:Lcom/google/android/gms/internal/ads/b;

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/dts;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/ads/dts",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/dxq;)Lcom/google/android/gms/internal/ads/dts;

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxq;->b:Ljava/util/Set;

    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dts;->b(I)Lcom/google/android/gms/internal/ads/dts;

    .line 41
    const-string/jumbo v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dxq;->a(Lcom/google/android/gms/internal/ads/dts;I)V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 47
    :goto_0
    return-object p1

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxq;->i:Lcom/google/android/gms/internal/ads/aza;

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxq;->i:Lcom/google/android/gms/internal/ads/aza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aza;->a()V

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dxq;->h:[Lcom/google/android/gms/internal/ads/dpv;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 23
    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dpv;->a()V

    .line 25
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/aza;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dxq;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dxq;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dxq;->e:Lcom/google/android/gms/internal/ads/a;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dxq;->g:Lcom/google/android/gms/internal/ads/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/aza;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/b;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dxq;->i:Lcom/google/android/gms/internal/ads/aza;

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxq;->i:Lcom/google/android/gms/internal/ads/aza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aza;->start()V

    .line 28
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxq;->h:[Lcom/google/android/gms/internal/ads/dpv;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 29
    new-instance v1, Lcom/google/android/gms/internal/ads/dpv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dxq;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dxq;->f:Lcom/google/android/gms/internal/ads/dqu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dxq;->e:Lcom/google/android/gms/internal/ads/a;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dxq;->g:Lcom/google/android/gms/internal/ads/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dpv;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/dqu;Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/b;)V

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dxq;->h:[Lcom/google/android/gms/internal/ads/dpv;

    aput-object v1, v2, v0

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dpv;->start()V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    :cond_3
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/dts;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxq;->k:Ljava/util/List;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eao;

    .line 60
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/eao;->a(Lcom/google/android/gms/internal/ads/dts;I)V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/ads/dts;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxq;->b:Ljava/util/Set;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxq;->j:Ljava/util/List;

    monitor-enter v1

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxq;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dzo;

    .line 53
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dzo;->a(Lcom/google/android/gms/internal/ads/dts;)V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 50
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 55
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dxq;->a(Lcom/google/android/gms/internal/ads/dts;I)V

    .line 57
    return-void
.end method

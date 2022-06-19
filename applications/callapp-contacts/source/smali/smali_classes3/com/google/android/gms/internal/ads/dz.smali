.class public final Lcom/google/android/gms/internal/ads/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/dxu;

.field private final g:Lcom/google/android/gms/internal/ads/ehl;

.field private final h:Lcom/google/android/gms/internal/ads/jz;

.field private final i:[Lcom/google/android/gms/internal/ads/ekf;

.field private j:Lcom/google/android/gms/internal/ads/dzu;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/ehl;)V
    .locals 1

    const/4 v0, 0x4

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dz;-><init>(Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/ehl;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/ehl;I)V
    .locals 2

    .line 13
    new-instance p3, Lcom/google/android/gms/internal/ads/edk;

    new-instance v0, Landroid/os/Handler;

    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/edk;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x4

    .line 15
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/dz;-><init>(Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/ehl;ILcom/google/android/gms/internal/ads/jz;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/ehl;ILcom/google/android/gms/internal/ads/jz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dz;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dz;->a:Ljava/util/Set;

    .line 4
    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dz;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dz;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dz;->b:Ljava/util/List;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dz;->k:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dz;->f:Lcom/google/android/gms/internal/ads/dxu;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dz;->g:Lcom/google/android/gms/internal/ads/ehl;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/ekf;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dz;->i:[Lcom/google/android/gms/internal/ads/ekf;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dz;->h:Lcom/google/android/gms/internal/ads/jz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/z<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/z<",
            "TT;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/z;->zza(Lcom/google/android/gms/internal/ads/dz;)Lcom/google/android/gms/internal/ads/z;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Ljava/util/Set;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/z;->zze(I)Lcom/google/android/gms/internal/ads/z;

    const-string v0, "add-to-queue"

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dz;->b()V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z;->zzh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 6

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->j:Lcom/google/android/gms/internal/ads/dzu;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dzu;->a()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->i:[Lcom/google/android/gms/internal/ads/ekf;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ekf;->a()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/dzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dz;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dz;->f:Lcom/google/android/gms/internal/ads/dxu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dz;->h:Lcom/google/android/gms/internal/ads/jz;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dzu;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/jz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->j:Lcom/google/android/gms/internal/ads/dzu;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dzu;->start()V

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->i:[Lcom/google/android/gms/internal/ads/ekf;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/ekf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dz;->g:Lcom/google/android/gms/internal/ads/ehl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dz;->f:Lcom/google/android/gms/internal/ads/dxu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dz;->h:Lcom/google/android/gms/internal/ads/jz;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/ekf;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/ehl;Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/jz;)V

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->i:[Lcom/google/android/gms/internal/ads/ekf;

    aput-object v0, v1, v2

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ekf;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->k:Ljava/util/List;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

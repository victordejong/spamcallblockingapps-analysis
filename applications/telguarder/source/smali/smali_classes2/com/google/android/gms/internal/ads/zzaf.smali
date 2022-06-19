.class public final Lcom/google/android/gms/internal/ads/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzai:Lcom/google/android/gms/internal/ads/zzu;

.field private final zzbi:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzbj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzbk:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzbl:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzbm:[Lcom/google/android/gms/internal/ads/zzx;

.field private zzbn:Lcom/google/android/gms/internal/ads/zzm;

.field private final zzbo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzah;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzae;",
            ">;"
        }
    .end annotation
.end field

.field private final zzn:Lcom/google/android/gms/internal/ads/zzk;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzu;)V
    .locals 1

    const/4 v0, 0x4

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaf;-><init>(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzu;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzu;I)V
    .locals 2

    .line 13
    new-instance p3, Lcom/google/android/gms/internal/ads/zzq;

    new-instance v0, Landroid/os/Handler;

    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzq;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x4

    .line 15
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzaf;-><init>(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzu;ILcom/google/android/gms/internal/ads/zzal;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzu;ILcom/google/android/gms/internal/ads/zzal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbj:Ljava/util/Set;

    .line 4
    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbk:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbl:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbo:Ljava/util/List;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbp:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzn:Lcom/google/android/gms/internal/ads/zzk;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzai:Lcom/google/android/gms/internal/ads/zzu;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzx;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbm:[Lcom/google/android/gms/internal/ads/zzx;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzo:Lcom/google/android/gms/internal/ads/zzal;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 6

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbn:Lcom/google/android/gms/internal/ads/zzm;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzm;->quit()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbm:[Lcom/google/android/gms/internal/ads/zzx;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzx;->quit()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbk:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbl:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzn:Lcom/google/android/gms/internal/ads/zzk;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzo:Lcom/google/android/gms/internal/ads/zzal;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzm;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzal;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbn:Lcom/google/android/gms/internal/ads/zzm;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzm;->start()V

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbm:[Lcom/google/android/gms/internal/ads/zzx;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbl:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzai:Lcom/google/android/gms/internal/ads/zzu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzn:Lcom/google/android/gms/internal/ads/zzk;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzo:Lcom/google/android/gms/internal/ads/zzal;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzx;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzal;)V

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbm:[Lcom/google/android/gms/internal/ads/zzx;

    aput-object v0, v1, v2

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzab;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;I)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbp:Ljava/util/List;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzae;

    .line 62
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzae;->zza(Lcom/google/android/gms/internal/ads/zzab;I)V

    goto :goto_0

    .line 64
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "TT;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzab;->zza(Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzab;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbj:Ljava/util/Set;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbj:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzab;->zze(I)Lcom/google/android/gms/internal/ads/zzab;

    const-string v0, "add-to-queue"

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaf;->zzb(Lcom/google/android/gms/internal/ads/zzab;I)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzab;->zzh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbl:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbk:Ljava/util/concurrent/PriorityBlockingQueue;

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

.method final zze(Lcom/google/android/gms/internal/ads/zzab;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbj:Ljava/util/Set;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbj:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbo:Ljava/util/List;

    monitor-enter v1

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->zzbo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzah;

    .line 55
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzah;->zzf(Lcom/google/android/gms/internal/ads/zzab;)V

    goto :goto_0

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaf;->zzb(Lcom/google/android/gms/internal/ads/zzab;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 57
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 52
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

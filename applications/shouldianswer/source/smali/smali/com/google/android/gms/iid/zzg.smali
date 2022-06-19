.class final Lcom/google/android/gms/iid/zzg;
.super Ljava/lang/Object;


# instance fields
.field final intent:Landroid/content/Intent;

.field private final zzbi:Landroid/content/BroadcastReceiver$PendingResult;

.field private zzbj:Z

.field private final zzbk:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/iid/zzg;->zzbj:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/iid/zzg;->intent:Landroid/content/Intent;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/iid/zzg;->zzbi:Landroid/content/BroadcastReceiver$PendingResult;

    .line 5
    new-instance p2, Lcom/google/android/gms/iid/zzh;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/iid/zzh;-><init>(Lcom/google/android/gms/iid/zzg;Landroid/content/Intent;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x251c

    .line 6
    invoke-interface {p3, p2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/iid/zzg;->zzbk:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method final declared-synchronized finish()V
    .locals 2

    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/iid/zzg;->zzbj:Z

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/iid/zzg;->zzbi:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/iid/zzg;->zzbk:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/iid/zzg;->zzbj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

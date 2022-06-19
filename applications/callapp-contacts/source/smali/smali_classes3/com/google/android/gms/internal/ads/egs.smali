.class final Lcom/google/android/gms/internal/ads/egs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/egn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/egn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/egs;->a:Lcom/google/android/gms/internal/ads/egn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egs;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 1074
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egs;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 1075
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egs;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 2075
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/egu;->a()Lcom/google/android/gms/internal/ads/egy;

    move-result-object v2

    .line 2076
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/egn;->d:Lcom/google/android/gms/internal/ads/egy;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Unable to obtain a cache service instance."

    .line 7
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egs;->a:Lcom/google/android/gms/internal/ads/egn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/egn;->a(Lcom/google/android/gms/internal/ads/egn;)V

    .line 9
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egs;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 3074
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(I)V
    .locals 2

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/egs;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 4074
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egs;->a:Lcom/google/android/gms/internal/ads/egn;

    const/4 v1, 0x0

    .line 4076
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/egn;->d:Lcom/google/android/gms/internal/ads/egy;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egs;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 5074
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

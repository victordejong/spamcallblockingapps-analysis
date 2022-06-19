.class final Lcom/google/android/gms/internal/ads/wl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/yl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final J0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yl;->a(Lcom/google/android/gms/internal/ads/yl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl;->b(Lcom/google/android/gms/internal/ads/yl;)Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl;->b(Lcom/google/android/gms/internal/ads/yl;)Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/am;->j0()Lcom/google/android/gms/internal/ads/cm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yl;->k(Lcom/google/android/gms/internal/ads/yl;Lcom/google/android/gms/internal/ads/cm;)Lcom/google/android/gms/internal/ads/cm;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wl;->a:Lcom/google/android/gms/internal/ads/yl;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl;->j(Lcom/google/android/gms/internal/ads/yl;)V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl;->a(Lcom/google/android/gms/internal/ads/yl;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c0(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yl;->a(Lcom/google/android/gms/internal/ads/yl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wl;->a:Lcom/google/android/gms/internal/ads/yl;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yl;->k(Lcom/google/android/gms/internal/ads/yl;Lcom/google/android/gms/internal/ads/cm;)Lcom/google/android/gms/internal/ads/cm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl;->a(Lcom/google/android/gms/internal/ads/yl;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

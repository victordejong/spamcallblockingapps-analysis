.class final Lcom/google/android/gms/internal/ads/dvr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dvl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dvl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvl;->c(Lcom/google/android/gms/internal/ads/dvl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/dvl;Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvl;->c(Lcom/google/android/gms/internal/ads/dvl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvl;->c(Lcom/google/android/gms/internal/ads/dvl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvl;->d(Lcom/google/android/gms/internal/ads/dvl;)Lcom/google/android/gms/internal/ads/dvv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dvl;->d(Lcom/google/android/gms/internal/ads/dvl;)Lcom/google/android/gms/internal/ads/dvv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dvv;->c()Lcom/google/android/gms/internal/ads/dvz;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/dvl;Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvl;->c(Lcom/google/android/gms/internal/ads/dvl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v1

    return-void

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const-string/jumbo v2, "Unable to obtain a cache service instance."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvr;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/dvl;)V

    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.class final Lcom/google/android/gms/internal/ads/zzbae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zza:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zza:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbag;->zze(Lcom/google/android/gms/internal/ads/zzbag;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->zza:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zzc(Lcom/google/android/gms/internal/ads/zzbag;)Lcom/google/android/gms/internal/ads/zzbaj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->zza:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zzc(Lcom/google/android/gms/internal/ads/zzbag;)Lcom/google/android/gms/internal/ads/zzbaj;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbaj;->zzq()Lcom/google/android/gms/internal/ads/zzbam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zzk(Lcom/google/android/gms/internal/ads/zzbag;Lcom/google/android/gms/internal/ads/zzbam;)V
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
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzciz;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->zza:Lcom/google/android/gms/internal/ads/zzbag;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zzh(Lcom/google/android/gms/internal/ads/zzbag;)V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->zza:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zze(Lcom/google/android/gms/internal/ads/zzbag;)Ljava/lang/Object;

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

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zza:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbag;->zze(Lcom/google/android/gms/internal/ads/zzbag;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->zza:Lcom/google/android/gms/internal/ads/zzbag;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zzk(Lcom/google/android/gms/internal/ads/zzbag;Lcom/google/android/gms/internal/ads/zzbam;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->zza:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zze(Lcom/google/android/gms/internal/ads/zzbag;)Ljava/lang/Object;

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

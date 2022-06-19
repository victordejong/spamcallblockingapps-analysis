.class public final Lcom/google/android/gms/internal/ads/zzbyp;
.super Lcom/google/android/gms/internal/ads/zzbwf;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbwf<",
        "Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field private zzeua:Z


# direct methods
.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwf;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyr;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    return-void
.end method

.method public final onVideoPause()V
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbys;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    return-void
.end method

.method public final declared-synchronized onVideoPlay()V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzeua:Z

    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyt;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzeua:Z

    .line 13
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyw;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onVideoStart()V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyu;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzeua:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

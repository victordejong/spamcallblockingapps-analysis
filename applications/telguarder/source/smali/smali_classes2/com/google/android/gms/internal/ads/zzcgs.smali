.class final Lcom/google/android/gms/internal/ads/zzcgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;
.implements Lcom/google/android/gms/ads/internal/overlay/zzv;
.implements Lcom/google/android/gms/internal/ads/zzahi;
.implements Lcom/google/android/gms/internal/ads/zzahk;
.implements Lcom/google/android/gms/internal/ads/zzvc;


# instance fields
.field private zzchd:Lcom/google/android/gms/internal/ads/zzvc;

.field private zzdgz:Lcom/google/android/gms/internal/ads/zzahi;

.field private zzdha:Lcom/google/android/gms/internal/ads/zzahk;

.field private zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field private zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgl;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcgs;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcgs;Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/internal/ads/zzahi;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/ads/zzahk;Lcom/google/android/gms/ads/internal/overlay/zzv;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzcgs;->zza(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/internal/ads/zzahi;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/ads/zzahk;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/internal/ads/zzahi;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/ads/zzahk;Lcom/google/android/gms/ads/internal/overlay/zzv;)V
    .locals 0

    monitor-enter p0

    .line 29
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    .line 30
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdgz:Lcom/google/android/gms/internal/ads/zzahi;

    .line 31
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    .line 32
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdha:Lcom/google/android/gms/internal/ads/zzahk;

    .line 33
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized onAdClicked()V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvc;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdha:Lcom/google/android/gms/internal/ads/zzahk;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzahk;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onUserLeaveHint()V
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onUserLeaveHint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdgz:Lcom/google/android/gms/internal/ads/zzahi;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzahi;->zza(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzvo()V
    .locals 1

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzvo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzwg()V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzwg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

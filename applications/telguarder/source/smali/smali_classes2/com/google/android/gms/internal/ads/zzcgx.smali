.class public final Lcom/google/android/gms/internal/ads/zzcgx;
.super Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzgch:Lcom/google/android/gms/internal/ads/zzccd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgx;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzccd;)Lcom/google/android/gms/internal/ads/zzzd;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccd;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 31
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzc;->zzrg()Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final onVideoEnd()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgx;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgx;->zza(Lcom/google/android/gms/internal/ads/zzccd;)Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzd;->onVideoEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 26
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoPause()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgx;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgx;->zza(Lcom/google/android/gms/internal/ads/zzccd;)Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzd;->onVideoPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoStart()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgx;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgx;->zza(Lcom/google/android/gms/internal/ads/zzccd;)Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzd;->onVideoStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

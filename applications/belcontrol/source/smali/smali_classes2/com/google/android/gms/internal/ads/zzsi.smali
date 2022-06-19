.class public final Lcom/google/android/gms/internal/ads/zzsi;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd;
.source ""


# instance fields
.field private final zzbut:Ljava/lang/String;

.field private final zzbuu:Lcom/google/android/gms/internal/ads/zzsk;

.field private final zzbuv:Lcom/google/android/gms/internal/ads/zzsl;

.field private zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsk;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzsl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuv:Lcom/google/android/gms/internal/ads/zzsl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuu:Lcom/google/android/gms/internal/ads/zzsk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbut:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbut:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuu:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzki()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuv:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsl;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuu:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzsk;->setImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuu:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuv:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzsv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuv:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzsl;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    if-nez p1, :cond_0

    const-string p2, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuu:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuv:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzsk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzsv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsq;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuu:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzsk;->zza(Lcom/google/android/gms/internal/ads/zzsq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzdx()Lcom/google/android/gms/internal/ads/zzxl;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbuu:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzdx()Lcom/google/android/gms/internal/ads/zzxl;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

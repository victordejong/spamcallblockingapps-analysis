.class public final Lcom/google/android/gms/internal/ads/nl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ms;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ms;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ms;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 30
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .locals 5

    const-string v0, "#008 Must be called on the main UI thread."

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdFailedToShow."

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x57

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Mediation ad failed to show: Error Code = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Error Message = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Error Domain = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zzdr()Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ms;->b(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 78
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToShow(Ljava/lang/String;)V
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdFailedToShow."

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Mediation ad failed to show: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ms;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 66
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ms;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 37
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ms;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoComplete()V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoComplete."

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ms;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 58
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoMute()V
    .locals 0

    return-void
.end method

.method public final onVideoPause()V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoPause."

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ms;->i()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 44
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoPlay()V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoPlay."

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ms;->k()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 51
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoUnmute()V
    .locals 0

    return-void
.end method

.method public final reportAdClicked()V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called reportAdClicked."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ms;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportAdImpression()V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called reportAdImpression."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ms;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

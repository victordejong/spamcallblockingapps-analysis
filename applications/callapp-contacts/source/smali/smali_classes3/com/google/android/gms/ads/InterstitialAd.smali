.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzadr:Lcom/google/android/gms/internal/ads/emv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/emv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/emv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    const-string v0, "Context cannot be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 1014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->a:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 1015
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->e()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->a()Z

    move-result v0

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->b()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lcom/google/android/gms/internal/ads/emr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emv;->a(Lcom/google/android/gms/internal/ads/emr;)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emv;->a(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_0

    .line 12
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/eir;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    check-cast p1, Lcom/google/android/gms/internal/ads/eir;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emv;->a(Lcom/google/android/gms/internal/ads/eir;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/emv;->a(Lcom/google/android/gms/internal/ads/eir;)V

    :cond_1
    return-void
.end method

.method public final setAdMetadataListener(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 2079
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emv;->d:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    .line 2080
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v1, :cond_1

    .line 2081
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz p1, :cond_0

    .line 2082
    new-instance v1, Lcom/google/android/gms/internal/ads/eiy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/eiy;-><init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2083
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ekz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2086
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emv;->a(Z)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 2151
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emv;->i:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 2152
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v1, :cond_0

    .line 2153
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v1, Lcom/google/android/gms/internal/ads/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/s;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/emd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2156
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 1114
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emv;->g:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .line 1115
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v1, :cond_1

    .line 1116
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz p1, :cond_0

    .line 1117
    new-instance v1, Lcom/google/android/gms/internal/ads/uc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/uc;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1118
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/tz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 1121
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->f()V

    return-void
.end method

.method public final zze(Z)V
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    const/4 v0, 0x1

    .line 2123
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/emv;->h:Z

    return-void
.end method

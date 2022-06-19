.class public final Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
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

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/emv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    const-string v0, "Context cannot be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 1014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->a:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 1015
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 1016
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 1017
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->f:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->e()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->a()Z

    move-result v0

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->b()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdt()Lcom/google/android/gms/internal/ads/emr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emv;->a(Lcom/google/android/gms/internal/ads/emr;)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emv;->a(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 1094
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emv;->e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    .line 1095
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v1, :cond_1

    .line 1096
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz p1, :cond_0

    .line 1097
    new-instance v1, Lcom/google/android/gms/internal/ads/ejg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ejg;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1098
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ele;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 1101
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emv;->a(Z)V

    return-void
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    .line 1103
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/emv;->f:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    .line 1104
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v1, :cond_1

    .line 1105
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz p1, :cond_0

    .line 1107
    new-instance v1, Lcom/google/android/gms/internal/ads/bs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bs;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1109
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/bn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 1112
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadr:Lcom/google/android/gms/internal/ads/emv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emv;->f()V

    return-void
.end method

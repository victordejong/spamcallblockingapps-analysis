.class public Lm2/b;
.super Landroid/support/v4/media/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;


# instance fields
.field public a:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

.field public final b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ld2/q;

.field public final d:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/a;-><init>()V

    .line 2
    iput-object p2, p0, Lm2/b;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 3
    iput-object p1, p0, Lm2/b;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    return-void
.end method


# virtual methods
.method public D(Ld2/q;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm2/b;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    .line 2
    iget-object p1, p0, Lm2/b;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdLeftApplication()V

    return-void
.end method

.method public E(Ld2/q;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm2/b;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 2
    iget-object p1, p0, Lm2/b;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    return-void
.end method

.method public F(Ld2/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm2/b;->c:Ld2/q;

    .line 2
    iget-object p1, p0, Lm2/b;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    iput-object p1, p0, Lm2/b;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    return-void
.end method

.method public G(Ld2/s;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createSdkError()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lm2/b;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm2/b;->c:Ld2/q;

    invoke-virtual {p1}, Ld2/q;->d()Z

    return-void
.end method

.method public x(Ld2/q;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm2/b;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    return-void
.end method

.method public y(Ld2/q;)V
    .locals 0

    .line 1
    iget-object p1, p1, Ld2/q;->i:Ljava/lang/String;

    .line 2
    invoke-static {p1, p0}, Ld2/b;->k(Ljava/lang/String;Landroid/support/v4/media/a;)Z

    return-void
.end method

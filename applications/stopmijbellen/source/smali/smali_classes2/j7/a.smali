.class public Lj7/a;
.super Landroid/support/v4/media/a;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field public b:Lcom/jirbo/adcolony/AdColonyAdapter;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/AdColonyAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/a;-><init>()V

    .line 2
    iput-object p2, p0, Lj7/a;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 3
    iput-object p1, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    return-void
.end method


# virtual methods
.method public C(Ld2/q;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p2, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    :cond_0
    return-void
.end method

.method public D(Ld2/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj7/a;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v1, :cond_0

    .line 2
    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public E(Ld2/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj7/a;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v1, :cond_0

    .line 2
    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public F(Ld2/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj7/a;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v1, :cond_0

    .line 2
    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public G(Ld2/s;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lj7/a;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    .line 3
    invoke-static {}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createSdkError()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lj7/a;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public w(Ld2/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj7/a;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v1, :cond_0

    .line 2
    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public x(Ld2/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj7/a;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v1, :cond_0

    .line 2
    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public y(Ld2/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    .line 3
    iget-object p1, p1, Ld2/q;->i:Ljava/lang/String;

    .line 4
    invoke-static {p1, p0}, Ld2/b;->k(Ljava/lang/String;Landroid/support/v4/media/a;)Z

    :cond_0
    return-void
.end method

.class public Lj7/b;
.super Ld2/k;
.source "SourceFile"


# instance fields
.field public d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field public e:Lcom/jirbo/adcolony/AdColonyAdapter;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/AdColonyAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld2/k;-><init>()V

    .line 2
    iput-object p2, p0, Lj7/b;->d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 3
    iput-object p1, p0, Lj7/b;->e:Lcom/jirbo/adcolony/AdColonyAdapter;

    return-void
.end method


# virtual methods
.method public a(Ld2/j;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj7/b;->d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lj7/b;->e:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    :cond_0
    return-void
.end method

.method public b(Ld2/j;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj7/b;->d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lj7/b;->e:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    :cond_0
    return-void
.end method

.method public c(Ld2/j;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj7/b;->d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lj7/b;->e:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    :cond_0
    return-void
.end method

.method public d(Ld2/j;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj7/b;->d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lj7/b;->e:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    :cond_0
    return-void
.end method

.method public e(Ld2/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj7/b;->d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj7/b;->e:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v1, :cond_0

    .line 2
    iput-object p1, v1, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Ld2/j;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    :cond_0
    return-void
.end method

.method public f(Ld2/s;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lj7/b;->d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj7/b;->e:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createSdkError()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lj7/b;->d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lj7/b;->e:Lcom/jirbo/adcolony/AdColonyAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method

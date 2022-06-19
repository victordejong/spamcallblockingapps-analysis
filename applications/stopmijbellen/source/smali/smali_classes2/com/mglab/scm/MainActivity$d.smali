.class public Lcom/mglab/scm/MainActivity$d;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mglab/scm/MainActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mglab/scm/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/MainActivity$d;->a:Lcom/mglab/scm/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/mglab/scm/MainActivity$d;->a:Lcom/mglab/scm/MainActivity;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/mglab/scm/MainActivity;->q:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public onAdLoaded(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/MainActivity$d;->a:Lcom/mglab/scm/MainActivity;

    .line 3
    iput-object p1, v0, Lcom/mglab/scm/MainActivity;->q:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const-string p1, "MainActivity"

    const-string v0, "onAdLoaded"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/mglab/scm/MainActivity$d;->a:Lcom/mglab/scm/MainActivity;

    .line 6
    iget-object p1, p1, Lcom/mglab/scm/MainActivity;->q:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 7
    new-instance v0, Lcom/mglab/scm/a;

    invoke-direct {v0, p0}, Lcom/mglab/scm/a;-><init>(Lcom/mglab/scm/MainActivity$d;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

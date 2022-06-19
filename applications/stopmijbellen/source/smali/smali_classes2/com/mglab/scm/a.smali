.class public Lcom/mglab/scm/a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mglab/scm/MainActivity$d;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/MainActivity$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/a;->a:Lcom/mglab/scm/MainActivity$d;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/a;->a:Lcom/mglab/scm/MainActivity$d;

    iget-object v0, v0, Lcom/mglab/scm/MainActivity$d;->a:Lcom/mglab/scm/MainActivity;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/mglab/scm/MainActivity;->q:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 3
    invoke-virtual {v0}, Lcom/mglab/scm/MainActivity;->w()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/a;->a:Lcom/mglab/scm/MainActivity$d;

    iget-object p1, p1, Lcom/mglab/scm/MainActivity$d;->a:Lcom/mglab/scm/MainActivity;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/mglab/scm/MainActivity;->q:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 3
    invoke-virtual {p1}, Lcom/mglab/scm/MainActivity;->w()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/a;->a:Lcom/mglab/scm/MainActivity$d;

    iget-object v0, v0, Lcom/mglab/scm/MainActivity$d;->a:Lcom/mglab/scm/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "valshown"

    invoke-static {v0, v3, v1, v2}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

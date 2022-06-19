.class Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$3;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->onClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$3;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$3;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$3;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$3;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    iget-object v1, v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;->onClosed(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$3;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->destroy()V

    return-void
.end method

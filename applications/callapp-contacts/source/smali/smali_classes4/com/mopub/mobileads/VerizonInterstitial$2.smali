.class final Lcom/mopub/mobileads/VerizonInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VerizonInterstitial;->onInvalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VerizonInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VerizonInterstitial;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$2;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$2;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$2;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->destroy()V

    .line 196
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$2;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/verizon/ads/interstitialplacement/InterstitialAd;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    :cond_0
    return-void
.end method

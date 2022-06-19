.class final Lcom/mopub/mobileads/VerizonInterstitial$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VerizonInterstitial$a;->onLoaded(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VerizonInterstitial$a;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VerizonInterstitial$a;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$1;->a:Lcom/mopub/mobileads/VerizonInterstitial$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$1;->a:Lcom/mopub/mobileads/VerizonInterstitial$a;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$1;->a:Lcom/mopub/mobileads/VerizonInterstitial$a;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    .line 255
    invoke-static {v0}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->getCreativeInfo()Lcom/verizon/ads/CreativeInfo;

    move-result-object v0

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$1;->a:Lcom/mopub/mobileads/VerizonInterstitial$a;

    iget-object v1, v1, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/mopub/mobileads/VerizonInterstitial;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Verizon creative info: "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$1;->a:Lcom/mopub/mobileads/VerizonInterstitial$a;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$1;->a:Lcom/mopub/mobileads/VerizonInterstitial$a;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_1
    return-void
.end method

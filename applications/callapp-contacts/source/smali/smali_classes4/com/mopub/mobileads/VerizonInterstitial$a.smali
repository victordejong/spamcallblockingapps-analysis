.class final Lcom/mopub/mobileads/VerizonInterstitial$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VerizonInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VerizonInterstitial;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/VerizonInterstitial;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/mopub/mobileads/VerizonInterstitial$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VerizonInterstitial$a;-><init>(Lcom/mopub/mobileads/VerizonInterstitial;)V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/ErrorInfo;)V
    .locals 4

    .line 269
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/VerizonInterstitial;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load Verizon interstitial due to error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 269
    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 271
    new-instance p1, Lcom/mopub/mobileads/VerizonInterstitial$a$2;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/VerizonInterstitial$a$2;-><init>(Lcom/mopub/mobileads/VerizonInterstitial$a;Lcom/verizon/ads/ErrorInfo;)V

    invoke-static {p1}, Lcom/mopub/mobileads/VerizonUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onLoaded(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
    .locals 3

    .line 246
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {p1, p2}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/verizon/ads/interstitialplacement/InterstitialAd;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    .line 248
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/VerizonInterstitial;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 250
    new-instance p1, Lcom/mopub/mobileads/VerizonInterstitial$a$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/VerizonInterstitial$a$1;-><init>(Lcom/mopub/mobileads/VerizonInterstitial$a;)V

    invoke-static {p1}, Lcom/mopub/mobileads/VerizonUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

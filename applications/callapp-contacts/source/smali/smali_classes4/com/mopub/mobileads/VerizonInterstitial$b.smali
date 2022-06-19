.class final Lcom/mopub/mobileads/VerizonInterstitial$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VerizonInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VerizonInterstitial;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/VerizonInterstitial;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/mopub/mobileads/VerizonInterstitial$1;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VerizonInterstitial$b;-><init>(Lcom/mopub/mobileads/VerizonInterstitial;)V

    return-void
.end method


# virtual methods
.method public final onAdLeftApplication(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
    .locals 4

    .line 350
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->WILL_LEAVE_APPLICATION:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/VerizonInterstitial;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onClicked(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
    .locals 4

    .line 331
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/VerizonInterstitial;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 333
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v2, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {v2}, Lcom/mopub/mobileads/VerizonInterstitial;->c(Lcom/mopub/mobileads/VerizonInterstitial;)Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    .line 335
    new-instance p1, Lcom/mopub/mobileads/VerizonInterstitial$b$4;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/VerizonInterstitial$b$4;-><init>(Lcom/mopub/mobileads/VerizonInterstitial$b;)V

    invoke-static {p1}, Lcom/mopub/mobileads/VerizonUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onClosed(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
    .locals 4

    .line 316
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/VerizonInterstitial;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 317
    new-instance p1, Lcom/mopub/mobileads/VerizonInterstitial$b$3;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/VerizonInterstitial$b$3;-><init>(Lcom/mopub/mobileads/VerizonInterstitial$b;)V

    invoke-static {p1}, Lcom/mopub/mobileads/VerizonUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onError(Lcom/verizon/ads/interstitialplacement/InterstitialAd;Lcom/verizon/ads/ErrorInfo;)V
    .locals 4

    .line 286
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

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

    const-string v3, "Failed to show Verizon interstitial due to error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 286
    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 288
    new-instance p1, Lcom/mopub/mobileads/VerizonInterstitial$b$1;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/VerizonInterstitial$b$1;-><init>(Lcom/mopub/mobileads/VerizonInterstitial$b;Lcom/verizon/ads/ErrorInfo;)V

    invoke-static {p1}, Lcom/mopub/mobileads/VerizonUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onEvent(Lcom/verizon/ads/interstitialplacement/InterstitialAd;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/interstitialplacement/InterstitialAd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "adImpression"

    .line 357
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    new-instance p1, Lcom/mopub/mobileads/VerizonInterstitial$b$5;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/VerizonInterstitial$b$5;-><init>(Lcom/mopub/mobileads/VerizonInterstitial$b;)V

    invoke-static {p1}, Lcom/mopub/mobileads/VerizonUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->d(Lcom/mopub/mobileads/VerizonInterstitial;)D

    move-result-wide v2

    sget-object v4, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->c(Lcom/mopub/mobileads/VerizonInterstitial;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

.method public final onShown(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
    .locals 4

    .line 300
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/VerizonInterstitial;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 302
    new-instance p1, Lcom/mopub/mobileads/VerizonInterstitial$b$2;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/VerizonInterstitial$b$2;-><init>(Lcom/mopub/mobileads/VerizonInterstitial$b;)V

    invoke-static {p1}, Lcom/mopub/mobileads/VerizonUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

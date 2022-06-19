.class final Lcom/mopub/mobileads/BidMachineInterstitial$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/interstitial/InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/BidMachineInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/BidMachineInterstitial;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/BidMachineInterstitial;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/BidMachineInterstitial;Lcom/mopub/mobileads/BidMachineInterstitial$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BidMachineInterstitial$a;-><init>(Lcom/mopub/mobileads/BidMachineInterstitial;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 143
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BidMachineInterstitial$a;->onAdClicked(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public final onAdClicked(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 4

    .line 208
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 209
    invoke-static {}, Lcom/mopub/mobileads/BidMachineInterstitial;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 208
    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 210
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/BidMachineInterstitial;->a(Lcom/mopub/mobileads/BidMachineInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/BidMachineInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/BidMachineInterstitial;->b(Lcom/mopub/mobileads/BidMachineInterstitial;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v2, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-static {v2}, Lcom/mopub/mobileads/BidMachineInterstitial;->d(Lcom/mopub/mobileads/BidMachineInterstitial;)Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic onAdClosed(Lio/bidmachine/IAd;Z)V
    .locals 0

    .line 143
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/BidMachineInterstitial$a;->onAdClosed(Lio/bidmachine/interstitial/InterstitialAd;Z)V

    return-void
.end method

.method public final onAdClosed(Lio/bidmachine/interstitial/InterstitialAd;Z)V
    .locals 2

    .line 157
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/mopub/mobileads/BidMachineInterstitial;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 157
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 159
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 143
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BidMachineInterstitial$a;->onAdExpired(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public final onAdExpired(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 3

    .line 221
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 222
    invoke-static {}, Lcom/mopub/mobileads/BidMachineInterstitial;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Ad was expired"

    aput-object v2, v0, v1

    .line 221
    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 224
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 143
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BidMachineInterstitial$a;->onAdImpression(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public final onAdImpression(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 6

    .line 197
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/BidMachineInterstitial;->a(Lcom/mopub/mobileads/BidMachineInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/BidMachineInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/BidMachineInterstitial;->b(Lcom/mopub/mobileads/BidMachineInterstitial;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/BidMachineInterstitial;->c(Lcom/mopub/mobileads/BidMachineInterstitial;)D

    move-result-wide v2

    sget-object v4, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/BidMachineInterstitial;->d(Lcom/mopub/mobileads/BidMachineInterstitial;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 143
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/BidMachineInterstitial$a;->onAdLoadFailed(Lio/bidmachine/interstitial/InterstitialAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onAdLoadFailed(Lio/bidmachine/interstitial/InterstitialAd;Lio/bidmachine/utils/BMError;)V
    .locals 3

    .line 176
    invoke-static {p2}, Lcom/mopub/mobileads/BidMachineUtils;->transformToMoPubErrorCode(Lio/bidmachine/utils/BMError;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    .line 177
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 178
    invoke-static {}, Lcom/mopub/mobileads/BidMachineInterstitial;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 179
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 177
    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 181
    iget-object p2, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p2, p2, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p2, :cond_0

    .line 182
    iget-object p2, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p2, p2, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 143
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BidMachineInterstitial$a;->onAdLoaded(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public final onAdLoaded(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 3

    .line 166
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 167
    invoke-static {}, Lcom/mopub/mobileads/BidMachineInterstitial;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 166
    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 143
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/BidMachineInterstitial$a;->onAdShowFailed(Lio/bidmachine/interstitial/InterstitialAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onAdShowFailed(Lio/bidmachine/interstitial/InterstitialAd;Lio/bidmachine/utils/BMError;)V
    .locals 2

    .line 148
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/mopub/mobileads/BidMachineInterstitial;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 148
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onAdShown(Lio/bidmachine/IAd;)V
    .locals 0

    .line 143
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BidMachineInterstitial$a;->onAdShown(Lio/bidmachine/interstitial/InterstitialAd;)V

    return-void
.end method

.method public final onAdShown(Lio/bidmachine/interstitial/InterstitialAd;)V
    .locals 3

    .line 188
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 189
    invoke-static {}, Lcom/mopub/mobileads/BidMachineInterstitial;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 188
    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial$a;->a:Lcom/mopub/mobileads/BidMachineInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/BidMachineInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    :cond_0
    return-void
.end method

.class public Lcom/mopub/mobileads/PubNativeInterstitial;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;


# static fields
.field public static final ZONE_ID_KEY:Ljava/lang/String; = "pn_zone_id"

.field private static final d:Ljava/lang/String; = "PubNativeInterstitial"


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

.field private g:Ljava/lang/String;

.field private h:D

.field private i:Ljava/lang/String;

.field private final j:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->h:D

    .line 42
    new-instance v0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->j:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->f:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->show()V

    :cond_0
    return-void
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    const-string v0, "pubnative"

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 2

    .line 47
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->j:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const-string v0, "pn_zone_id"

    .line 51
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 52
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->g:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->j:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 63
    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->h:D

    const-string v0, "app_bidder_request_id"

    .line 64
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->i:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adm"

    .line 67
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 68
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sget-object v0, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lnet/pubnative/lite/sdk/models/Ad;

    :cond_0
    if-nez v0, :cond_2

    .line 72
    sget-object p1, Lcom/mopub/mobileads/PubNativeInterstitial;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not find an ad in the cache for zone id with key "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    return-void

    .line 79
    :cond_2
    new-instance p2, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;

    iget-object v1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->g:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->createInterstitialPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->f:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    if-nez p1, :cond_4

    .line 81
    sget-object p1, Lcom/mopub/mobileads/PubNativeInterstitial;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_3

    .line 83
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_3
    return-void

    .line 88
    :cond_4
    invoke-interface {p1}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->load()V

    return-void

    .line 54
    :cond_5
    sget-object p1, Lcom/mopub/mobileads/PubNativeInterstitial;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_6

    .line 56
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_6
    return-void
.end method

.method public onInterstitialClicked(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 2

    .line 131
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/mopub/mobileads/PubNativeInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->g:Ljava/lang/String;

    sget-object v1, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_1
    return-void
.end method

.method public onInterstitialDismissed(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method public onInterstitialError(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public onInterstitialShown(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;)V
    .locals 7

    .line 120
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/mopub/mobileads/PubNativeInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->g:Ljava/lang/String;

    iget-wide v3, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->h:D

    sget-object v5, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v6, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->i:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->f:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->destroy()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/mopub/mobileads/PubNativeInterstitial;->f:Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    :cond_0
    return-void
.end method

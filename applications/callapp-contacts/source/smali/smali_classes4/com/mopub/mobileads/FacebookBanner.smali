.class public Lcom/mopub/mobileads/FacebookBanner;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# static fields
.field private static final e:Ljava/lang/String; = "FacebookBanner"


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lcom/facebook/ads/AdView;

.field private final g:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

.field private h:Ljava/lang/String;

.field private i:D

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->g:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    return-void
.end method

.method public static calculateAdSize(I)Lcom/facebook/ads/AdSize;
    .locals 1

    .line 232
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-lt p0, v0, :cond_0

    .line 233
    sget-object p0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    return-object p0

    .line 234
    :cond_0
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 235
    sget-object p0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    return-object p0

    .line 238
    :cond_1
    sget-object p0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    return-object p0
.end method


# virtual methods
.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->f:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook"

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 5

    .line 74
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    .line 1053
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    .line 83
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/mopub/mobileads/FacebookBanner;->g:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-virtual {v2, p1, v1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const-string v2, "placement_id"

    .line 1226
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1227
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 87
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mopub/mobileads/FacebookBanner;->h:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/mopub/mobileads/FacebookBanner;->g:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-virtual {v2, p1, v1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 98
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdHeight()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdHeight()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    invoke-static {p2}, Lcom/mopub/mobileads/FacebookBanner;->calculateAdSize(I)Lcom/facebook/ads/AdSize;

    move-result-object p2

    .line 100
    new-instance v2, Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/mopub/mobileads/FacebookBanner;->h:Ljava/lang/String;

    invoke-direct {v2, p1, v3, p2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v2, p0, Lcom/mopub/mobileads/FacebookBanner;->f:Lcom/facebook/ads/AdView;

    .line 102
    invoke-virtual {v2}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    .line 103
    invoke-interface {p1, p0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    .line 105
    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mopub/mobileads/FacebookBanner;->i:D

    const-string p2, "app_bidder_request_id"

    .line 106
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->j:Ljava/lang/String;

    const-string p2, "adm"

    .line 108
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 109
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/mopub/mobileads/FacebookBanner;->f:Lcom/facebook/ads/AdView;

    invoke-interface {p1, p2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    .line 111
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 113
    :cond_3
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->f:Lcom/facebook/ads/AdView;

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    .line 114
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 91
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const/4 v0, 0x2

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v0

    .line 90
    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_5

    .line 93
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_5
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 204
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->f:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v0

    const-string v1, "facebook"

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_1
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 6

    .line 149
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "Facebook banner ad loaded successfully. Showing ad..."

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    .line 154
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 7

    .line 160
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/FacebookBanner;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "Facebook banner ad failed to load."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-static {p1, v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 p2, 0x834

    if-eq p1, p2, :cond_1

    const/16 p2, 0xbb9

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 190
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 181
    :pswitch_0
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 169
    :pswitch_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 178
    :pswitch_2
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 175
    :pswitch_3
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 166
    :pswitch_4
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 172
    :pswitch_5
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 184
    :cond_0
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 187
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v1

    invoke-static {p2, v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 195
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p2, :cond_2

    .line 196
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 197
    :cond_2
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p2, :cond_3

    .line 198
    iget-object p2, p0, Lcom/mopub/mobileads/FacebookBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInvalidate()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->f:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->f:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/mopub/mobileads/FacebookBanner;->f:Lcom/facebook/ads/AdView;

    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 10

    .line 215
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/FacebookBanner;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "Facebook banner ad logged impression."

    aput-object v4, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 217
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    iget-object v5, p0, Lcom/mopub/mobileads/FacebookBanner;->h:Ljava/lang/String;

    iget-wide v6, p0, Lcom/mopub/mobileads/FacebookBanner;->i:D

    iget-object p1, p0, Lcom/mopub/mobileads/FacebookBanner;->f:Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Lcom/facebook/ads/AdView;->getHeight()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v8

    iget-object v9, p0, Lcom/mopub/mobileads/FacebookBanner;->j:Ljava/lang/String;

    const-string v4, "facebook"

    invoke-static/range {v4 .. v9}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

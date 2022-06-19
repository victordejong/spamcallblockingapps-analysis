.class public Lcom/mopub/mobileads/VerizonInterstitial;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VerizonInterstitial$b;,
        Lcom/mopub/mobileads/VerizonInterstitial$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "VerizonInterstitial"

.field private static g:Ljava/lang/String;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

.field private h:D

.field private i:Ljava/lang/String;

.field private final j:Lcom/mopub/mobileads/VerizonAdapterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/mopub/mobileads/VerizonInterstitial;->h:D

    .line 67
    new-instance v0, Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial;->j:Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/VerizonInterstitial;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VerizonInterstitial;->f:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    return-object p0
.end method

.method static synthetic a(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/verizon/ads/interstitialplacement/InterstitialAd;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial;->f:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    return-object p1
.end method

.method private a(Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;Lcom/mopub/mobileads/MoPubErrorCode;Z)V
    .locals 4

    .line 220
    invoke-virtual {p0}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/VerizonInterstitial;->d:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 222
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 224
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;Lcom/mopub/mobileads/MoPubErrorCode;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;Lcom/mopub/mobileads/MoPubErrorCode;Z)V

    return-void
.end method

.method static synthetic b(Lcom/mopub/mobileads/VerizonInterstitial;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VerizonInterstitial;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/mopub/mobileads/VerizonInterstitial;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/mobileads/VerizonInterstitial;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VerizonInterstitial;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/mopub/mobileads/VerizonInterstitial;)D
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/mopub/mobileads/VerizonInterstitial;->h:D

    return-wide v0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 165
    invoke-virtual {p0}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/VerizonInterstitial;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 167
    new-instance v0, Lcom/mopub/mobileads/VerizonInterstitial$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VerizonInterstitial$1;-><init>(Lcom/mopub/mobileads/VerizonInterstitial;)V

    invoke-static {v0}, Lcom/mopub/mobileads/VerizonUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 232
    sget-object v0, Lcom/mopub/mobileads/VerizonInterstitial;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    const-string v0, "verizon"

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 7

    .line 72
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1053
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    .line 77
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial;->e:Landroid/content/Context;

    .line 79
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    .line 80
    iget-object v1, p0, Lcom/mopub/mobileads/VerizonInterstitial;->j:Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    invoke-virtual {v1, p1, p2}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 82
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/VerizonInterstitial;->d:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "Ad request to Verizon failed because server data is null or empty"

    aput-object v0, v1, v3

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 86
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p1, p2, v3}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;Lcom/mopub/mobileads/MoPubErrorCode;Z)V

    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/VerizonInterstitial;->j:Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    invoke-virtual {v1, p1, p2}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    const-string v1, "siteId"

    .line 94
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "placementId"

    .line 95
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/mopub/mobileads/VerizonInterstitial;->g:Ljava/lang/String;

    .line 97
    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mopub/mobileads/VerizonInterstitial;->h:D

    const-string v4, "app_bidder_request_id"

    .line 98
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/mobileads/VerizonInterstitial;->i:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/verizon/ads/VASAds;->isInitialized()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 103
    instance-of v4, p1, Landroid/app/Application;

    if-eqz v4, :cond_1

    .line 104
    move-object v4, p1

    check-cast v4, Landroid/app/Application;

    goto :goto_0

    .line 105
    :cond_1
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 106
    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 110
    :goto_0
    invoke-static {v4, v1}, Lcom/verizon/ads/edition/StandardEdition;->initialize(Landroid/app/Application;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, v1, v4, v3}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;Lcom/mopub/mobileads/MoPubErrorCode;Z)V

    .line 117
    :cond_3
    invoke-static {}, Lcom/verizon/ads/VASAds;->getActivityStateManager()Lcom/verizon/ads/ActivityStateManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 118
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_4

    .line 119
    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    sget-object v6, Lcom/verizon/ads/ActivityStateManager$ActivityState;->RESUMED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-virtual {v1, v4, v6}, Lcom/verizon/ads/ActivityStateManager;->setState(Landroid/app/Activity;Lcom/verizon/ads/ActivityStateManager$ActivityState;)V

    .line 122
    :cond_4
    sget-object v1, Lcom/mopub/mobileads/VerizonInterstitial;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    invoke-virtual {p0}, Lcom/mopub/mobileads/VerizonInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/VerizonInterstitial;->d:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "Ad request to Verizon failed because placement ID is empty"

    aput-object v0, v1, v3

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 126
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p1, p2, v3}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;Lcom/mopub/mobileads/MoPubErrorCode;Z)V

    return-void

    .line 131
    :cond_5
    new-instance v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    sget-object v1, Lcom/mopub/mobileads/VerizonInterstitial;->g:Ljava/lang/String;

    new-instance v2, Lcom/mopub/mobileads/VerizonInterstitial$a;

    invoke-direct {v2, p0, v5}, Lcom/mopub/mobileads/VerizonInterstitial$a;-><init>(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/mopub/mobileads/VerizonInterstitial$1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;)V

    const-string p1, "adm"

    .line 135
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    sget-object v2, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/Bid;

    goto :goto_1

    :cond_6
    move-object v1, v5

    :goto_1
    if-nez v1, :cond_8

    .line 141
    new-instance v1, Lcom/verizon/ads/RequestMetadata$Builder;

    invoke-static {}, Lcom/verizon/ads/VASAds;->getRequestMetadata()Lcom/verizon/ads/RequestMetadata;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/verizon/ads/RequestMetadata$Builder;-><init>(Lcom/verizon/ads/RequestMetadata;)V

    const-string v2, "MoPubVAS-1.5.0.0"

    .line 142
    invoke-virtual {v1, v2}, Lcom/verizon/ads/RequestMetadata$Builder;->setMediator(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Builder;

    .line 144
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 147
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v2, "adContent"

    .line 149
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "overrideWaterfallProvider"

    const-string v2, "waterfallprovider/sideloading"

    .line 150
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v1, p2}, Lcom/verizon/ads/RequestMetadata$Builder;->setPlacementData(Ljava/util/Map;)Lcom/verizon/ads/RequestMetadata$Builder;

    .line 155
    :cond_7
    invoke-virtual {v1}, Lcom/verizon/ads/RequestMetadata$Builder;->build()Lcom/verizon/ads/RequestMetadata;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->setRequestMetaData(Lcom/verizon/ads/RequestMetadata;)V

    .line 156
    new-instance p1, Lcom/mopub/mobileads/VerizonInterstitial$b;

    invoke-direct {p1, p0, v5}, Lcom/mopub/mobileads/VerizonInterstitial$b;-><init>(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/mopub/mobileads/VerizonInterstitial$1;)V

    invoke-virtual {v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->load(Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)V

    return-void

    .line 158
    :cond_8
    new-instance p1, Lcom/mopub/mobileads/VerizonInterstitial$b;

    invoke-direct {p1, p0, v5}, Lcom/mopub/mobileads/VerizonInterstitial$b;-><init>(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/mopub/mobileads/VerizonInterstitial$1;)V

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->load(Lcom/verizon/ads/Bid;Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)V

    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .line 189
    new-instance v0, Lcom/mopub/mobileads/VerizonInterstitial$2;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VerizonInterstitial$2;-><init>(Lcom/mopub/mobileads/VerizonInterstitial;)V

    invoke-static {v0}, Lcom/mopub/mobileads/VerizonUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

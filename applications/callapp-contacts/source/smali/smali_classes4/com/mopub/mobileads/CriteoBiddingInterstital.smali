.class public Lcom/mopub/mobileads/CriteoBiddingInterstital;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# static fields
.field public static final AD_UNIT_ID_KEY:Ljava/lang/String; = "ad_unit_id"


# instance fields
.field private d:Lcom/criteo/publisher/CriteoInterstitial;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Lcom/mopub/mobileads/CriteoAdapterConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 38
    new-instance v0, Lcom/mopub/mobileads/CriteoAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/CriteoAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->g:Lcom/mopub/mobileads/CriteoAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/CriteoBiddingInterstital;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/mobileads/CriteoBiddingInterstital;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->d:Lcom/criteo/publisher/CriteoInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/criteo/publisher/CriteoInterstitial;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->d:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-virtual {v0}, Lcom/criteo/publisher/CriteoInterstitial;->show()V

    :cond_0
    return-void
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    const-string v0, "criteo"

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 3

    .line 43
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->g:Lcom/mopub/mobileads/CriteoAdapterConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const-string v0, "ad_unit_id"

    .line 1149
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1150
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 51
    iget-object v1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->g:Lcom/mopub/mobileads/CriteoAdapterConfiguration;

    invoke-virtual {v1, p1, p2}, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 52
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->e:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/criteo/publisher/model/InterstitialAdUnit;

    invoke-direct {v0, p1}, Lcom/criteo/publisher/model/InterstitialAdUnit;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance p1, Lcom/criteo/publisher/CriteoInterstitial;

    invoke-direct {p1, v0}, Lcom/criteo/publisher/CriteoInterstitial;-><init>(Lcom/criteo/publisher/model/InterstitialAdUnit;)V

    iput-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->d:Lcom/criteo/publisher/CriteoInterstitial;

    const/4 p1, 0x0

    const-string v0, "adm"

    .line 64
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    sget-object p1, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/criteo/publisher/Bid;

    :cond_1
    if-nez p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_2
    return-void

    .line 75
    :cond_3
    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v0

    const-string v2, "app_bidder_request_id"

    .line 76
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->f:Ljava/lang/String;

    .line 78
    iget-object p2, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->d:Lcom/criteo/publisher/CriteoInterstitial;

    new-instance v2, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;-><init>(Lcom/mopub/mobileads/CriteoBiddingInterstital;D)V

    invoke-virtual {p2, v2}, Lcom/criteo/publisher/CriteoInterstitial;->setCriteoInterstitialAdListener(Lcom/criteo/publisher/CriteoInterstitialAdListener;)V

    .line 128
    iget-object p2, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->d:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/CriteoInterstitial;->loadAd(Lcom/criteo/publisher/Bid;)V

    return-void

    .line 54
    :cond_4
    iget-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_5

    .line 55
    iget-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_5
    return-void
.end method

.method protected onInvalidate()V
    .locals 0

    return-void
.end method

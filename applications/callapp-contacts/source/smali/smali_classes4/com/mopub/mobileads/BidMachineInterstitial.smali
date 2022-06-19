.class public Lcom/mopub/mobileads/BidMachineInterstitial;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/BidMachineInterstitial$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "BidMachineInterstitial"


# instance fields
.field private e:Lio/bidmachine/interstitial/InterstitialAd;

.field private f:Ljava/lang/String;

.field private g:D

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Lcom/mopub/mobileads/BidMachineAdapterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->g:D

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->j:Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/BidMachineInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/mobileads/BidMachineInterstitial;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/mobileads/BidMachineInterstitial;)D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->g:D

    return-wide v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/mopub/mobileads/BidMachineInterstitial;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/mobileads/BidMachineInterstitial;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 97
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/BidMachineInterstitial;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->e:Lio/bidmachine/interstitial/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialAd;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->e:Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialAd;->show()V

    return-void

    .line 102
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 104
    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v3, v2, v1

    .line 102
    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    return-void
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    const-string v0, "bidmachine"

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 9

    .line 50
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->j:Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 1053
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    .line 56
    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->g:D

    const-string v1, "app_bidder_request_id"

    .line 57
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->h:Ljava/lang/String;

    const-string v1, "com_mopub_ad_unit_id"

    .line 58
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->f:Ljava/lang/String;

    const-string v1, "bm_id"

    .line 61
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 62
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-object v2, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/interstitial/InterstitialRequest;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 67
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Lcom/mopub/mobileads/BidMachineInterstitial;->d:Ljava/lang/String;

    aput-object v7, v6, v0

    const-string v8, "Fetched AdRequest not found"

    aput-object v8, v6, v4

    invoke-static {v5, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 70
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v0

    sget-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 72
    invoke-virtual {v7}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    sget-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v7, v6, v2

    .line 70
    invoke-static {v5, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_1

    .line 75
    :cond_1
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/mopub/mobileads/BidMachineInterstitial;->d:Ljava/lang/String;

    aput-object v6, v2, v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Fetched request resolved: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Lio/bidmachine/interstitial/InterstitialRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 75
    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 81
    :goto_1
    iget-object v2, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->j:Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    invoke-virtual {v2, p1, p2}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    if-eqz v1, :cond_3

    .line 84
    new-instance p2, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-direct {p2, p1}, Lio/bidmachine/interstitial/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->e:Lio/bidmachine/interstitial/InterstitialAd;

    .line 85
    new-instance p1, Lcom/mopub/mobileads/BidMachineInterstitial$a;

    invoke-direct {p1, p0, v3}, Lcom/mopub/mobileads/BidMachineInterstitial$a;-><init>(Lcom/mopub/mobileads/BidMachineInterstitial;Lcom/mopub/mobileads/BidMachineInterstitial$1;)V

    invoke-virtual {p2, p1}, Lio/bidmachine/interstitial/InterstitialAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 86
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->e:Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p1, v1}, Lio/bidmachine/interstitial/InterstitialAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    .line 88
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/mobileads/BidMachineInterstitial;->d:Ljava/lang/String;

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_4

    .line 91
    iget-object p1, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_4
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->e:Lio/bidmachine/interstitial/InterstitialAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Lio/bidmachine/interstitial/InterstitialAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->e:Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialAd;->destroy()V

    .line 122
    iput-object v1, p0, Lcom/mopub/mobileads/BidMachineInterstitial;->e:Lio/bidmachine/interstitial/InterstitialAd;

    :cond_0
    return-void
.end method

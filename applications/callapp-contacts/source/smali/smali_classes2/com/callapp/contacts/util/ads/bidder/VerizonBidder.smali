.class public Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;


# static fields
.field private static final AD_IMPRESSION_EVENT_ID:Ljava/lang/String; = "adImpression"


# instance fields
.field private adSize:Lcom/verizon/ads/inlineplacement/AdSize;

.field private bid:Lcom/verizon/ads/Bid;

.field private cacheKey:Ljava/lang/String;

.field private final clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

.field private moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private price:D

.field private requestId:Ljava/lang/String;

.field private verizonInlineAd:Lcom/verizon/ads/inlineplacement/InlineAdView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/verizon/ads/Bid;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->bid:Lcom/verizon/ads/Bid;

    return-object p0
.end method

.method static synthetic access$002(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/verizon/ads/Bid;)Lcom/verizon/ads/Bid;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->bid:Lcom/verizon/ads/Bid;

    return-object p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->price:D

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$102(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;D)D
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->price:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Ljava/util/Map;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->getServerExtras()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/verizon/ads/inlineplacement/InlineAdView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->verizonInlineAd:Lcom/verizon/ads/inlineplacement/InlineAdView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/verizon/ads/inlineplacement/InlineAdView;)Lcom/verizon/ads/inlineplacement/InlineAdView;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->verizonInlineAd:Lcom/verizon/ads/inlineplacement/InlineAdView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->clickReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->cacheKey:Ljava/lang/String;

    return-object p1
.end method

.method private getAdSize(I)Lcom/verizon/ads/inlineplacement/AdSize;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 298
    :cond_0
    new-instance p1, Lcom/verizon/ads/inlineplacement/AdSize;

    const/16 v0, 0x12c

    const/16 v1, 0xfa

    invoke-direct {p1, v0, v1}, Lcom/verizon/ads/inlineplacement/AdSize;-><init>(II)V

    .line 299
    sget-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    goto :goto_0

    .line 294
    :cond_1
    new-instance p1, Lcom/verizon/ads/inlineplacement/AdSize;

    const/16 v0, 0x140

    const/16 v1, 0x32

    invoke-direct {p1, v0, v1}, Lcom/verizon/ads/inlineplacement/AdSize;-><init>(II)V

    .line 295
    sget-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    :goto_0
    return-object p1
.end method

.method private getServerExtras()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->price:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callapp_floor_price"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->requestId:Ljava/lang/String;

    const-string v2, "app_bidder_request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 6

    .line 158
    new-instance v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/verizon/ads/inlineplacement/AdSize;

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->adSize:Lcom/verizon/ads/inlineplacement/AdSize;

    .line 159
    invoke-virtual {v4}, Lcom/verizon/ads/inlineplacement/AdSize;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->adSize:Lcom/verizon/ads/inlineplacement/AdSize;

    invoke-virtual {v5}, Lcom/verizon/ads/inlineplacement/AdSize;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/verizon/ads/inlineplacement/AdSize;-><init>(II)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;

    invoke-direct {v4, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;)V

    .line 178
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->bid:Lcom/verizon/ads/Bid;

    new-instance v2, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;

    invoke-direct {v2, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;-><init>(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1, v2}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->load(Lcom/verizon/ads/Bid;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;)V

    return-void
.end method

.method private loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 230
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 231
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 233
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->handler:Landroid/os/Handler;

    .line 235
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$4;-><init>(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    sget-object v0, Lcom/callapp/contacts/util/ads/BidObjectCache;->a:Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    iput-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->cacheKey:Ljava/lang/String;

    .line 327
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;-><init>(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->adSize:Lcom/verizon/ads/inlineplacement/AdSize;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/AdSize;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
    .locals 2

    .line 73
    invoke-static {}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->isInitialized()Z

    move-result p4

    if-nez p4, :cond_0

    .line 74
    new-instance p4, Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    invoke-direct {p4}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;-><init>()V

    .line 75
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4, p1, p5}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->isInitialized()Z

    move-result p4

    if-nez p4, :cond_1

    .line 79
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_1
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->context:Landroid/content/Context;

    .line 84
    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->requestId:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 87
    new-instance p4, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;

    invoke-direct {p4, p0, p3, p2}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/JSONBidder;)V

    .line 110
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide p5

    const-wide/16 v0, 0x0

    cmp-long p7, p5, v0

    if-lez p7, :cond_2

    .line 111
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p5

    const-class p6, Lcom/verizon/ads/Bid;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object p7

    const/4 v0, 0x0

    .line 1215
    invoke-virtual {p5, p6, p7, v0}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p5

    .line 111
    check-cast p5, Lcom/verizon/ads/Bid;

    iput-object p5, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->bid:Lcom/verizon/ads/Bid;

    .line 113
    :cond_2
    iget-object p5, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->bid:Lcom/verizon/ads/Bid;

    const/4 p6, 0x0

    if-nez p5, :cond_6

    .line 114
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p5

    const/4 p7, 0x1

    if-eq p5, p7, :cond_4

    const/4 p7, 0x2

    if-eq p5, p7, :cond_4

    const/4 p7, 0x4

    if-eq p5, p7, :cond_3

    .line 131
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_3
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p6, p4}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->requestBid(Landroid/content/Context;Ljava/lang/String;Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/BidRequestListener;)V

    return-void

    .line 117
    :cond_4
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result p5

    invoke-direct {p0, p5}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->getAdSize(I)Lcom/verizon/ads/inlineplacement/AdSize;

    move-result-object p5

    iput-object p5, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->adSize:Lcom/verizon/ads/inlineplacement/AdSize;

    if-nez p5, :cond_5

    .line 119
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object p5, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->adSize:Lcom/verizon/ads/inlineplacement/AdSize;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3, p6, p4}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->requestBid(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/BidRequestListener;)V

    return-void

    .line 134
    :cond_6
    iget-object p1, p5, Lcom/verizon/ads/Bid;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->price:D

    .line 135
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->bid:Lcom/verizon/ads/Bid;

    invoke-interface {p4, p1, p6}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 143
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/verizon/ads/Bid;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->loadInterstitialAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    :goto_0
    return-void

    .line 148
    :cond_2
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public synthetic notifyLoss()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/bidder/Bidder$-CC;->$default$notifyLoss(Lcom/callapp/contacts/util/ads/bidder/Bidder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerizonBidder{moPubView="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

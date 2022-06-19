.class public Lcom/pubmatic/sdk/openwrap/core/POBManager;
.super Lcom/pubmatic/sdk/common/base/POBBaseBidder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/openwrap/core/POBManager$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pubmatic/sdk/common/base/POBBaseBidder<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/pubmatic/sdk/common/base/POBCommunicator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/base/POBCommunicator<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/pubmatic/sdk/common/base/POBBidderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/common/base/POBCommunicator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBCommunicator<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/base/POBBaseBidder;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a:Lcom/pubmatic/sdk/common/base/POBCommunicator;

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBManager;Lcom/pubmatic/sdk/openwrap/core/POBManager$a;)V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->setListener(Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/pubmatic/sdk/openwrap/core/POBRequest;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/base/POBBaseBidder;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a(Landroid/content/Context;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/common/base/POBCommunicator;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a:Lcom/pubmatic/sdk/common/base/POBCommunicator;

    new-instance p2, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/pubmatic/sdk/openwrap/core/POBManager$b;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBManager;Lcom/pubmatic/sdk/openwrap/core/POBManager$a;)V

    invoke-virtual {p1, p2}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->setListener(Lcom/pubmatic/sdk/common/base/POBCommunicator$PMCommunicatorListener;)V

    return-void
.end method

.method private a()Lcom/pubmatic/sdk/common/base/POBAdBuilding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pubmatic/sdk/common/base/POBAdBuilding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;

    invoke-direct {v0}, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderResult;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->b:Lcom/pubmatic/sdk/common/base/POBBidderResult;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/common/base/POBCommunicator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/pubmatic/sdk/openwrap/core/POBRequest;",
            ")",
            "Lcom/pubmatic/sdk/common/base/POBCommunicator<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pubmatic/sdk/common/base/POBCommunicator;

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->b(Landroid/content/Context;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/common/base/POBRequestBuilding;

    move-result-object p2

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->b()Lcom/pubmatic/sdk/common/base/POBResponseParsing;

    move-result-object v1

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a()Lcom/pubmatic/sdk/common/base/POBAdBuilding;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object p1

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/pubmatic/sdk/common/base/POBCommunicator;-><init>(Lcom/pubmatic/sdk/common/base/POBRequestBuilding;Lcom/pubmatic/sdk/common/base/POBResponseParsing;Lcom/pubmatic/sdk/common/base/POBAdBuilding;Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->bidderListener:Lcom/pubmatic/sdk/common/base/POBBidderListener;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/common/base/POBRequestBuilding;
    .locals 2

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isRequestSecureCreative()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://ow.pubmatic.com/openrtb/2.5?"

    goto :goto_0

    :cond_0
    const-string v0, "http://ow.pubmatic.com/openrtb/2.5?"

    :goto_0
    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;

    invoke-direct {v1, p2, v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getAppInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/models/POBAppInfo;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->setAppInfo(Lcom/pubmatic/sdk/common/models/POBAppInfo;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getDeviceInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->setDeviceInfo(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getLocationDetector(Landroid/content/Context;)Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->setLocationDetector(Lcom/pubmatic/sdk/common/utility/POBLocationDetector;)V

    return-object v1
.end method

.method private b()Lcom/pubmatic/sdk/common/base/POBResponseParsing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pubmatic/sdk/common/base/POBResponseParsing<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/internal/POBResponseParser;

    invoke-direct {v0}, Lcom/pubmatic/sdk/openwrap/core/internal/POBResponseParser;-><init>()V

    return-object v0
.end method

.method static synthetic c(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->bidderListener:Lcom/pubmatic/sdk/common/base/POBBidderListener;

    return-object p0
.end method

.method static synthetic d(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->bidderListener:Lcom/pubmatic/sdk/common/base/POBBidderListener;

    return-object p0
.end method

.method static synthetic e(Lcom/pubmatic/sdk/openwrap/core/POBManager;)Lcom/pubmatic/sdk/common/base/POBBidderListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->bidderListener:Lcom/pubmatic/sdk/common/base/POBBidderListener;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->bidderListener:Lcom/pubmatic/sdk/common/base/POBBidderListener;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a:Lcom/pubmatic/sdk/common/base/POBCommunicator;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->cancel()V

    return-void
.end method

.method public getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->b:Lcom/pubmatic/sdk/common/base/POBBidderResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBidderResults()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->b:Lcom/pubmatic/sdk/common/base/POBBidderResult;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a:Lcom/pubmatic/sdk/common/base/POBCommunicator;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->getNetworkResult()Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->setNetworkResult(Lcom/pubmatic/sdk/common/network/POBNetworkResult;)V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->b:Lcom/pubmatic/sdk/common/base/POBBidderResult;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/base/POBBaseBidder;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a:Lcom/pubmatic/sdk/common/base/POBCommunicator;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->getNetworkResult()Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "POBManager"

    const-string v3, "Network result for bidder %s is : %s"

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public requestBid()V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/common/base/POBBidderResult;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/base/POBBidderResult;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->b:Lcom/pubmatic/sdk/common/base/POBBidderResult;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBManager;->a:Lcom/pubmatic/sdk/common/base/POBCommunicator;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/base/POBCommunicator;->requestAd()V

    return-void
.end method

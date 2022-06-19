.class public Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;,
        Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;,
        Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;,
        Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e;,
        Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;,
        Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/common/base/POBBidding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

.field private c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

.field private d:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;

.field private e:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

.field private f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

.field private j:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

.field private k:Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

.field private p:Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    new-instance v5, Lcom/pubmatic/sdk/openwrap/interstitial/POBDefaultInterstitialEventHandler;

    invoke-direct {v5}, Lcom/pubmatic/sdk/openwrap/interstitial/POBDefaultInterstitialEventHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    sget-object p1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->l:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    new-instance p1, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c;-><init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->i:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    new-instance p1, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;

    invoke-direct {p1, p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d;-><init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->j:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    new-instance p1, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e;

    invoke-direct {p1, p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e;-><init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->k:Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-object p1
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getRemainingExpirationTime()I

    move-result p1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBRenderer;->getInterstitialRenderer(Landroid/content/Context;I)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->e:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    return-object p1
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->r:Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getTrackerHandler(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    move-result-object v0

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    invoke-direct {v1, p1, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBRequest;Lcom/pubmatic/sdk/common/network/POBTrackerHandler;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->r:Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->r:Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBImpression;
    .locals 2

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->FULL_SCREEN:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setInterstitial(Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->q:Ljava/util/Map;

    return-object p1
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->m:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->q:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getAppInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/models/POBAppInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->q:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->executeLogger(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/POBError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v3

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lcom/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil;->notifyBidderLossWithError(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;Ljava/lang/String;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "POBInterstitial"

    const-string v0, "Impression not available, can not executed bidder loss notification for client side partner."

    invoke-static {p2, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    invoke-static {v0, v1, p1, p2}, Lcom/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil;->notifyBidderLoss(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g()V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 p2, 0x3e9

    const-string p3, "Missing ad request parameters. Please check input parameters."

    invoke-direct {p1, p2, p3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "POBInterstitial"

    invoke-static {p3, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    iput-object p4, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->i:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    invoke-interface {p4, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;->setEventListener(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;)V

    iget-object p4, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/pubmatic/sdk/common/base/POBBidding;->destroy()V

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    :cond_1
    const/4 p4, 0x1

    new-array p4, p4, [Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    invoke-direct {p0, p3}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object p3

    aput-object p3, p4, v1

    invoke-static {p1, p2, p4}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->createInstance(Ljava/lang/String;I[Lcom/pubmatic/sdk/openwrap/core/POBImpression;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->m:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    sget-object p1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/common/base/POBBidding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/openwrap/core/POBRequest;",
            ")",
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    invoke-static {v0, v1, p1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getNewInstance(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;)Lcom/pubmatic/sdk/common/base/POBBidding;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    new-instance p1, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b;-><init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBBidding;->setBidderListener(Lcom/pubmatic/sdk/common/base/POBBidderListener;)V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    return-object p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    move-result-object p0

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POBInterstitial"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;->onAdFailed(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->requestAd(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->i()V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0x3f3

    const-string v3, "Ad Expired"

    invoke-direct {v1, v2, v3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->EXPIRED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->e:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->e:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;->onAdExpired(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    :cond_2
    return-void
.end method

.method private c(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)V
    .locals 8

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/pubmatic/sdk/common/POBAdSize;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getInterstitialAdSize(Landroid/content/Context;)Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getCacheManager(Landroid/content/Context;)Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getPubId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getProfileId()I

    move-result v3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getVersionId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;

    invoke-direct {v7, p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;-><init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    invoke-virtual/range {v1 .. v7}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->requestPartnerConfiguration(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;)V

    return-void
.end method

.method static synthetic c(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->h()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->AD_SERVER_READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->j()V

    return-void
.end method

.method static synthetic d(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->k()V

    return-void
.end method

.method private e()V
    .locals 4

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {v2, v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    invoke-virtual {v2, v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setWinningBid(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proceeding with bid. Ad server integration is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBInterstitial"

    invoke-static {v3, v0, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return-void
.end method

.method static synthetic e(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c()V

    return-void
.end method

.method static synthetic f(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->m:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    return-object p0
.end method

.method private f()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->m:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getInterstitialAdSize(Landroid/content/Context;)Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/pubmatic/sdk/openwrap/core/POBVideo;

    sget-object v3, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->INTERSTITIAL:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    sget-object v4, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->LINEAR:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    invoke-direct {v2, v3, v4, v0}, Lcom/pubmatic/sdk/openwrap/core/POBVideo;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;Lcom/pubmatic/sdk/common/POBAdSize;)V

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setVideo(Lcom/pubmatic/sdk/openwrap/core/POBVideo;)V

    new-instance v2, Lcom/pubmatic/sdk/openwrap/core/POBBanner;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/pubmatic/sdk/common/POBAdSize;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBBanner;-><init>([Lcom/pubmatic/sdk/common/POBAdSize;)V

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setBanner(Lcom/pubmatic/sdk/openwrap/core/POBBanner;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->h:I

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->l:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "orientation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->m:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/common/base/POBBidding;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBBidding;->requestBid()V

    return-void

    :cond_0
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x3e9

    const-string v2, "Missing ad request parameters. Please check input parameters."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method static synthetic g(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->q:Ljava/util/Map;

    return-object p0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;->onAdClicked(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;->onAdClosed(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a()V

    return-void
.end method

.method static synthetic i(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->o:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    return-object p0
.end method

.method private i()V
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->SHOWN:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;->onAdOpened(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->l:Ljava/util/Map;

    return-object p0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;->onAdReceived(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->e:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    return-object p0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;->onAppLeaving(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->j:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    return-object p0
.end method

.method static synthetic n(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic o(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->k:Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;

    return-object p0
.end method

.method static synthetic p(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f()V

    return-void
.end method

.method static synthetic q(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->d:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;

    return-object p0
.end method

.method static synthetic r(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->d()V

    return-void
.end method

.method static synthetic s(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-object p0
.end method

.method static synthetic t(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0xbbb

    const-string v3, "Ad was never used to display"

    invoke-direct {v1, v2, v3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBBidding;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    :cond_1
    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->e:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    :cond_4
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->q:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->q:Ljava/util/Map;

    :cond_5
    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->d:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

    return-void
.end method

.method public getAdRequest()Lcom/pubmatic/sdk/openwrap/core/POBRequest;
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->m:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBInterstitial"

    const-string v2, "Please check if you have provided valid details while constructing an Ad object"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBid()Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    return-object v0
.end method

.method public getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;
    .locals 2

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->getAdRequest()Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getImpressions()[Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->AD_SERVER_READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public loadAd()V
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->m:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    const-string v1, "POBInterstitial"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v3, 0x3e9

    const-string v4, "Missing ad request parameters. Please check input parameters."

    invoke-direct {v0, v3, v4}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/common/POBError;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Can\'t make new request. Ad is loading."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Can\'t make new request. Please show already loaded ad before requesting a new one."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->m:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f()V

    :goto_0
    return-void

    :cond_5
    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Can\'t make new request. Ad is waiting, perform action on bid event."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public proceedOnError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->o:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    const-string v1, "POBInterstitial"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\'POBBidEventListener\' not implemented"

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Can not proceed before calling loadAd() or already in the process of proceed."

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Bid lost client side auction. Hence proceeding with error."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventHelper;->convertToPOBError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_3
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    instance-of p1, p1, Lcom/pubmatic/sdk/openwrap/interstitial/POBDefaultInterstitialEventHandler;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->e()V

    :goto_1
    return-void
.end method

.method public proceedToLoadAd()Z
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->o:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    const-string v1, "POBInterstitial"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "\'POBBidEventListener\' not implemented"

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Attempting to proceed before receiving bid"

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Bid won client side auction. Hence proceeding to load."

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->BID_EXPIRED:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    invoke-static {v4}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventHelper;->convertToPOBError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    instance-of v0, v0, Lcom/pubmatic/sdk/openwrap/interstitial/POBDefaultInterstitialEventHandler;

    if-eqz v0, :cond_3

    invoke-direct {p0, v4}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return v2

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Bid expired! Invoking ad server call by ignoring OpenWrap Bid."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->e()V

    return v3

    :cond_4
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Proceeding with bid."

    invoke-static {v1, v4, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return v3
.end method

.method public setBidEventListener(Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->o:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    return-void
.end method

.method public setListener(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->c:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener;

    return-void
.end method

.method public setVideoListener(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->d:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->AD_SERVER_READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;->show()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->e:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->h:I

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;->show(I)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->p:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->n:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil;->notifyBidderBidWin(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->EXPIRED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x3f3

    const-string v2, "Ad has expired."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->f:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->SHOWN:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x7d1

    const-string v2, "Ad is already shown."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x7d2

    const-string v2, "Can\'t show ad. Ad is not ready."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBInterstitial"

    invoke-static {v3, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->b(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_4
    :goto_1
    return-void
.end method

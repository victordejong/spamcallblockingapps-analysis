.class public Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$d;,
        Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;,
        Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;,
        Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;,
        Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;,
        Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;
    }
.end annotation


# static fields
.field private static final v:Lcom/pubmatic/sdk/common/POBAdSize;

.field private static w:Z


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/pubmatic/sdk/common/base/POBBidding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/base/POBBidding<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

.field private e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

.field private f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

.field private j:Lcom/pubmatic/sdk/common/utility/POBLooper;

.field private k:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

.field private l:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

.field private m:Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;

.field private n:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

.field private o:Z

.field private p:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

.field private s:Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
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

.field private u:Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/POBAdSize;->BANNER_SIZE_300x250:Lcom/pubmatic/sdk/common/POBAdSize;

    sput-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->v:Lcom/pubmatic/sdk/common/POBAdSize;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->i:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->init(Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;)V
    .locals 6

    new-instance v5, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;

    invoke-direct {v5, p5}, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;-><init>([Lcom/pubmatic/sdk/common/POBAdSize;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;[Lcom/pubmatic/sdk/common/POBAdSize;)Lcom/pubmatic/sdk/common/POBError;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b(Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;[Lcom/pubmatic/sdk/common/POBAdSize;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 p2, 0x3e9

    const-string p3, "Missing ad request parameters. Please check."

    invoke-direct {p1, p2, p3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/ui/POBBannerRendering;)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->p:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->u:Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getTrackerHandler(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    move-result-object v0

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    invoke-direct {v1, p1, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBRequest;Lcom/pubmatic/sdk/common/network/POBTrackerHandler;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->u:Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->u:Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->t:Ljava/util/Map;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->d:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setState(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/pubmatic/sdk/common/utility/POBLooper;->loop(J)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->l()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->g:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->i()V

    :cond_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m()V

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a:I

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(I)V

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b(Lcom/pubmatic/sdk/common/POBError;)V

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

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lcom/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil;->notifyBidderLossWithError(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;Ljava/lang/String;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "POBBannerView"

    const-string v0, "Impression not available, can not executed bidder loss notification for client side partner."

    invoke-static {p2, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/common/POBError;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setState(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setRefreshInterval(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->requestAd(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    invoke-static {v0, v1, p1, p2}, Lcom/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil;->notifyBidderLoss(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->w:Z

    return v0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->h:Z

    return p1
.end method

.method private a([Lcom/pubmatic/sdk/common/POBAdSize;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    sget-object v4, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->v:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v4, v3}, Lcom/pubmatic/sdk/common/POBAdSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
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

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c:Lcom/pubmatic/sdk/common/base/POBBidding;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    invoke-static {v0, v1, p1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getNewInstance(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;)Lcom/pubmatic/sdk/common/base/POBBidding;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c:Lcom/pubmatic/sdk/common/base/POBBidding;

    new-instance p1, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$e;-><init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c:Lcom/pubmatic/sdk/common/base/POBBidding;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBBidding;->setBidderListener(Lcom/pubmatic/sdk/common/base/POBBidderListener;)V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c:Lcom/pubmatic/sdk/common/base/POBBidding;

    return-object p1
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->t:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getAppInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/models/POBAppInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->t:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->executeLogger(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->o:Z

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->n:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->p:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->n:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->p:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m()V

    return-void
.end method

.method private b(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;->onAdFailed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c()V

    return-void
.end method

.method private varargs b(Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;[Lcom/pubmatic/sdk/common/POBAdSize;)Z
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p4}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNull([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()V
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->w:Z

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->resume()V

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->h()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->k()V

    return-void
.end method

.method private c(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)V
    .locals 8

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getCacheManager(Landroid/content/Context;)Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getPubId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getProfileId()I

    move-result v3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getVersionId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    invoke-interface {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;->requestedAdSizes()[Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v6

    new-instance v7, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;

    invoke-direct {v7, p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;-><init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    invoke-virtual/range {v1 .. v7}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->requestPartnerConfiguration(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;)V

    return-void
.end method

.method static synthetic d(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->w:Z

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->pause()V

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j()V

    :cond_1
    iget v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b:I

    return-void
.end method

.method static synthetic e(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->t:Ljava/util/Map;

    return-object p0
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->h:Z

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setState(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/common/base/POBBidding;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBBidding;->requestBid()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0x3e9

    const-string v3, "Missing ad request parameters. Please check."

    invoke-direct {v1, v2, v3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b(Lcom/pubmatic/sdk/common/POBError;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBBannerView"

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 4

    sget-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setState(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {v2, v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    invoke-virtual {v2, v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setWinningBid(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proceeding with bid. Ad server integration is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBBannerView"

    invoke-static {v3, v0, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return-void
.end method

.method static synthetic f(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->o:Z

    return p0
.end method

.method static synthetic g(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->n:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    return-object p0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->o:Z

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e()V

    return-void
.end method

.method private getImpressionId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;->onAdClosed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e()V

    return-void
.end method

.method static synthetic i(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a:I

    return p0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;->onAdReceived(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;->onAdOpened(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->b()V

    return-void
.end method

.method static synthetic k(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->r:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    return-object p0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;->onAppLeaving(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j()V

    return-void
.end method

.method static synthetic m(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    return-object p0
.end method

.method private m()V
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setState(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->p:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    return-object p0
.end method

.method static synthetic o(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->l:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    return-object p0
.end method

.method static synthetic p(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->g()V

    return-void
.end method

.method static synthetic q(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-object p0
.end method

.method static synthetic r(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    return-object p0
.end method

.method private setRefreshInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    :cond_0
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getValidRefreshInterval(II)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a:I

    if-lez p1, :cond_1

    new-instance p1, Lcom/pubmatic/sdk/common/utility/POBLooper;

    invoke-direct {p1}, Lcom/pubmatic/sdk/common/utility/POBLooper;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m:Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->setListener(Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkMonitor(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->setNetworkMonitor(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V

    :cond_1
    return-void
.end method

.method private setRefreshInterval(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getRefreshInterval()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setRefreshInterval(I)V

    return-void
.end method

.method private setState(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->i:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    return-void
.end method

.method private setWrapperEvent(Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->k:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;->setEventListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBBannerView"

    const-string v2, "destroy invoked."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setState(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->j:Lcom/pubmatic/sdk/common/utility/POBLooper;

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c:Lcom/pubmatic/sdk/common/base/POBBidding;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBBidding;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c:Lcom/pubmatic/sdk/common/base/POBBidding;

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->n:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->n:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->p:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->p:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    :cond_3
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    :cond_5
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->t:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->t:Ljava/util/Map;

    :cond_6
    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    return-void
.end method

.method public getAdRequest()Lcom/pubmatic/sdk/openwrap/core/POBRequest;
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBBannerView"

    const-string v2, "Please call POBBannerView.init() before calling getAdRequest()"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBid()Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeSize()Lcom/pubmatic/sdk/common/POBAdSize;
    .locals 3

    iget-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->v:Lcom/pubmatic/sdk/common/POBAdSize;

    return-object v0

    :cond_0
    new-instance v1, Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBBannerView"

    const-string v2, "getCreativeSize() called for null bid"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;->getAdSize()Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v0

    return-object v0
.end method

.method public getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;
    .locals 2

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getAdRequest()Lcom/pubmatic/sdk/openwrap/core/POBRequest;

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

.method public init(Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;)V
    .locals 4

    invoke-interface {p4}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;->requestedAdSizes()[Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;[Lcom/pubmatic/sdk/common/POBAdSize;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBError;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "POBBannerView"

    invoke-static {p3, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->destroy()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->q:Ljava/util/Map;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$d;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$d;-><init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->k:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;

    invoke-direct {v1, p0, v3}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$f;-><init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->l:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;

    invoke-direct {v1, p0, v3}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;-><init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m:Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;

    invoke-direct {p0, p4}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setWrapperEvent(Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;)V

    new-instance p4, Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getImpressionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1, p3}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/pubmatic/sdk/openwrap/core/POBBanner;

    invoke-direct {p3, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBanner;-><init>([Lcom/pubmatic/sdk/common/POBAdSize;)V

    invoke-virtual {p4, p3}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setBanner(Lcom/pubmatic/sdk/openwrap/core/POBBanner;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a([Lcom/pubmatic/sdk/common/POBAdSize;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Lcom/pubmatic/sdk/openwrap/core/POBVideo;

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->IN_BANNER:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    sget-object v1, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->LINEAR:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    sget-object v3, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->v:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-direct {p3, v0, v1, v3}, Lcom/pubmatic/sdk/openwrap/core/POBVideo;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;Lcom/pubmatic/sdk/common/POBAdSize;)V

    invoke-virtual {p4, p3}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setVideo(Lcom/pubmatic/sdk/openwrap/core/POBVideo;)V

    :cond_1
    const/4 p3, 0x1

    new-array p3, p3, [Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    aput-object p4, p3, v2

    invoke-static {p1, p2, p3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->createInstance(Ljava/lang/String;I[Lcom/pubmatic/sdk/openwrap/core/POBImpression;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    if-eqz p1, :cond_2

    const/16 p1, 0x1e

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setRefreshInterval(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs init(Ljava/lang/String;ILjava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;)V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;

    invoke-direct {v0, p4}, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;-><init>([Lcom/pubmatic/sdk/common/POBAdSize;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->init(Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;)V

    return-void
.end method

.method public loadAd()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    const-string v1, "POBBannerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Unable to process loadAd() please ensure banner is initialized with valid ad tag details"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->i:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    sget-object v3, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->i:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->d:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->g()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Skipping loadAd() as ad is already in %s state"

    invoke-static {v1, v0, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public proceedOnError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)V
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->r:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    const-string v1, "POBBannerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\'POBBidEventListener\' not implemented"

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->i:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    sget-object v3, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->c:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    if-ne v0, v3, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Bid lost client side auction. Hence proceeding with error."

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventHelper;->convertToPOBError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    instance-of v3, v3, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notified with error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m()V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setRefreshInterval(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    iget p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a:I

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f()V

    goto :goto_0

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Can not proceed before calling loadAd() or already in the process of proceed."

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public proceedToLoadAd()Z
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->r:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    const-string v1, "POBBannerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "\'POBBidEventListener\' not implemented"

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->i:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    sget-object v3, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->c:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    if-ne v0, v3, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Bid won client side auction. Hence proceeding to load."

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Proceeding with bid."

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->s:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->BID_EXPIRED:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    invoke-static {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventHelper;->convertToPOBError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/common/POBError;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->e:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;

    instance-of v0, v0, Lcom/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler;

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return v2

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Bid expired! Invoking ad server call by ignoring OpenWrap Bid."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f()V

    return v4

    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;->b:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setState(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$b;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return v4

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Can not proceed before calling loadAd() or already in the process of proceed."

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public setBidEventListener(Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->r:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    return-void
.end method

.method public setListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    return-void
.end method

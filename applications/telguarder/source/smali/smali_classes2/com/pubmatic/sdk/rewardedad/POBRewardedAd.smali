.class public Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;,
        Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;,
        Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$d;,
        Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;
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

.field private b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

.field private c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

.field private d:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

.field private e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field private f:Landroid/content/Context;

.field private g:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEventListener;

.field private h:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

.field private i:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

.field private j:Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    new-instance v5, Lcom/pubmatic/sdk/rewardedad/POBDefaultRewardedAdEventHandler;

    invoke-direct {v5}, Lcom/pubmatic/sdk/rewardedad/POBDefaultRewardedAdEventHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance v0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$c;-><init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$a;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEventListener;

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f:Landroid/content/Context;

    invoke-direct/range {p0 .. p5}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBDataType$POBAdState;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    return-object p1
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/common/base/POBBidding;
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

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getNewInstance(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;)Lcom/pubmatic/sdk/common/base/POBBidding;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    new-instance p1, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;

    invoke-direct {p1, p0, v2}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$b;-><init>(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$a;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBBidding;->setBidderListener(Lcom/pubmatic/sdk/common/base/POBBidderListener;)V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBImpression;
    .locals 3

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object p1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->FULL_SCREEN:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setInterstitial(Z)V

    return-object v0
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->k:Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBRewardedAd"

    const-string v2, "Invalid value for skip alert. SDK will use default skip alert."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f:Landroid/content/Context;

    sget v2, Lcom/pubmatic/sdk/rewardedad/R$string;->openwrap_skip_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f:Landroid/content/Context;

    sget v3, Lcom/pubmatic/sdk/rewardedad/R$string;->openwrap_skip_dialog_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f:Landroid/content/Context;

    sget v4, Lcom/pubmatic/sdk/rewardedad/R$string;->openwrap_skip_dialog_resume_btn:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f:Landroid/content/Context;

    sget v5, Lcom/pubmatic/sdk/rewardedad/R$string;->openwrap_skip_dialog_close_btn:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->k:Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getRemainingExpirationTime()I

    move-result p1

    iget-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->k:Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;

    invoke-static {v0, p1, v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedUtil;->getRewardedRenderer(Landroid/content/Context;ILcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;)V
    .locals 2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;)Z

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

    const-string p3, "POBRewardedAd"

    invoke-static {p3, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-direct {p0, p5}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBBidding;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    invoke-direct {p0, p4}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object p4

    aput-object p4, p1, v1

    invoke-static {p2, p3, p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->createInstance(Ljava/lang/String;I[Lcom/pubmatic/sdk/openwrap/core/POBImpression;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    sget-object p1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j()V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;)V
    .locals 1

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEventListener;

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;->setEventListener(Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEventListener;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;)Z
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

.method static synthetic b(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->EXPIRED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;->onAdExpired(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POBRewardedAd"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;->onAdFailed(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->requestAd(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b()V

    return-void
.end method

.method static synthetic c(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/openwrap/core/POBRequest;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->AD_SERVER_READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i()V

    return-void
.end method

.method static synthetic d(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->h:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    return-object p0
.end method

.method private d()V
    .locals 4

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {v2, v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    invoke-virtual {v2, v1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setWinningBid(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proceeding with bid. Ad server integration is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBRewardedAd"

    invoke-static {v3, v0, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return-void
.end method

.method static synthetic e(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    return-object p0
.end method

.method private e()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getInterstitialAdSize(Landroid/content/Context;)Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/pubmatic/sdk/openwrap/core/POBVideo;

    sget-object v3, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->INTERSTITIAL:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    sget-object v4, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->LINEAR:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    invoke-direct {v2, v3, v4, v0}, Lcom/pubmatic/sdk/openwrap/core/POBVideo;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;Lcom/pubmatic/sdk/common/POBAdSize;)V

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setVideo(Lcom/pubmatic/sdk/openwrap/core/POBVideo;)V

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Lcom/pubmatic/sdk/common/base/POBBidding;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBBidding;->requestBid()V

    return-void

    :cond_0
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x3e9

    const-string v2, "Missing ad request parameters. Please check input parameters."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method static synthetic f(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    return-object p0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;->onAdClicked(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    return-object p0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;->onAdClosed(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->SHOWN:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;->onAdOpened(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->h()V

    return-void
.end method

.method static synthetic i(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    return-object p0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;->onAdReceived(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;->onAppLeaving(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->g()V

    return-void
.end method

.method static synthetic k(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c()V

    return-void
.end method

.method static synthetic l(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->f()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBBidding;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a:Lcom/pubmatic/sdk/common/base/POBBidding;

    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBaseEvent;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    :cond_1
    iput-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->k:Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;

    return-void
.end method

.method public getAdRequest()Lcom/pubmatic/sdk/openwrap/core/POBRequest;
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBRewardedAd"

    const-string v2, "Please check if you have provided valid details while constructing an Ad object"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    return-object v0
.end method

.method public getBid()Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    return-object v0
.end method

.method public getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;
    .locals 2

    invoke-virtual {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->getAdRequest()Lcom/pubmatic/sdk/openwrap/core/POBRequest;

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

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

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

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->i:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    const-string v1, "POBRewardedAd"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v3, 0x3e9

    const-string v4, "Missing ad request parameters. Please check input parameters."

    invoke-direct {v0, v3, v4}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b(Lcom/pubmatic/sdk/common/POBError;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Can\'t make new request. Ad is loading."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Can\'t make new request. Please show already loaded ad before requesting a new one."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e()V

    return-void

    :cond_4
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Can\'t make new request. Ad is waiting, perform action on bid event."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public proceedOnError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)V
    .locals 3

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->h:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    const-string v0, "POBRewardedAd"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "\'POBBidEventListener\' not implemented"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v2, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Can not proceed before calling loadAd() or already in the process of proceed."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Bid lost client side auction. Hence proceeding with error."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    instance-of p1, p1, Lcom/pubmatic/sdk/rewardedad/POBDefaultRewardedAdEventHandler;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d()V

    :goto_1
    return-void
.end method

.method public proceedToLoadAd()Z
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->h:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    const-string v1, "POBRewardedAd"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "\'POBBidEventListener\' not implemented"

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Can not proceed before calling loadAd() or already in the process of proceed."

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Bid won client side auction. Hence proceeding to load."

    invoke-static {v1, v3, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->j:Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBiddingManager;->getWinningBid(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    instance-of v0, v0, Lcom/pubmatic/sdk/rewardedad/POBDefaultRewardedAdEventHandler;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->BID_EXPIRED:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBidEventHelper;->convertToPOBError(Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->a(Lcom/pubmatic/sdk/common/POBError;)V

    return v2

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Bid expired! Invoking ad server call by ignoring OpenWrap Bid."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d()V

    return v3

    :cond_4
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Proceeding with bid."

    invoke-static {v1, v4, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    iput-object v1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return v3
.end method

.method public setBidEventListener(Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->h:Lcom/pubmatic/sdk/openwrap/core/POBBidEventListener;

    return-void
.end method

.method public setListener(Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->c:Lcom/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener;

    return-void
.end method

.method public setSkipAlertDialogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->k:Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->AD_SERVER_READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b:Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAdEvent;->show()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->d:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;->show()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

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
    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->e:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

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
    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/rewardedad/POBRewardedAd;->b(Lcom/pubmatic/sdk/common/POBError;)V

    :goto_1
    return-void
.end method

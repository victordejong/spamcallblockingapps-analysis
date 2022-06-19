.class public Lcom/pubmatic/sdk/video/player/POBVastPlayer;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;
.implements Lcom/pubmatic/sdk/video/player/POBProgressiveEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/video/player/POBVastPlayer$OnSkipButtonAppear;,
        Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;
    }
.end annotation


# static fields
.field public static final MEDIA_CONTROL_VISIBILITY_DELAY:I = 0xc8


# instance fields
.field private a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

.field private b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

.field private c:I

.field private d:Lcom/pubmatic/sdk/common/POBAdSize;

.field private e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageButton;

.field private h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

.field private final i:Landroid/view/View$OnClickListener;

.field private j:D

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/TextView;

.field private n:Lcom/pubmatic/sdk/video/POBVastErrorHandler;

.field private o:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

.field private p:Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;

.field private q:Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

.field private r:Lcom/pubmatic/sdk/video/player/POBIconView;

.field private s:Lcom/pubmatic/sdk/video/player/POBVastPlayer$OnSkipButtonAppear;

.field private t:Lcom/pubmatic/sdk/video/player/POBEndCardView;

.field private u:Z

.field private v:Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

.field private w:Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;

.field private x:Lcom/pubmatic/sdk/video/vastparser/POBVastParserListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pubmatic/sdk/video/POBVastPlayerConfig;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->c:I

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer$a;-><init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->i:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->u:Z

    sget-object v0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;->ANY:Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->w:Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$b;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer$b;-><init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->x:Lcom/pubmatic/sdk/video/vastparser/POBVastParserListener;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object p1

    invoke-static {p1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getTrackerHandler(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    new-instance v0, Lcom/pubmatic/sdk/video/POBVastErrorHandler;

    invoke-direct {v0, p1}, Lcom/pubmatic/sdk/video/POBVastErrorHandler;-><init>(Lcom/pubmatic/sdk/common/network/POBTrackerHandler;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->n:Lcom/pubmatic/sdk/video/POBVastErrorHandler;

    iput-object p2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->v:Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    return-void
.end method

.method private a(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x192

    return p1

    :cond_0
    const/16 p1, 0x195

    return p1
.end method

.method private a(Landroid/content/Context;)Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;
    .locals 4

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-direct {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setListener(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;)V

    new-instance v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerController;

    invoke-direct {v1, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerController;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x50

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->setControllerView(Lcom/pubmatic/sdk/video/player/POBPlayerController;Landroid/widget/FrameLayout$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V

    return-object v0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    return-object p0
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "POBVastPlayer"

    const-string v3, "Rendering end-card."

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/pubmatic/sdk/video/player/POBEndCardView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pubmatic/sdk/video/player/POBEndCardView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->t:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->getLearnMoreTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->setLearnMoreTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->t:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    new-instance v2, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;

    invoke-direct {v2, p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer$c;-><init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)V

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->setListener(Lcom/pubmatic/sdk/video/player/POBEndCardView$b;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCombinedCompanions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->d:Lcom/pubmatic/sdk/common/POBAdSize;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdWidth()I

    move-result v2

    invoke-static {v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result v2

    iget-object v3, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->d:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdHeight()I

    move-result v3

    invoke-static {v3}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result v3

    :cond_0
    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3, v4, v5}, Lcom/pubmatic/sdk/video/player/POBVastPlayerUtil;->getSuitableEndCardCompanion(Ljava/util/List;IIFF)Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->q:Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    new-instance v2, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v3, 0x259

    const-string v4, "Couldn\'t find suitable end-card."

    invoke-direct {v2, v3, v4}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->t:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    iget-object v2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->q:Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    new-instance v2, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v3, 0x25b

    const-string v4, "No companion found as an end-card."

    invoke-direct {v2, v3, v4}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->t:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->a(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->t:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Z)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageButton;->bringToFront()V

    :cond_3
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->r:Lcom/pubmatic/sdk/video/player/POBIconView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_4
    return-void
.end method

.method private a(ILcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->p:Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCombinedTrackingEventList(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->p:Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p2, v0}, Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;->addProgressUrls(Ljava/lang/Integer;Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 5

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;-><init>(Lcom/pubmatic/sdk/video/player/POBProgressiveEventListener;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->p:Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;

    const-wide/16 v0, 0x19

    mul-long v0, v0, p1

    long-to-int v1, v0

    div-int/lit8 v1, v1, 0x64

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->FIRST_QUARTILE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v1, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(ILcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    const-wide/16 v0, 0x32

    mul-long v0, v0, p1

    long-to-int v1, v0

    div-int/lit8 v1, v1, 0x64

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->MID_POINT:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v1, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(ILcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    const-wide/16 v0, 0x4b

    mul-long v0, v0, p1

    long-to-int v1, v0

    div-int/lit8 v1, v1, 0x64

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->THIRD_QUARTILE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v1, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(ILcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;->PROGRESS_TRACKING_EVENT:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCombinedObjectList(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;

    instance-of v2, v1, Lcom/pubmatic/sdk/video/vastmodels/POBTracking;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/pubmatic/sdk/video/vastmodels/POBTracking;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBTracking;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/vastmodels/POBTracking;->getOffset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertToSeconds(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v1, v3

    iget-object v3, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->p:Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->PROGRESS:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-virtual {v3, v1, v4, v2}, Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;->addProgressUrls(Ljava/lang/Integer;Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POBVastPlayer"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;->onFailedToPlay(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getContentWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getContentHeight()I

    move-result p2

    invoke-static {v0, v1, p2}, Lcom/pubmatic/sdk/video/player/a;->a(Landroid/content/Context;II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/pubmatic/sdk/video/R$id;->learn_more_btn:I

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->getLearnMoreTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pubmatic/sdk/video/R$color;->pob_controls_background_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/pubmatic/sdk/video/player/a;->a(Landroid/content/Context;ILjava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
    .locals 7

    const-string v0, "POBVastPlayer"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getResource()Lcom/pubmatic/sdk/video/vastmodels/POBResource;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getOffset()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getProgram()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "Rendering icon for program %s after offset %s for duration %s"

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBIconView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pubmatic/sdk/video/player/POBIconView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->r:Lcom/pubmatic/sdk/video/player/POBIconView;

    sget v1, Lcom/pubmatic/sdk/video/R$id;->industry_icon_one:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->r:Lcom/pubmatic/sdk/video/player/POBIconView;

    new-instance v1, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer$d;-><init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/video/player/POBIconView;->setListener(Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->r:Lcom/pubmatic/sdk/video/player/POBIconView;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/video/player/POBIconView;->a(Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Icon resource is unavailable."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/vastmodels/POBLinear;)V
    .locals 10

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->getMediaFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->getSkipOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->j:D

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkMonitor(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->isWiFiConnected()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerUtil;->getScaleFactor(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayerUtil;->getBitRate(ZZ)I

    move-result v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    if-ne v1, v3, :cond_1

    const-string v1, "low"

    goto :goto_1

    :cond_1
    const-string v1, "high"

    :goto_1
    aput-object v1, v6, v2

    if-eqz v0, :cond_2

    const-string v0, "wifi"

    goto :goto_2

    :cond_2
    const-string v0, "non-wifi"

    :goto_2
    aput-object v0, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const-string v0, "POBVastPlayer"

    const-string v7, "Expected bitrate for %s resolution & %s network is %d"

    invoke-static {v0, v7, v6}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->getMediaFiles()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->m:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    iget-object v8, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->o:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    iget v9, v8, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->screenWidth:I

    iget v8, v8, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->screenHeight:I

    invoke-static {v6, v7, v4, v9, v8}, Lcom/pubmatic/sdk/video/player/POBVastPlayerUtil;->filterMediaFiles(Ljava/util/List;[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;III)Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;->getMediaFiles()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    sget-object p1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->m:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v7, v1

    const-string p1, "Selected media file: %s from media files: %s, for bitrate: %d & size: %s & supported mimes: %s"

    invoke-static {v0, p1, v7}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->getMediaFileURL()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v3, "Selected media file: %s"

    invoke-static {v0, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Landroid/content/Context;)Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->j()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->d()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->load(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Z)V

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    new-instance p1, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v0, 0x193

    const-string v1, "No supported media file found for linear ad."

    invoke-direct {p1, v0, v1}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance p1, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v0, 0x191

    const-string v1, "Media file not found for linear ad."

    invoke-direct {p1, v0, v1}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    :goto_3
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-direct {p0, v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V

    :cond_5
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBVastPlayer"

    const-string v2, "Vast player started rendering."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;->getVastCreativeType()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;->LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$CreativeType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->w:Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;->LINEAR:Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;->ANY:Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;

    if-ne v0, v1, :cond_1

    :cond_0
    check-cast p1, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBLinear;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v0, 0xc9

    const-string v1, "Expected linearity not found."

    invoke-direct {p1, v0, v1}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v0, 0x190

    const-string v1, "No ad creative found."

    invoke-direct {p1, v0, v1}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-direct {p0, v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;->ERRORS:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCombinedList(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->n:Lcom/pubmatic/sdk/video/POBVastErrorHandler;

    invoke-virtual {v0, p1, p2}, Lcom/pubmatic/sdk/video/POBVastErrorHandler;->executeVastErrors(Ljava/util/List;Lcom/pubmatic/sdk/video/POBVastError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->n:Lcom/pubmatic/sdk/video/POBVastErrorHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/pubmatic/sdk/video/POBVastErrorHandler;->executeVastErrors(Ljava/util/List;Lcom/pubmatic/sdk/video/POBVastError;)V

    :goto_0
    invoke-static {p2}, Lcom/pubmatic/sdk/video/POBVastErrorHandler;->convertToPOBError(Lcom/pubmatic/sdk/video/POBVastError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    const-string v1, "POBVastPlayer"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Event occurred: %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCombinedTrackingEventList(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    iget-object v2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getAdServingId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[ADSERVINGID]"

    invoke-virtual {v1, v0, v3, v2}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTrackers(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Selected Vast Ad is null"

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;->onOpenLandingPage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->getControllerView()Lcom/pubmatic/sdk/video/player/POBPlayerController;

    move-result-object v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/video/player/a;->b(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/pubmatic/sdk/video/player/a;->a(Landroid/view/View;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/video/player/a;->b(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Lcom/pubmatic/sdk/video/player/a;->a(Landroid/view/View;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/POBUIUtil;->createCloseButton(Landroid/content/Context;)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b(Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;-><init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getOffset()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->c(Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V

    return-void
.end method

.method private b(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;->onVideoEventOccurred(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/pubmatic/sdk/video/R$id;->skip_duration_timer:I

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/video/player/a;->a(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c(Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
    .locals 5

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getDuration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/pubmatic/sdk/video/player/POBVastPlayer$f;

    invoke-direct {v3, p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer$f;-><init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/player/POBIconView;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/vastmodels/POBIcon;->getViewTrackers()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTrackers(Ljava/util/List;)V

    return-void
.end method

.method private d()V
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->u:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->c()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->u:Z

    return p0
.end method

.method static synthetic e(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)D
    .locals 2

    iget-wide v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->j:D

    return-wide v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->CLOSE_LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->CLOSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->SKIP:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->f:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->CLOSE_LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCombinedTrackingEventList(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->CLOSE_LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->CLOSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->SKIP:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->SKIP:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    :goto_2
    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    :cond_4
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;->CLICKTRACKING:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "POBVastPlayer"

    const-string v2, "Event occurred: %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    sget-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;->CLICKTRACKING:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCombinedList(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTrackers(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h()V

    return-void
.end method

.method static synthetic g(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->p:Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;

    return-object p0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLearnMoreTitle()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openwrap_learn_more_title"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Learn More"

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->s:Lcom/pubmatic/sdk/video/player/POBVastPlayer$OnSkipButtonAppear;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer$OnSkipButtonAppear;->skipButtonAppear()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->f()V

    return-void
.end method

.method static synthetic i(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    return-object p0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getClosestIcon()Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBVideoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    return-object p0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->v:Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->getMediaUriTimeout()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->setPrepareTimeout(I)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->v:Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->isPlayOnMute()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->playOnMute(Z)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->q:Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    return-object p0
.end method

.method static synthetic l(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/common/network/POBTrackerHandler;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    return-object p0
.end method

.method static synthetic m(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBIconView;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->r:Lcom/pubmatic/sdk/video/player/POBIconView;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBVastPlayer"

    const-string v2, "Vast player destroy called!"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;->IMPRESSIONS:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    sget-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->LOADED:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->NOT_USED:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->u:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->t:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->setListener(Lcom/pubmatic/sdk/video/player/POBEndCardView$b;)V

    :cond_3
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->r:Lcom/pubmatic/sdk/video/player/POBIconView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->r:Lcom/pubmatic/sdk/video/player/POBIconView;

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->t:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    iput-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    iput-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->x:Lcom/pubmatic/sdk/video/vastparser/POBVastParserListener;

    return-void
.end method

.method public getSkipabilityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->u:Z

    return v0
.end method

.method public getVastPlayerConfig()Lcom/pubmatic/sdk/video/POBVastPlayerConfig;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->v:Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    return-object v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v0

    new-instance v1, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;

    iget v2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->c:I

    iget-object v3, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->x:Lcom/pubmatic/sdk/video/vastparser/POBVastParserListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;ILcom/pubmatic/sdk/video/vastparser/POBVastParserListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->v:Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->getWrapperUriTimeout()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->setWrapperTimeout(I)V

    invoke-virtual {v1, p1}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->parse(Ljava/lang/String;)V

    return-void
.end method

.method public onBufferUpdate(I)V
    .locals 0

    return-void
.end method

.method public onCompletion()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->COMPLETE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->COMPLETE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k:J

    long-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;->onPlaybackCompleted(F)V

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a()V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(I)I

    move-result p1

    new-instance v0, Lcom/pubmatic/sdk/video/POBVastError;

    invoke-direct {v0, p1, p2}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;Lcom/pubmatic/sdk/video/POBVastError;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h()V

    :cond_1
    return-void
.end method

.method public onMute(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->MUTE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    sget-object p1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->MUTE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->UNMUTE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    sget-object p1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->UNMUTE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    :goto_0
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBVastPlayer"

    const-string v2, "Playback paused."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->PAUSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->PAUSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    return-void
.end method

.method public onProgressReached(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "POBVastPlayer"

    const-string v4, "Event occurred: %s"

    invoke-static {v3, v4, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getAdServingId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[ADSERVINGID]"

    invoke-virtual {v3, v0, v4, v2}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTrackers(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;

    invoke-direct {v0, p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;-><init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReadyToPlay(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V
    .locals 4

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->getMediaDuration()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k:J

    iget-boolean p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->u:Z

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->j:D

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->v:Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    invoke-static {v2, v3, p1, v0, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerUtil;->getSkipOffset(DLcom/pubmatic/sdk/video/POBVastPlayerConfig;J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->j:D

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-wide v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-wide v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->j:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "POBVastPlayer"

    const-string v1, "Video duration: %s seconds, skip option will be available after %s seconds."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    iget-wide v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->j:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;->onReadyToPlay(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;F)V

    :cond_1
    sget-object p1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->LOADED:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    iget-wide v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k:J

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(J)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBVastPlayer"

    const-string v2, "Playback started."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->RESUME:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->RESUME:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "POBVastPlayer"

    const-string v3, "Playback started."

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Z)V

    sget-object v3, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;->IMPRESSIONS:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;

    iget-object v4, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    if-eqz v4, :cond_2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "Event occurred: %s"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCombinedList(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isRequestSecureCreative()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sanitizeURLScheme(Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTrackers(Ljava/util/List;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->l:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->START:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->h:Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCreative()Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;

    move-result-object v0

    instance-of v0, v0, Lcom/pubmatic/sdk/video/vastmodels/POBLinear;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    iget-wide v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->k:J

    long-to-float v1, v1

    iget-object v2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->v:Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->isPlayOnMute()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;->onVideoStarted(FF)V

    :cond_1
    invoke-direct {p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->i()V

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->d:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->b:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->f:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->play()V

    :cond_1
    return-void
.end method

.method public setAutoPlayOnForeground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayer;->setAutoPlayOnForeground(Z)V

    :cond_0
    return-void
.end method

.method public setDeviceInfo(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->o:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    return-void
.end method

.method public setEndCardSize(Lcom/pubmatic/sdk/common/POBAdSize;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->d:Lcom/pubmatic/sdk/common/POBAdSize;

    return-void
.end method

.method public setLinearity(Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->w:Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;

    return-void
.end method

.method public setMaxWrapperThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->c:I

    return-void
.end method

.method public setOnSkipButtonAppearListener(Lcom/pubmatic/sdk/video/player/POBVastPlayer$OnSkipButtonAppear;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->s:Lcom/pubmatic/sdk/video/player/POBVastPlayer$OnSkipButtonAppear;

    return-void
.end method

.method public setSkipabilityEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->u:Z

    return-void
.end method

.method public setVastPlayerListener(Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;

    return-void
.end method

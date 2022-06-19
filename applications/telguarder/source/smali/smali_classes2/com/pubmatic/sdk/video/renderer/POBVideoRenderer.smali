.class public Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/renderer/POBVideoRendering;
.implements Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;
.implements Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener;
.implements Lcom/pubmatic/sdk/video/player/POBVastPlayer$OnSkipButtonAppear;


# static fields
.field public static final VIEWABILITY_THRESHOLD_PERCENT_FOR_BANNER:I = 0x32


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

.field private c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;

.field private d:Lcom/pubmatic/sdk/video/renderer/POBVideoSkipEventListener;

.field private e:J

.field private f:Ljava/util/Timer;

.field private g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

.field private h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

.field private i:Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;

.field private j:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

.field private k:Z

.field private l:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    iput-object p3, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->setVastPlayerListener(Lcom/pubmatic/sdk/video/player/POBVastPlayerListener;)V

    invoke-virtual {p1, p0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->setOnSkipButtonAppearListener(Lcom/pubmatic/sdk/video/player/POBVastPlayer$OnSkipButtonAppear;)V

    iput-object p2, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->i:Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;

    invoke-virtual {p2, p0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->setOnExposureChangeWithThresholdListener(Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener;)V

    return-void
.end method

.method private a(II)I
    .locals 0

    sub-int/2addr p2, p1

    if-gtz p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$b;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$b;-><init>(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    new-instance v1, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;-><init>(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)V

    invoke-direct {v0, p1, v1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;-><init>(Landroid/content/Context;Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->l:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a()V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;F)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;->getCombinedVerificationList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a(Ljava/util/List;F)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POBVideoRenderer"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Video clickThrough url is missing."

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v2, "Opening landing page with url: %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->l:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->open(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onRenderAdClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;",
            ">;F)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "POBVideoRenderer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    new-instance v4, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$e;

    invoke-direct {v4, p0, p2}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$e;-><init>(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;F)V

    invoke-interface {v0, v3, p1, v4}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->startAdSession(Landroid/view/View;Ljava/util/List;Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Video viewability measurement provider initialised"

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Video viewability measurement provider not initialised"

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->setAutoPlayOnForeground(Z)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->pause()V

    return-void
.end method

.method static synthetic c(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->setAutoPlayOnForeground(Z)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->play()V

    return-void
.end method

.method static synthetic d(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/video/player/POBVastPlayer;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    return-object p0
.end method

.method private d()V
    .locals 5

    iget-wide v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->f:Ljava/util/Timer;

    new-instance v1, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$a;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$a;-><init>(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)V

    iget-wide v2, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->e:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->f:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->e()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->destroy()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->i:Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->setOnExposureChangeWithThresholdListener(Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->i:Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->destroy()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->finishAdSession()V

    iput-object v1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    :cond_0
    return-void
.end method

.method public invalidateExpiration()V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->e()V

    return-void
.end method

.method public onFailedToPlay(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->e()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v1, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->VIDEO:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->signalError(Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onIndustryIconClick(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ICON_CLICKED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->signalAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V

    :cond_0
    return-void
.end method

.method public onOpenLandingPage(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->CLICKED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->signalAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V

    :cond_0
    return-void
.end method

.method public onPlaybackCompleted(F)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->j:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    if-eqz v0, :cond_0

    float-to-int p1, p1

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getRefreshInterval()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a(II)I

    move-result p1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdReadyToRefresh(I)V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->COMPLETE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;->notifyAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V

    :cond_1
    return-void
.end method

.method public onReadyToPlay(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;F)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVastAd;F)V

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdRender(Landroid/view/View;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V

    :cond_1
    return-void
.end method

.method public onSkipButtonClick(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->SKIP:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->d:Lcom/pubmatic/sdk/video/renderer/POBVideoSkipEventListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoSkipEventListener;->onAdAboutToSkip()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdInteractionStopped()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoEventOccurred(Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->PAUSE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->RESUME:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->SKIPPED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->MUTE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->UNMUTE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->COMPLETE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->THIRD_QUARTILE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->MID_POINT:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->FIRST_QUARTILE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    :goto_0
    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->signalAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoStarted(FF)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    new-instance v1, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;-><init>(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;FF)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onViewabilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b()V

    :goto_0
    return-void
.end method

.method public prepareToDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->k:Z

    return-void
.end method

.method public proceedAdSkip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdInteractionStopped()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->play()V

    :cond_1
    :goto_0
    return-void
.end method

.method public renderAd(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->d()V

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->j:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->g:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getRenderableContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->load(Ljava/lang/String;)V

    return-void
.end method

.method public setAdRendererListener(Lcom/pubmatic/sdk/common/base/POBAdRendererListener;)V
    .locals 1

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    instance-of v0, p1, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->setVideoRenderingListener(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;)V

    :cond_0
    return-void
.end method

.method public setExpirationTimeout(J)V
    .locals 0

    iput-wide p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->e:J

    return-void
.end method

.method public setMeasurementProvider(Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->h:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    return-void
.end method

.method public setVideoRenderingListener(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;

    return-void
.end method

.method public setVideoSkipEventListener(Lcom/pubmatic/sdk/video/renderer/POBVideoSkipEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->d:Lcom/pubmatic/sdk/video/renderer/POBVideoSkipEventListener;

    return-void
.end method

.method public skipButtonAppear()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;->enableBackPress()V

    :cond_0
    return-void
.end method

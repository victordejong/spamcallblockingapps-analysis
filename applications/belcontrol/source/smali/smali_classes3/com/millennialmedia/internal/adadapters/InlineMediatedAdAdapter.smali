.class public Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;
.super Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;
.implements Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;,
        Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;,
        Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineMediatedSmartYieldCustomEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InlineMediatedAdAdapter"


# instance fields
.field private activityHashCode:I

.field private activityListener:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;

.field private context:Landroid/content/Context;

.field private volatile customEventBanner:Lcom/millennialmedia/mediation/CustomEventBanner;

.field private customEventBannerListener:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;

.field private inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

.field private mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->activityHashCode:I

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)Lcom/millennialmedia/mediation/CustomEventBanner;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBanner:Lcom/millennialmedia/mediation/CustomEventBanner;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->activityHashCode:I

    return p0
.end method

.method public static synthetic access$202(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->activityHashCode:I

    return p1
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->activityListener:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;

    return-object p0
.end method

.method private declared-synchronized getCustomEventBanner()Lcom/millennialmedia/mediation/CustomEventBanner;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBanner:Lcom/millennialmedia/mediation/CustomEventBanner;

    if-nez v0, :cond_0

    const-class v0, Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v1, v1, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->networkId:Ljava/lang/String;

    const-class v2, Lcom/millennialmedia/mediation/CustomEventBanner;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/mediation/CustomEventRegistry;->getCustomEvent(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/mediation/CustomEventBanner;

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBanner:Lcom/millennialmedia/mediation/CustomEventBanner;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBanner:Lcom/millennialmedia/mediation/CustomEventBanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public display(Landroid/widget/RelativeLayout;Lcom/millennialmedia/InlineAd$AdSize;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityHashForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->activityHashCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->activityListener:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->registerListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-direct {v0, v1, p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;-><init>(Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBannerListener:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "PLACEMENT_ID"

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v1, v1, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SITE_ID"

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v1, v1, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->siteId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBanner:Lcom/millennialmedia/mediation/CustomEventBanner;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBannerListener:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/millennialmedia/mediation/CustomEventBanner;->requestBanner(Landroid/content/Context;Lcom/millennialmedia/mediation/CustomEventBanner$CustomEventBannerListener;Lcom/millennialmedia/InlineAd$AdSize;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v2, v2, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->networkId:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Error requesting banner for mediation Id: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displayFailed()V

    goto :goto_0

    :cond_1
    const-string p1, "display called but inlineAdapterListener was null. Possibly display called without first calling init?"

    invoke-static {p2, p1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getImpressionDelay()J
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinImpressionDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinImpressionViewabilityPercentage()I
    .locals 1

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinImpressionViewabilityPercent()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initFailed()V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    if-nez p3, :cond_1

    invoke-interface {p2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initFailed()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->getCustomEventBanner()Lcom/millennialmedia/mediation/CustomEventBanner;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-interface {p2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initFailed()V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    new-instance p1, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;-><init>(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;)V

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->activityListener:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;

    invoke-interface {p2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initSucceeded()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBanner:Lcom/millennialmedia/mediation/CustomEventBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBanner:Lcom/millennialmedia/mediation/CustomEventBanner;

    invoke-interface {v0}, Lcom/millennialmedia/mediation/CustomEventBanner;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->customEventBanner:Lcom/millennialmedia/mediation/CustomEventBanner;

    :cond_0
    return-void
.end method

.method public requestSmartYieldDecision(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11

    move-object v1, p0

    move-object v10, p2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v10, v4, v3

    aput-object p3, v4, v2

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "requestSmartYieldDecision called with id: %s, bp: %s, width: %d, height: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->getCustomEventBanner()Lcom/millennialmedia/mediation/CustomEventBanner;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v4, v0, Lcom/millennialmedia/mediation/SmartYieldCustomEvent;

    if-eqz v4, :cond_1

    new-instance v9, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineMediatedSmartYieldCustomEventListener;

    const/4 v2, 0x0

    invoke-direct {v9, p2, v2}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineMediatedSmartYieldCustomEventListener;-><init>(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PLACEMENT_ID"

    iget-object v3, v1, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v3, v3, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->spaceId:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SITE_ID"

    iget-object v3, v1, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v3, v3, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->siteId:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/millennialmedia/mediation/SmartYieldCustomEvent;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v9}, Lcom/millennialmedia/mediation/SmartYieldCustomEvent;->requestSmartYieldDecision(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Lcom/millennialmedia/mediation/SmartYieldCustomEvent$SmartYieldCustomEventListener;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->TAG:Ljava/lang/String;

    const-string v2, "CustomEventBanner instance is null."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->TAG:Ljava/lang/String;

    const-string v5, "CustomEventBanner class %s does not implement SmartYieldCustomEvent interface."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getActiveSmartYieldDecisionListener(Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;->onBidLost()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Error occurred requesting bid decision."

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getActiveSmartYieldDecisionListener(Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;->onBidLost()V

    :goto_1
    return-void
.end method

.method public setMediationInfo(Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    return-void
.end method

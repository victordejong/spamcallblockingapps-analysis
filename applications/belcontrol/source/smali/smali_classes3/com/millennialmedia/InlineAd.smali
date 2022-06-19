.class public Lcom/millennialmedia/InlineAd;
.super Lcom/millennialmedia/internal/AdPlacement;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/InlineAd$RefreshRunnable;,
        Lcom/millennialmedia/InlineAd$AdSize;,
        Lcom/millennialmedia/InlineAd$ImpressionListener;,
        Lcom/millennialmedia/InlineAd$InlineAdMetadata;,
        Lcom/millennialmedia/InlineAd$InlineErrorStatus;,
        Lcom/millennialmedia/InlineAd$InlineAbortListener;,
        Lcom/millennialmedia/InlineAd$InlineListener;
    }
.end annotation


# static fields
.field public static final STATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final STATE_LOAD_ABORTED:Ljava/lang/String; = "aborted"

.field private static final TAG:Ljava/lang/String; = "InlineAd"


# instance fields
.field private volatile aborting:Z

.field private adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private final adContainerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

.field private displayOptions:Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;

.field private volatile hasRequested:Z

.field private volatile impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

.field private inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

.field private inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

.field private inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

.field private volatile isExpanded:Z

.field private volatile isResized:Z

.field private lastRequestTime:J

.field private mmAdContainer:Landroid/widget/RelativeLayout;

.field private volatile nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

.field private placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private requestedRefreshInterval:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->hasRequested:Z

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->adContainerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/InlineAd;->adContainerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/millennialmedia/InlineAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/millennialmedia/InlineAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1302(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    return-object p1
.end method

.method public static synthetic access$1402(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/millennialmedia/InlineAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/millennialmedia/InlineAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/millennialmedia/InlineAd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->reportImpression(I)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/adadapters/InlineAdapter;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/InlineAd;->nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->setCurrentAdAdapter(Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/InlineAd;->mmAdContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$2202(Lcom/millennialmedia/InlineAd;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->mmAdContainer:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public static synthetic access$2300(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/adadapters/InlineAdapter;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/millennialmedia/InlineAd;Landroid/view/ViewGroup;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/InlineAd;->onRequestSucceeded(Landroid/view/ViewGroup;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/InlineAd;->onResize(Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/millennialmedia/InlineAd;->onResized(Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onExpanded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onCollapsed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onClicked(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$302(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method public static synthetic access$3100(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onAdLeftApplication(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method

.method public static synthetic access$3302(Lcom/millennialmedia/InlineAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3400(Lcom/millennialmedia/InlineAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->stopRequestTimeoutTimers()V

    return-void
.end method

.method public static synthetic access$3500(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J
    .locals 2

    invoke-static {p0}, Lcom/millennialmedia/InlineAd;->getImpressionDelay(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$3600(Lcom/millennialmedia/internal/adadapters/AdAdapter;)I
    .locals 0

    invoke-static {p0}, Lcom/millennialmedia/InlineAd;->getMinViewabilityPercentage(Lcom/millennialmedia/internal/adadapters/AdAdapter;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$3700(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    return-object p0
.end method

.method public static synthetic access$3800(Lcom/millennialmedia/InlineAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    return p0
.end method

.method public static synthetic access$3900(Lcom/millennialmedia/InlineAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->onAbortFailed()V

    return-void
.end method

.method public static synthetic access$400(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$ImpressionListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$ImpressionListener;)Lcom/millennialmedia/InlineAd$ImpressionListener;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/millennialmedia/InlineAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/millennialmedia/InlineAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/millennialmedia/InlineAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->loadPlayList()V

    return-void
.end method

.method public static synthetic access$800(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onRequestFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/millennialmedia/InlineAd;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result p0

    return p0
.end method

.method public static createInstance(Ljava/lang/String;Landroid/view/ViewGroup;)Lcom/millennialmedia/InlineAd;
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMSDK;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/InlineAd;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InlineAd;-><init>(Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/millennialmedia/MMException;

    const-string p1, "Unable to create instance, ad container must have an associated context"

    invoke-direct {p0, p1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/millennialmedia/MMException;

    const-string p1, "Unable to create instance, ad container cannot be null"

    invoke-direct {p0, p1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/millennialmedia/MMInitializationException;

    const-string p1, "Unable to create instance, SDK must be initialized first"

    invoke-direct {p0, p1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getImpressionDelay(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getImpressionDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMinViewabilityPercentage(Lcom/millennialmedia/internal/adadapters/AdAdapter;)I
    .locals 0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getMinImpressionViewabilityPercentage()I

    move-result p0

    return p0
.end method

.method private isLoading()Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "load_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "aborted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 6

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v2, "play_list_loaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v2, "ad_adapter_load_failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, "loading_ad_adapter"

    iput-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getItemHash()I

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/PlayList;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to find ad adapter in play list"

    invoke-static {p1, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/millennialmedia/InlineAd;->onRequestFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/millennialmedia/InlineAd;->onAborted(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object p1

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v1, p0, p1}, Lcom/millennialmedia/internal/PlayList;->getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->adContainerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    iget v2, v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->requestTimeout:I

    if-lez v2, :cond_6

    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_5
    new-instance v3, Lcom/millennialmedia/InlineAd$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/millennialmedia/InlineAd$3;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/InlineAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_6
    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/millennialmedia/InlineAd$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/millennialmedia/InlineAd$4;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->displayOptions:Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;

    invoke-virtual {v2, v1, v3, p1}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/InlineAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    :goto_0
    return-void

    :cond_8
    :goto_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private loadPlayList()V
    .locals 6

    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/InlineAd;->lastRequestTime:J

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinInlineRefreshRate()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "Too soon since last inline ad request, unable to request ad"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    const-string v1, "loading_play_list"

    iput-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/InlineAd;->lastRequestTime:J

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    if-nez v0, :cond_4

    new-instance v0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-direct {v0}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->displayOptions:Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;

    if-nez v0, :cond_5

    new-instance v0, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->displayOptions:Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;

    :cond_5
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_6
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInlineTimeout()I

    move-result v1

    new-instance v2, Lcom/millennialmedia/InlineAd$1;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/InlineAd$1;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/InlineAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacementMetadata;->getImpressionGroup()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-virtual {v3, p0}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->toMap(Lcom/millennialmedia/InlineAd;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/InlineAd$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/millennialmedia/InlineAd$2;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    :goto_0
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "Inline ad is resized or expanded, unable to request new ad"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onAbortFailed()V
    .locals 2

    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "Ad abort failed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/InlineAd$14;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$14;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineAbortListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private onAborted(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "onAborted called but request state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAborted called but placement state is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    const-string v0, "aborted"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "Ad aborted"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/millennialmedia/InlineAd$13;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InlineAd$13;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineAbortListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "onAdAdapterLoadFailed called but request state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdAdapterLoadFailed called but placement state is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    const-string v0, "ad_adapter_load_failed"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onAdLeftApplication(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "onAdLeftApplication called but request state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "Ad left application"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/millennialmedia/InlineAd$12;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InlineAd$12;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onClicked(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "Ad clicked"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/millennialmedia/InlineAd;->reportImpression(I)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/millennialmedia/InlineAd$7;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InlineAd$7;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private onCollapsed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "onCollapsed called but request state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "Ad collapsed"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/millennialmedia/InlineAd$11;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InlineAd$11;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onExpanded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "onExpanded called but request state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "Ad expanded"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/millennialmedia/InlineAd$10;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InlineAd$10;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onRequestFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "onRequestFailed called but request state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loading_play_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestFailed called but placement state is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    const-string v0, "load_failed"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request failed for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". If this warning persists please check your placement configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->stopRequestTimeoutTimers()V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/millennialmedia/InlineAd$6;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InlineAd$6;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onRequestSucceeded(Landroid/view/ViewGroup;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string p2, "onRequestSucceeded called but request state is not valid"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onRequestSucceeded called but placement state is not valid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "InlineAd in attaching state."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "attaching"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/millennialmedia/InlineAd$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/millennialmedia/InlineAd$5;-><init>(Lcom/millennialmedia/InlineAd;Landroid/view/ViewGroup;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onResize(Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string p2, "onResize called but request state is not valid"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v0, "Ad resizing"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/millennialmedia/InlineAd$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/millennialmedia/InlineAd$8;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;II)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onResized(Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string p2, "onResized called but request state is not valid"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad resized, is closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    if-eqz v2, :cond_3

    new-instance p1, Lcom/millennialmedia/InlineAd$9;

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/InlineAd$9;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;IIZ)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private releaseAdapters()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->nextInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    :cond_1
    return-void
.end method

.method private reportImpression(I)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    invoke-virtual {p1}, Lcom/millennialmedia/InlineAd$ImpressionListener;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    :cond_0
    return-void
.end method

.method public static requestBid(Ljava/lang/String;Lcom/millennialmedia/InlineAd$InlineAdMetadata;Lcom/millennialmedia/BidRequestListener;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getAdSize()Lcom/millennialmedia/InlineAd$AdSize;

    move-result-object v0

    invoke-virtual {p1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->hasValidAdSize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/InlineAd$AdSize;->isAuto()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/AdPlacement;->requestBid(Ljava/lang/String;Lcom/millennialmedia/internal/AdPlacementMetadata;Lcom/millennialmedia/BidRequestListener;)V

    return-void

    :cond_0
    new-instance p0, Lcom/millennialmedia/MMException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid AdSize <"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/millennialmedia/MMException;

    const-string p1, "Metadata must not be null"

    invoke-direct {p0, p1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setCurrentAdAdapter(Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    return-void
.end method

.method private startRefresh()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd;->isRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/millennialmedia/InlineAd$RefreshRunnable;

    invoke-direct {v0, p0}, Lcom/millennialmedia/InlineAd$RefreshRunnable;-><init>(Lcom/millennialmedia/InlineAd;)V

    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd;->getRefreshInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "Refresh disabled or already started, returning"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopRequestTimeoutTimers()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_1
    return-void
.end method


# virtual methods
.method public abort(Lcom/millennialmedia/InlineAd$InlineAbortListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to abort playlist request for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborting playlist request for placement ID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->onAbortFailed()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public canDestroyNow()Z
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAdPlacementMetaDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->toMap(Lcom/millennialmedia/InlineAd;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->adContainerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->adContainerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreativeInfo()Lcom/millennialmedia/CreativeInfo;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentInlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getCreativeInfo()Lcom/millennialmedia/CreativeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshInterval()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd;->isRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->requestedRefreshInterval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinInlineRefreshRate()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->requestedRefreshInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public isRefreshEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->requestedRefreshInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->incentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    invoke-virtual {v1}, Lcom/millennialmedia/InlineAd$ImpressionListener;->cancel()V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->stopRequestTimeoutTimers()V

    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->releaseAdapters()V

    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->adContainerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/millennialmedia/InlineAd$15;

    invoke-direct {v2, p0, v1}, Lcom/millennialmedia/InlineAd$15;-><init>(Lcom/millennialmedia/InlineAd;Ljava/lang/ref/WeakReference;)V

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->mmAdContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    return-void
.end method

.method public request(Lcom/millennialmedia/InlineAd$InlineAdMetadata;)V
    .locals 3

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting playlist for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/InlineAd;->hasRequested:Z

    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->loadPlayList()V

    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->startRefresh()V

    return-void
.end method

.method public setDisplayOptions(Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->displayOptions:Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;

    return-void
.end method

.method public setListener(Lcom/millennialmedia/InlineAd$InlineListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->requestedRefreshInterval:Ljava/lang/Integer;

    iget-boolean p1, p0, Lcom/millennialmedia/InlineAd;->hasRequested:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->startRefresh()V

    :cond_1
    return-void
.end method

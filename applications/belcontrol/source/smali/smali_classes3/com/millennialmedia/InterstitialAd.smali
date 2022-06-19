.class public Lcom/millennialmedia/InterstitialAd;
.super Lcom/millennialmedia/internal/AdPlacement;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;,
        Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;,
        Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;,
        Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    }
.end annotation


# static fields
.field public static final STATE_EXPIRED:Ljava/lang/String; = "expired"

.field public static final STATE_SHOWING:Ljava/lang/String; = "showing"

.field public static final STATE_SHOWN:Ljava/lang/String; = "shown"

.field public static final STATE_SHOW_FAILED:Ljava/lang/String; = "show_failed"

.field private static final TAG:Ljava/lang/String; = "InterstitialAd"


# instance fields
.field private adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

.field private expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private interstitialAdMetadata:Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

.field private interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

.field private volatile nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

.field private placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/millennialmedia/InterstitialAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/millennialmedia/InterstitialAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/InterstitialAd;->nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->setCurrentAdAdapter(Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onLoadSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onShown(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onShowFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onExpired(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onClosed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onClicked(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onAdLeftApplication(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/millennialmedia/InterstitialAd;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/millennialmedia/InterstitialAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/millennialmedia/InterstitialAd;
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMSDK;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/millennialmedia/InterstitialAd;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/millennialmedia/MMInitializationException;

    const-string v0, "Unable to create instance, SDK must be initialized first"

    invoke-direct {p0, v0}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string v1, "expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "show_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "shown"

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

    if-eqz v1, :cond_7

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

    goto :goto_1

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

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to find ad adapter in play list"

    invoke-static {p1, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/millennialmedia/InterstitialAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object p1

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v1, p0, p1}, Lcom/millennialmedia/internal/PlayList;->getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    iget v2, v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->requestTimeout:I

    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/millennialmedia/InterstitialAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_4
    new-instance v3, Lcom/millennialmedia/InterstitialAd$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/millennialmedia/InterstitialAd$3;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/InterstitialAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_5
    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    new-instance v3, Lcom/millennialmedia/InterstitialAd$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/millennialmedia/InterstitialAd$4;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-virtual {v2, v1, v3}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/InterstitialAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    :goto_0
    return-void

    :cond_7
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

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "onAdAdapterLoadFailed called but load state is not valid"

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

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

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

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "onAdLeftApplication called but load state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "Ad left application"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/millennialmedia/InterstitialAd$11;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InterstitialAd$11;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

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

    sget-object v0, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v1, "Ad clicked"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/millennialmedia/InterstitialAd$10;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InterstitialAd$10;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private onClosed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
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

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "onClosed called but load state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const-string p1, "idle"

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "Ad closed"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/millennialmedia/InterstitialAd$9;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InterstitialAd$9;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->setCurrentAdAdapter(Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onExpired(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "onExpired called but load state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v0, "loaded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v0, "show_failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExpired called but placement state is not valid: "

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
    const-string p1, "expired"

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "Ad expired"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->releaseAdapters()V

    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/millennialmedia/InterstitialAd$12;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InterstitialAd$12;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
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

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "onLoadFailed called but load state is not valid"

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

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadFailed called but placement state is not valid: "

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

    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->stopRequestTimeoutTimers()V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load failed for placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". If this warning persists please check your placement configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/millennialmedia/InterstitialAd$6;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InterstitialAd$6;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

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

.method private onLoadSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
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

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "onLoadSucceeded called but load state is not valid"

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

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadSucceeded called but placement state is not valid: "

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
    const-string v0, "loaded"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v1, "Load succeeded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->stopRequestTimeoutTimers()V

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->startExpirationTimer(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/millennialmedia/InterstitialAd$5;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InterstitialAd$5;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

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

.method private onShowFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->doPendingDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "showing"

    if-ne v0, v1, :cond_1

    const-string v0, "show_failed"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v1, "Ad show failed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/millennialmedia/InterstitialAd$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/InterstitialAd$8;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

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

.method private onShown(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 1

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

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "onShown called but load state is not valid"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const-string v0, "shown"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v0, "Ad shown"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/millennialmedia/InterstitialAd$7;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InterstitialAd$7;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

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

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->nextInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    :cond_1
    return-void
.end method

.method public static requestBid(Ljava/lang/String;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;Lcom/millennialmedia/BidRequestListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/AdPlacement;->requestBid(Ljava/lang/String;Lcom/millennialmedia/internal/AdPlacementMetadata;Lcom/millennialmedia/BidRequestListener;)V

    return-void
.end method

.method private setCurrentAdAdapter(Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->release()V

    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    return-void
.end method

.method private startExpirationTimer(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4

    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->stopExpirationTimer()V

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInterstitialExpirationDuration()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    return-void
.end method

.method private stopExpirationTimer()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    return-void
.end method

.method private stopRequestTimeoutTimers()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_1
    return-void
.end method


# virtual methods
.method public canDestroyNow()Z
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "showing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialAdMetadata:Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/AdPlacementMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->contextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getCreativeInfo()Lcom/millennialmedia/CreativeInfo;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getCreativeInfo()Lcom/millennialmedia/CreativeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasExpired()Z
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V
    .locals 4

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading playlist for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->contextRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd;->interstitialAdMetadata:Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "idle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "load_failed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "expired"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "show_failed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to load interstitial ad, state is invalid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_1
    const-string p1, "loading_play_list"

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    if-nez p2, :cond_2

    new-instance p2, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    invoke-direct {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;-><init>()V

    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object p1

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInterstitialTimeout()I

    move-result v0

    new-instance v1, Lcom/millennialmedia/InterstitialAd$1;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/InterstitialAd$1;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementMetadata;->getImpressionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0}, Lcom/millennialmedia/internal/AdPlacementMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object p2

    new-instance v2, Lcom/millennialmedia/InterstitialAd$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/millennialmedia/InterstitialAd$2;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V

    invoke-static {p2, v2, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->incentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialAdMetadata:Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->stopRequestTimeoutTimers()V

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->releaseAdapters()V

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->playList:Lcom/millennialmedia/internal/PlayList;

    return-void
.end method

.method public setListener(Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/InterstitialAd;->show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V

    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 3

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v2, "loaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to show interstitial ad, state is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "showing"

    iput-object v1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 p2, 0x4

    invoke-direct {p1, p2, v0}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onShowFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->stopExpirationTimer()V

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentInterstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Lcom/millennialmedia/MMException;

    const-string p2, "Unable to show interstitial, specified context cannot be null"

    invoke-direct {p1, p2}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

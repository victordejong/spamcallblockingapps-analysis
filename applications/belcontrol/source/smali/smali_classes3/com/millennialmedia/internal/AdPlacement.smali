.class public abstract Lcom/millennialmedia/internal/AdPlacement;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;,
        Lcom/millennialmedia/internal/AdPlacement$RequestState;
    }
.end annotation


# static fields
.field public static final STATE_AD_ADAPTER_LOAD_FAILED:Ljava/lang/String; = "ad_adapter_load_failed"

.field public static final STATE_DESTROYED:Ljava/lang/String; = "destroyed"

.field public static final STATE_IDLE:Ljava/lang/String; = "idle"

.field public static final STATE_LOADED:Ljava/lang/String; = "loaded"

.field public static final STATE_LOADING_AD_ADAPTER:Ljava/lang/String; = "loading_ad_adapter"

.field public static final STATE_LOADING_PLAY_LIST:Ljava/lang/String; = "loading_play_list"

.field public static final STATE_LOAD_FAILED:Ljava/lang/String; = "load_failed"

.field public static final STATE_PLAY_LIST_LOADED:Ljava/lang/String; = "play_list_loaded"

.field private static final TAG:Ljava/lang/String; = "AdPlacement"


# instance fields
.field public context:Landroid/content/Context;

.field public volatile currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field public incentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

.field private volatile pendingDestroy:Z

.field public placementId:Ljava/lang/String;

.field public volatile placementState:Ljava/lang/String;

.field public volatile playList:Lcom/millennialmedia/internal/PlayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacement;->pendingDestroy:Z

    const-string v0, "idle"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacement;->cleanPlacementId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacement;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static cleanPlacementId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/millennialmedia/MMException;

    const-string v0, "PlacementId cannot be an empty string."

    invoke-direct {p0, v0}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/millennialmedia/MMException;

    const-string v0, "PlacementId must be a non null."

    invoke-direct {p0, v0}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doDestroy()V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/AdPlacement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "destroyed"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacement;->pendingDestroy:Z

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->onDestroy()V

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacement;->TAG:Ljava/lang/String;

    const-string v1, "Ad destroyed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onBidRequestFailed(Lcom/millennialmedia/BidRequestListener;Lcom/millennialmedia/BidRequestErrorStatus;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/AdPlacement$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/AdPlacement$4;-><init>(Lcom/millennialmedia/BidRequestListener;Lcom/millennialmedia/BidRequestErrorStatus;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static onBidRequestSucceeded(Lcom/millennialmedia/BidRequestListener;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/AdPlacement$3;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/AdPlacement$3;-><init>(Lcom/millennialmedia/BidRequestListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static requestBid(Ljava/lang/String;Lcom/millennialmedia/internal/AdPlacementMetadata;Lcom/millennialmedia/BidRequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/AdPlacementMetadata<",
            "*>;",
            "Lcom/millennialmedia/BidRequestListener;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacement;->cleanPlacementId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/millennialmedia/internal/AdPlacementMetadata;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/AdPlacement$2;

    invoke-direct {v1, p2, p1, p0}, Lcom/millennialmedia/internal/AdPlacement$2;-><init>(Lcom/millennialmedia/BidRequestListener;Lcom/millennialmedia/internal/AdPlacementMetadata;Ljava/lang/String;)V

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInlineTimeout()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;IZ)V

    return-void

    :cond_0
    new-instance p0, Lcom/millennialmedia/MMException;

    const-string p1, "Metadata must not be null"

    invoke-direct {p0, p1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/millennialmedia/MMException;

    const-string p1, "BidRequestListener must not be null"

    invoke-direct {p0, p1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract canDestroyNow()Z
.end method

.method public declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacement;->canDestroyNow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/internal/AdPlacement;->doDestroy()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/AdPlacement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroy is pending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacement;->pendingDestroy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doPendingDestroy()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacement;->pendingDestroy:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing pending destroy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/internal/AdPlacement;->doDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getAdPlacementMetaDataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCreativeInfo()Lcom/millennialmedia/CreativeInfo;
.end method

.method public getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    const-string v1, "destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacement;->pendingDestroy:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/millennialmedia/internal/AdPlacement;->TAG:Ljava/lang/String;

    const-string v1, "Placement has been destroyed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onDestroy()V
.end method

.method public onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incentive earned <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->incentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/millennialmedia/internal/AdPlacement$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/millennialmedia/internal/AdPlacement$1;-><init>(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;Lcom/millennialmedia/XIncentivizedEventListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public xGetIncentivizedListener()Lcom/millennialmedia/XIncentivizedEventListener;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->incentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

    return-object v0
.end method

.method public xSetIncentivizedListener(Lcom/millennialmedia/XIncentivizedEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement;->incentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

    return-void
.end method

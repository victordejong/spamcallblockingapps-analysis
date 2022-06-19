.class public Lcom/millennialmedia/InterstitialAd$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/InterstitialAd;

.field public final synthetic val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field public final synthetic val$playListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p3, p0, Lcom/millennialmedia/InterstitialAd$4;->val$playListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->val$playListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)V

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$1000(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public initSucceeded()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v1}, Lcom/millennialmedia/InterstitialAd;->access$1100(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initSucceeded called but request state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v1}, Lcom/millennialmedia/InterstitialAd;->access$1200(Lcom/millennialmedia/InterstitialAd;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading_ad_adapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSucceeded called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v3}, Lcom/millennialmedia/InterstitialAd;->access$1300(Lcom/millennialmedia/InterstitialAd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v0}, Lcom/millennialmedia/InterstitialAd;->access$1400(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$1500(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;)V

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$1402(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->val$playListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$1600(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$2200(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public onClicked()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$2100(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public onClosed()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$2000(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public onExpired()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$200(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/InterstitialAd;->access$2300(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method

.method public showFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v1}, Lcom/millennialmedia/InterstitialAd;->access$1800(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "show failed but load state is not valid"

    invoke-static {p1, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/InterstitialAd;->access$1900(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public shown()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$1700(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

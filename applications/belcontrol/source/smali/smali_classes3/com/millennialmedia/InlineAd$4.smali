.class public Lcom/millennialmedia/InlineAd$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/InlineAd;

.field public final synthetic val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field public final synthetic val$playListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p3, p0, Lcom/millennialmedia/InlineAd$4;->val$playListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayFailed()V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad adapter display failed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$playListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->access$1600(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public displaySucceeded()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd$4;->displayFailed()V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad adapter display succeeded"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$4;->val$playListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$2400(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/millennialmedia/InlineAd;->access$2500(Lcom/millennialmedia/InlineAd;Landroid/view/ViewGroup;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V

    return-void
.end method

.method public initFailed()V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad adapter init failed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$playListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->access$1600(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public initSucceeded()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$1700(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initSucceeded called but request state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$1800(Lcom/millennialmedia/InlineAd;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading_ad_adapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSucceeded called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v3}, Lcom/millennialmedia/InlineAd;->access$1900(Lcom/millennialmedia/InlineAd;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd$4;->displayFailed()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$2000(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/InlineAd;->access$2100(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/millennialmedia/InlineAd;->access$2002(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    new-instance v1, Lcom/millennialmedia/InlineAd$4$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$4$1;-><init>(Lcom/millennialmedia/InlineAd$4;Landroid/view/ViewGroup;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

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

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->access$3100(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public onClicked()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->access$3000(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public onCollapsed()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->access$2900(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public onExpanded()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->access$2800(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/InlineAd;->access$3200(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method

.method public onResize(II)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1, p1, p2}, Lcom/millennialmedia/InlineAd;->access$2600(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V

    return-void
.end method

.method public onResized(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/millennialmedia/InlineAd;->access$2700(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V

    return-void
.end method

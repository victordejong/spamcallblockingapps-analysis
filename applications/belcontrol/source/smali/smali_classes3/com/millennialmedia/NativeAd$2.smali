.class public Lcom/millennialmedia/NativeAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->load(Landroid/content/Context;Lcom/millennialmedia/NativeAd$NativeAdMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/NativeAd;

.field public final synthetic val$impressionGroup:Ljava/lang/String;

.field public final synthetic val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p3, p0, Lcom/millennialmedia/NativeAd$2;->val$impressionGroup:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v0}, Lcom/millennialmedia/NativeAd;->access$1400(Lcom/millennialmedia/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Play list load failed"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {p1, v0}, Lcom/millennialmedia/NativeAd;->access$700(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLoaded(Lcom/millennialmedia/internal/PlayList;)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v1}, Lcom/millennialmedia/NativeAd;->access$800(Lcom/millennialmedia/NativeAd;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v1}, Lcom/millennialmedia/NativeAd;->access$900(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    const-string v2, "play_list_loaded"

    invoke-static {v1, v2}, Lcom/millennialmedia/NativeAd;->access$1002(Lcom/millennialmedia/NativeAd;Ljava/lang/String;)Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/NativeAd;->access$1102(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$2;->val$impressionGroup:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListReporter(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->setAdPlacementReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    iget-object p1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {p1, v0}, Lcom/millennialmedia/NativeAd;->access$1202(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iget-object p1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/NativeAd;->access$202(Lcom/millennialmedia/NativeAd;Z)Z

    iget-object p1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {p1, v0}, Lcom/millennialmedia/NativeAd;->access$1300(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

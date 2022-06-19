.class public Lcom/millennialmedia/InterstitialAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/InterstitialAd;

.field public final synthetic val$impressionGroup:Ljava/lang/String;

.field public final synthetic val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$2;->this$0:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p3, p0, Lcom/millennialmedia/InterstitialAd$2;->val$impressionGroup:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Play list load failed"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd$2;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {p1, v0}, Lcom/millennialmedia/InterstitialAd;->access$300(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public onLoaded(Lcom/millennialmedia/internal/PlayList;)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->this$0:Lcom/millennialmedia/InterstitialAd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$2;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v1}, Lcom/millennialmedia/InterstitialAd;->access$400(Lcom/millennialmedia/InterstitialAd;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$2;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v1}, Lcom/millennialmedia/InterstitialAd;->access$500(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$2;->this$0:Lcom/millennialmedia/InterstitialAd;

    const-string v2, "play_list_loaded"

    invoke-static {v1, v2}, Lcom/millennialmedia/InterstitialAd;->access$602(Lcom/millennialmedia/InterstitialAd;Ljava/lang/String;)Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->this$0:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/InterstitialAd;->access$702(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$2;->val$impressionGroup:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListReporter(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->setAdPlacementReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd$2;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {p1, v0}, Lcom/millennialmedia/InterstitialAd;->access$802(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iget-object p1, p0, Lcom/millennialmedia/InterstitialAd$2;->this$0:Lcom/millennialmedia/InterstitialAd;

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {p1, v0}, Lcom/millennialmedia/InterstitialAd;->access$900(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

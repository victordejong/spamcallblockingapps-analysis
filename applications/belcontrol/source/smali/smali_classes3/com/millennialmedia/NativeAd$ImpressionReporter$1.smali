.class public Lcom/millennialmedia/NativeAd$ImpressionReporter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd$ImpressionReporter;->prepareImpressionTimer(Lcom/millennialmedia/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/NativeAd$ImpressionReporter;

.field public final synthetic val$nativeAd:Lcom/millennialmedia/NativeAd;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/NativeAd$ImpressionReporter;Lcom/millennialmedia/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;->val$nativeAd:Lcom/millennialmedia/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preparing impression timer runnable"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    iget-object v1, v1, Lcom/millennialmedia/NativeAd$ImpressionReporter;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-boolean v1, v1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;->val$nativeAd:Lcom/millennialmedia/NativeAd;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    iget-wide v2, v2, Lcom/millennialmedia/NativeAd$ImpressionReporter;->impressionDelay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;->val$nativeAd:Lcom/millennialmedia/NativeAd;

    invoke-static {v2}, Lcom/millennialmedia/NativeAd;->access$300(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/NativeAd;->access$400(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionReporter;

    invoke-virtual {v1}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->cancel()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

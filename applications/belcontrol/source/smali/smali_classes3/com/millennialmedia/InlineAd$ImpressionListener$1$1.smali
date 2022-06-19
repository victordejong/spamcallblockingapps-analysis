.class public Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$ImpressionListener$1;->onViewableChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InlineAd$ImpressionListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->inlineAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/InlineAd;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v2, v2, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v2, v2, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v2, v2, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-boolean v2, v2, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v2, v2, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-boolean v2, v2, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionFound:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v2, v2, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionFound:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-wide v1, v1, Lcom/millennialmedia/InlineAd$ImpressionListener;->minImpressionDelay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-static {v0, v3}, Lcom/millennialmedia/InlineAd;->access$200(Lcom/millennialmedia/InlineAd;I)V

    return-void

    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.class public Lcom/millennialmedia/InlineAd$ImpressionListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$ImpressionListener;-><init>(Lcom/millennialmedia/InlineAd;Landroid/view/View;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InlineAd$ImpressionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-boolean v1, v1, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionFound:Z

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    new-instance v1, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;-><init>(Lcom/millennialmedia/InlineAd$ImpressionListener$1;)V

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-wide v2, v2, Lcom/millennialmedia/InlineAd$ImpressionListener;->minImpressionDelay:J

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    iput-object v1, p1, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object p1, p1, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object p1, p1, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iget-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class public Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressRunnable"
.end annotation


# instance fields
.field public checkedPosition:I

.field public scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field public final synthetic this$0:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->checkedPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;Lcom/millennialmedia/internal/video/MMVideoView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    return-void
.end method

.method private getCheckedCurrentPosition()I
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$700(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->checkedPosition:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Current position frozen -- activating auto-correction"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1102(Lcom/millennialmedia/internal/video/MMVideoView;I)I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Current position unfrozen -- deactivating auto-correction"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->checkedPosition:I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1102(Lcom/millennialmedia/internal/video/MMVideoView;I)I

    :goto_0
    return v0
.end method


# virtual methods
.method public resetCheckedPosition()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->checkedPosition:I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1102(Lcom/millennialmedia/internal/video/MMVideoView;I)I

    return-void
.end method

.method public run()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$400(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    monitor-exit p0

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->getCheckedCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$600(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$600(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-interface {v1, v2, v0}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;->onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V

    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1000(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1000(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/video/MMVideoView$MediaController;->onProgress(I)V

    :cond_3
    const-wide/16 v0, 0x64

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->resetCheckedPosition()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

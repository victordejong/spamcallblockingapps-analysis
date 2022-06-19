.class public Lcom/millennialmedia/NativeAd$ImpressionReporter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImpressionReporter"
.end annotation


# instance fields
.field public final impressionDelay:J

.field public volatile impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field public final layout:Landroid/view/View;

.field public final nativeAd:Lcom/millennialmedia/NativeAd;

.field public viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/NativeAd;Landroid/view/View;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->nativeAd:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->layout:Landroid/view/View;

    iput-wide p3, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->impressionDelay:J

    return-void
.end method

.method private cancelImpressionTimer()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancelling previous impression timer runnable"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    return-void
.end method

.method private prepareImpressionTimer(Lcom/millennialmedia/NativeAd;)V
    .locals 3

    new-instance v0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;-><init>(Lcom/millennialmedia/NativeAd$ImpressionReporter;Lcom/millennialmedia/NativeAd;)V

    iget-wide v1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->impressionDelay:J

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method

.method private wasImpressionTimerPrepared()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->cancelImpressionTimer()V

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopping previous impression viewability watcher"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

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

.method public onViewableChanged(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->wasImpressionTimerPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->nativeAd:Lcom/millennialmedia/NativeAd;

    invoke-static {v0}, Lcom/millennialmedia/NativeAd;->access$200(Lcom/millennialmedia/NativeAd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->nativeAd:Lcom/millennialmedia/NativeAd;

    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->prepareImpressionTimer(Lcom/millennialmedia/NativeAd;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->cancelImpressionTimer()V

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->layout:Landroid/view/View;

    invoke-direct {v0, v1, p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->setMinViewabilityPercent(I)V

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    return-void
.end method

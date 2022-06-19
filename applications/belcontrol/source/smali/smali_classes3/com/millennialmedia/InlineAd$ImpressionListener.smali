.class public Lcom/millennialmedia/InlineAd$ImpressionListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImpressionListener"
.end annotation


# instance fields
.field public volatile impressionFound:Z

.field public volatile impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field public inlineAdRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/InlineAd;",
            ">;"
        }
    .end annotation
.end field

.field public minImpressionDelay:J

.field public minViewabilityPercentage:I

.field public viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InlineAd;Landroid/view/View;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionFound:Z

    iput p5, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->minViewabilityPercentage:I

    if-nez p5, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    iput-wide p3, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->minImpressionDelay:J

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->inlineAdRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance p3, Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    invoke-direct {p3, p0}, Lcom/millennialmedia/InlineAd$ImpressionListener$1;-><init>(Lcom/millennialmedia/InlineAd$ImpressionListener;)V

    invoke-direct {p1, p2, p3}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

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

.method public listen()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->minViewabilityPercentage:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->setMinViewabilityPercent(I)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    return-void
.end method

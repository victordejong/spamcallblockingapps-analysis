.class final Lcom/explorestack/iab/vast/activity/VastView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 1563
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1566
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer - onPrepared"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-nez v0, :cond_2

    .line 1569
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    .line 1570
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->fullscreen:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    .line 1572
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->w(Lcom/explorestack/iab/vast/activity/VastView;)V

    .line 1573
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->x(Lcom/explorestack/iab/vast/activity/VastView;)V

    .line 1574
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->y(Lcom/explorestack/iab/vast/activity/VastView;)Z

    .line 1576
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    if-nez v0, :cond_0

    .line 1577
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1578
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->z(Lcom/explorestack/iab/vast/activity/VastView;)V

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->A(Lcom/explorestack/iab/vast/activity/VastView;)V

    .line 1582
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentVideoPosition:I

    if-lez v0, :cond_1

    .line 1583
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentVideoPosition:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1584
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->resume:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    .line 1586
    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isImpressionProcessed:Z

    if-nez p1, :cond_2

    .line 1587
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->B(Lcom/explorestack/iab/vast/activity/VastView;)V

    .line 1588
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->shouldPreloadCompanion()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1589
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$8;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->C(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_2
    return-void
.end method

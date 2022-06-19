.class final Lcom/explorestack/iab/vast/activity/VastView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/activity/VastView$c;


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

    .line 1409
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIF)V
    .locals 3

    .line 1412
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1415
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getMaxDurationMillis()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 1416
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getMaxDurationMillis()I

    move-result p1

    if-le p2, p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 1417
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object p1

    sget-object p2, Lcom/explorestack/iab/vast/VideoType;->Rewarded:Lcom/explorestack/iab/vast/VideoType;

    if-ne p1, p2, :cond_1

    .line 1418
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iput-boolean v1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isSkipEnabled:Z

    .line 1419
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->m(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_1
    const/high16 p1, 0x41c80000    # 25.0f

    .line 1421
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p2, p2, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget p2, p2, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    cmpl-float p1, p3, p2

    if-lez p1, :cond_6

    .line 1422
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    const-string p2, "%)"

    if-ne p1, v0, :cond_2

    .line 1423
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Video at third quartile: ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object p2, Lcom/explorestack/iab/vast/TrackingEvent;->thirdQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    goto/16 :goto_0

    .line 1425
    :cond_2
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    if-nez p1, :cond_3

    .line 1426
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Video at start: ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object p2, Lcom/explorestack/iab/vast/TrackingEvent;->start:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    goto :goto_0

    .line 1428
    :cond_3
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    if-ne p1, v1, :cond_4

    .line 1429
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Video at first quartile: ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object p2, Lcom/explorestack/iab/vast/TrackingEvent;->firstQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    goto :goto_0

    .line 1431
    :cond_4
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 1432
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Video at midpoint: ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object p2, Lcom/explorestack/iab/vast/TrackingEvent;->midpoint:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    .line 1435
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$3;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget p2, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentQuartile:I

    :cond_6
    return-void
.end method

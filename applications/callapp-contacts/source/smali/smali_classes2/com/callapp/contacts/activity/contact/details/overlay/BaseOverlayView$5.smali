.class Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;
.super Lcom/callapp/contacts/widget/SwipeGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getOverlayGestureBehaviour()Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

.field private b:F

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/widget/SwipeGestureListener;-><init>(ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    const/4 p1, 0x0

    .line 394
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->c:Z

    .line 395
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->d:Z

    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 5

    .line 404
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$300(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 405
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->c:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$402(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z

    .line 407
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dismiss using swipe "

    const-string v4, "left"

    invoke-virtual {v0, v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishWithSlideOut(ZF)V

    .line 409
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->closePusherListener:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->closePusherListener:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;->b()V

    .line 411
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->closePusherListener:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;->a()V

    :cond_0
    return v1
.end method

.method public final b(F)Z
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$300(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 421
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->c:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$402(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z

    .line 423
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dismiss using swipe "

    const-string v4, "right"

    invoke-virtual {v0, v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishWithSlideOut(ZF)V

    .line 425
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->closePusherListener:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;

    if-eqz p1, :cond_0

    .line 426
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->closePusherListener:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;->b()V

    .line 427
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->closePusherListener:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;->a()V

    :cond_0
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->b:F

    const/4 p1, 0x0

    .line 438
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->d:Z

    .line 439
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->c:Z

    .line 440
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$502(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z

    .line 441
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$402(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z

    .line 442
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$602(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    .line 448
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p4

    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->b:F

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 449
    :goto_0
    iget-object p4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {p4}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$500(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {p4, p1, v2, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$700(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;ZFF)Z

    move-result p4

    if-eqz p4, :cond_1

    return v0

    .line 452
    :cond_1
    iget-boolean p4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->d:Z

    if-nez p4, :cond_2

    .line 453
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->d:Z

    .line 454
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->c:Z

    .line 455
    iget-object p4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    xor-int/2addr p1, v1

    invoke-static {p4, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$602(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z

    .line 458
    :cond_2
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->c:Z

    if-nez p1, :cond_3

    .line 459
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$800(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 461
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getWindowY()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    iget p4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->b:F

    sub-float/2addr p3, p4

    float-to-int p3, p3

    add-int/2addr p1, p3

    .line 462
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {p3, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->repositionOverlayVertically(I)V

    .line 463
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->b:F

    .line 464
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v4, "Dragged up/down (unique per user)"

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_1

    .line 467
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$300(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 468
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$400(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 470
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getAnimationContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    sub-float/2addr p1, p3

    .line 471
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getAnimationContainer()Landroid/view/View;

    move-result-object p2

    const p3, 0x3f733333    # 0.95f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 472
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getAnimationContainer()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setX(F)V

    .line 473
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v4, "Scrolled right/left (unique per user)"

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 478
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$502(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;Z)Z

    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 399
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/SwipeGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

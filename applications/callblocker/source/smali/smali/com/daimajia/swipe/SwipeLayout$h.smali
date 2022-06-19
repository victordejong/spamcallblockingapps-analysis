.class Lcom/daimajia/swipe/SwipeLayout$h;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/daimajia/swipe/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout$h;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1085
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$h;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->h(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$h;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 1088
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$h;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    .line 1089
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 1095
    :goto_0
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$h;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->h(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$a;

    move-result-object v3

    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout$h;->a:Lcom/daimajia/swipe/SwipeLayout;

    if-ne v0, v1, :cond_2

    move v0, v2

    :goto_1
    invoke-interface {v3, v4, v0}, Lcom/daimajia/swipe/SwipeLayout$a;->a(Lcom/daimajia/swipe/SwipeLayout;Z)V

    .line 1097
    :cond_0
    return v2

    :cond_1
    move-object v0, v1

    .line 1093
    goto :goto_0

    .line 1095
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$h;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->g(Lcom/daimajia/swipe/SwipeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$h;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v0, p1}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$h;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    .line 1081
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

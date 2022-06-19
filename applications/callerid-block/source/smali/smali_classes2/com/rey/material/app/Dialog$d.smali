.class Lcom/rey/material/app/Dialog$d;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lcom/rey/material/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/rey/material/app/Dialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rey/material/app/Dialog$d;->b:Z

    return-void
.end method

.method private a(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {v0}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {v1}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {v0}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {v1}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {p1}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    iget-object v0, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {v0}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {p1}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result p1

    iget-object v0, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {v0}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    iget-object p1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {p1}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {p1}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    iget-object p1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {p1}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p4

    iget-object p2, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {p2}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p5

    iget-object p3, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {p3}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object p3

    invoke-virtual {p3, p4, p5, p1, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {v2}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v2

    :cond_1
    iput-boolean v2, p0, Lcom/rey/material/app/Dialog$d;->b:Z

    return v2

    :cond_2
    iget-boolean p1, p0, Lcom/rey/material/app/Dialog$d;->b:Z

    return p1

    :cond_3
    iget-boolean v0, p0, Lcom/rey/material/app/Dialog$d;->b:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/rey/material/app/Dialog$d;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v2, p0, Lcom/rey/material/app/Dialog$d;->b:Z

    iget-object p1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {p1}, Lcom/rey/material/app/Dialog;->h(Lcom/rey/material/app/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-static {p1}, Lcom/rey/material/app/Dialog;->i(Lcom/rey/material/app/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/rey/material/app/Dialog$d;->c:Lcom/rey/material/app/Dialog;

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    :cond_4
    return v1

    :cond_5
    return v2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/rey/material/app/Dialog$d;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/rey/material/app/Dialog$d;->b:Z

    return v1

    :cond_7
    return v2
.end method

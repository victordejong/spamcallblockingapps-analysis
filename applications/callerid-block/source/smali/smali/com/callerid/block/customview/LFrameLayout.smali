.class public Lcom/callerid/block/customview/LFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/callerid/block/customview/a;


# instance fields
.field private b:Lcom/callerid/block/customview/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callerid/block/customview/LFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/callerid/block/customview/b;

    invoke-direct {p1, p0, p2}, Lcom/callerid/block/customview/b;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    invoke-virtual {v0, p1}, Lcom/callerid/block/customview/b;->a(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callerid/block/customview/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    invoke-virtual {v0, p1, p2}, Lcom/callerid/block/customview/b;->c(II)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/callerid/block/customview/b;->i(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/callerid/block/customview/b;->j(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/callerid/block/customview/b;->k(Z)V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callerid/block/customview/b;->l()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/callerid/block/customview/b;->o(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/callerid/block/customview/b;->p(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/callerid/block/customview/LFrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callerid/block/customview/LFrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    invoke-virtual {v0, p1}, Lcom/callerid/block/customview/b;->q(I)V

    return-void
.end method

.method public setDelayClick(Z)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    invoke-virtual {v0, p1}, Lcom/callerid/block/customview/b;->r(Z)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/LFrameLayout;->b:Lcom/callerid/block/customview/b;

    invoke-virtual {v0, p1}, Lcom/callerid/block/customview/b;->s(I)V

    return-void
.end method

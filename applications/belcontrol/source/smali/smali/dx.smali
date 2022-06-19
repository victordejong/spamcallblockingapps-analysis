.class public Ldx;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lex$c;


# instance fields
.field public a:Lfx$c;

.field public b:Lfx$c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Lfx$c;)V
    .locals 3

    iget-object v0, p0, Ldx;->a:Lfx$c;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    iget-object v1, p0, Ldx;->a:Lfx$c;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lfx$c;->onDetachedFromWindow()V

    :cond_1
    iget-object v1, p0, Ldx;->a:Lfx$c;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lfx$c;->a(Lfx$c$a;)V

    :cond_2
    iput-object p1, p0, Ldx;->a:Lfx$c;

    if-eqz p1, :cond_4

    iget-object v1, p0, Ldx;->b:Lfx$c$a;

    if-nez v1, :cond_3

    new-instance v1, Ldx$a;

    invoke-direct {v1, p0}, Ldx$a;-><init>(Ldx;)V

    iput-object v1, p0, Ldx;->b:Lfx$c$a;

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, p0, Ldx;->b:Lfx$c$a;

    invoke-interface {p1, v1}, Lfx$c;->a(Lfx$c$a;)V

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lfx$c;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "androidx.media2.widget.SubtitleAnchorView"

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Ldx;->a:Lfx$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lfx$c;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Ldx;->a:Lfx$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lfx$c;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Ldx;->a:Lfx$c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Ldx;->a:Lfx$c;

    invoke-interface {v1, p1}, Lfx$c;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Ldx;->a:Lfx$c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Ldx;->a:Lfx$c;

    invoke-interface {p3, p1, p2}, Lfx$c;->b(II)V

    :cond_0
    return-void
.end method

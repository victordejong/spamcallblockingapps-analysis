.class public abstract Lqw;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lfx$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqw$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/accessibility/CaptioningManager;

.field public b:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public c:Lfx$c$a;

.field public d:Lqw$b;

.field public f:Z

.field public final g:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lqw$a;

    invoke-direct {p2, p0}, Lqw$a;-><init>(Lqw;)V

    iput-object p2, p0, Lqw;->g:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const-string p2, "captioning"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/CaptioningManager;

    iput-object p2, p0, Lqw;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p3

    iput-object p3, p0, Lqw;->b:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {p0, p1}, Lqw;->f(Landroid/content/Context;)Lqw$b;

    move-result-object p1

    iput-object p1, p0, Lqw;->d:Lqw$b;

    iget-object p3, p0, Lqw;->b:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-interface {p1, p3}, Lqw$b;->b(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iget-object p1, p0, Lqw;->d:Lqw$b;

    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    invoke-interface {p1, p2}, Lqw$b;->a(F)V

    iget-object p1, p0, Lqw;->d:Lqw$b;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method


# virtual methods
.method public a(Lfx$c$a;)V
    .locals 0

    iput-object p1, p0, Lqw;->c:Lfx$c$a;

    return-void
.end method

.method public b(II)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->measure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public abstract f(Landroid/content/Context;)Lqw$b;
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lqw;->f:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lqw;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqw;->a:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lqw;->g:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lqw;->a:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lqw;->g:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lqw;->g()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lqw;->g()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lqw;->d:Lqw$b;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v0, p0, Lqw;->d:Lqw$b;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lqw;->g()V

    return-void
.end method

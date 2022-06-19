.class public Lcarbon/widget/PagerTabStrip$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/PagerTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/PagerTabStrip;


# direct methods
.method public constructor <init>(Lcarbon/widget/PagerTabStrip;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcarbon/widget/PagerTabStrip;->g(Lcarbon/widget/PagerTabStrip;F)F

    iget-object p1, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    return-void
.end method

.method private synthetic c(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcarbon/widget/PagerTabStrip;->i(Lcarbon/widget/PagerTabStrip;F)F

    iget-object p1, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/PagerTabStrip$a;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic d(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/PagerTabStrip$a;->c(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 8

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p2}, Lcarbon/widget/PagerTabStrip;->a(Lcarbon/widget/PagerTabStrip;)I

    move-result p2

    if-eq p1, p2, :cond_6

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    iget-object p2, p2, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->b(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->b(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->d(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->d(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    const/4 v0, 0x2

    new-array v1, v0, [F

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->f(Lcarbon/widget/PagerTabStrip;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {p3, v1}, Lcarbon/widget/PagerTabStrip;->c(Lcarbon/widget/PagerTabStrip;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->b(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v1, 0xc8

    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->a(Lcarbon/widget/PagerTabStrip;)I

    move-result p3

    const-wide/16 v5, 0x64

    if-le p1, p3, :cond_3

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->b(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_3
    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->b(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p3

    iget-object v7, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    iget-object v7, v7, Lcarbon/widget/PagerTabStrip;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->b(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance v7, Lcg0;

    invoke-direct {v7, p0}, Lcg0;-><init>(Lcarbon/widget/PagerTabStrip$a;)V

    invoke-virtual {p3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->b(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    new-array v0, v0, [F

    invoke-static {p3}, Lcarbon/widget/PagerTabStrip;->h(Lcarbon/widget/PagerTabStrip;)F

    move-result v7

    aput v7, v0, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    aput p2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-static {p3, p2}, Lcarbon/widget/PagerTabStrip;->e(Lcarbon/widget/PagerTabStrip;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p2}, Lcarbon/widget/PagerTabStrip;->d(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p2}, Lcarbon/widget/PagerTabStrip;->a(Lcarbon/widget/PagerTabStrip;)I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p2}, Lcarbon/widget/PagerTabStrip;->d(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p2}, Lcarbon/widget/PagerTabStrip;->d(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    iget-object p3, p3, Lcarbon/widget/PagerTabStrip;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p2}, Lcarbon/widget/PagerTabStrip;->d(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Ldg0;

    invoke-direct {p3, p0}, Ldg0;-><init>(Lcarbon/widget/PagerTabStrip$a;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-static {p2}, Lcarbon/widget/PagerTabStrip;->d(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {p2, p1}, Lcarbon/widget/PagerTabStrip;->setSelectedPage(I)V

    iget-object p1, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    iget-object p2, p1, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcarbon/widget/PagerTabStrip;->a(Lcarbon/widget/PagerTabStrip;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_5

    iget-object p1, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    iget-object p2, p1, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcarbon/widget/PagerTabStrip;->a(Lcarbon/widget/PagerTabStrip;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    iget-object p2, p1, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcarbon/widget/PagerTabStrip;->a(Lcarbon/widget/PagerTabStrip;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    if-le p1, p2, :cond_6

    iget-object p1, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    iget-object p2, p1, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcarbon/widget/PagerTabStrip;->a(Lcarbon/widget/PagerTabStrip;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p3, p0, Lcarbon/widget/PagerTabStrip$a;->a:Lcarbon/widget/PagerTabStrip;

    invoke-virtual {p3}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

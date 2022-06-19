.class public Lcarbon/widget/ViewPagerIndicator$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/ViewPagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/ViewPagerIndicator;


# direct methods
.method public constructor <init>(Lcarbon/widget/ViewPagerIndicator;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcarbon/widget/ViewPagerIndicator;->f(Lcarbon/widget/ViewPagerIndicator;F)F

    iget-object p1, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/ViewPagerIndicator$a;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->a(Lcarbon/widget/ViewPagerIndicator;)I

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->c(Lcarbon/widget/ViewPagerIndicator;)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->c(Lcarbon/widget/ViewPagerIndicator;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->e(Lcarbon/widget/ViewPagerIndicator;)F

    move-result v1

    aput v1, p3, v0

    const/4 v0, 0x1

    int-to-float v1, p1

    aput v1, p3, v0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-static {p2, p3}, Lcarbon/widget/ViewPagerIndicator;->d(Lcarbon/widget/ViewPagerIndicator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->c(Lcarbon/widget/ViewPagerIndicator;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->a(Lcarbon/widget/ViewPagerIndicator;)I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->c(Lcarbon/widget/ViewPagerIndicator;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_1
    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->c(Lcarbon/widget/ViewPagerIndicator;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-object p3, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    iget-object p3, p3, Lcarbon/widget/ViewPagerIndicator;->f:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->c(Lcarbon/widget/ViewPagerIndicator;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Lah0;

    invoke-direct {p3, p0}, Lah0;-><init>(Lcarbon/widget/ViewPagerIndicator$a;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2}, Lcarbon/widget/ViewPagerIndicator;->c(Lcarbon/widget/ViewPagerIndicator;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iget-object p2, p0, Lcarbon/widget/ViewPagerIndicator$a;->a:Lcarbon/widget/ViewPagerIndicator;

    invoke-static {p2, p1}, Lcarbon/widget/ViewPagerIndicator;->b(Lcarbon/widget/ViewPagerIndicator;I)I

    :cond_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

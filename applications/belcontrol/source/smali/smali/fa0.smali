.class public Lfa0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa0$h;,
        Lfa0$g;
    }
.end annotation


# direct methods
.method public static synthetic A(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static synthetic B(Lja0;)V
    .locals 5

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/ProgressBar;

    invoke-virtual {v0}, Lcarbon/widget/ProgressBar;->getBarPadding()F

    move-result v1

    invoke-virtual {v0}, Lcarbon/widget/ProgressBar;->getBarWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcarbon/widget/ProgressBar;->getBarWidth()F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {v0}, Lcarbon/widget/ProgressBar;->getBarWidth()F

    move-result v0

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    sub-float/2addr v1, v2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    float-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic C(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcarbon/widget/ProgressBar;

    invoke-virtual {p0}, Lcarbon/widget/ProgressBar;->getBarPadding()F

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/ProgressBar;->getBarWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ProgressBar;->setBarWidth(F)V

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcarbon/widget/ProgressBar;->setBarPadding(F)V

    return-void
.end method

.method public static synthetic D(Lja0;)V
    .locals 4

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/ProgressBar;

    invoke-virtual {v0}, Lcarbon/widget/ProgressBar;->getBarWidth()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic E(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcarbon/widget/ProgressBar;

    invoke-virtual {p0}, Lcarbon/widget/ProgressBar;->getBarPadding()F

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/ProgressBar;->getBarWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ProgressBar;->setBarWidth(F)V

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcarbon/widget/ProgressBar;->setBarPadding(F)V

    return-void
.end method

.method public static synthetic F(Lja0;)V
    .locals 4

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    :cond_0
    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v2

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic G(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic H(Lja0;I)V
    .locals 6

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x50

    and-int/2addr p1, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_1
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    add-int/2addr v1, v2

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    aput v3, v2, v5

    if-eqz p1, :cond_3

    int-to-float p1, v1

    goto :goto_2

    :cond_3
    neg-int p1, v1

    int-to-float p1, p1

    :goto_2
    aput p1, v2, v4

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/high16 p1, 0x43480000    # 200.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v2, v0

    mul-float v2, v2, p1

    float-to-long v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic I(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic J(Lud0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lud0;->setTranslationZ(F)V

    return-void
.end method

.method public static synthetic K(Lud0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lud0;->setTranslationZ(F)V

    return-void
.end method

.method public static synthetic L(Lud0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lud0;->setTranslationZ(F)V

    return-void
.end method

.method public static synthetic M(Lud0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lud0;->setTranslationZ(F)V

    return-void
.end method

.method public static N(Lia0;Lud0;)V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lde;

    invoke-direct {v4}, Lde;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lfa0$c;

    invoke-direct {v4, v1, p1}, Lfa0$c;-><init>(Landroid/animation/ValueAnimator;Lud0;)V

    new-instance v5, Lr90;

    invoke-direct {v5, p1}, Lr90;-><init>(Lud0;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-virtual {p0, v6, v1, v4}, Lia0;->c([ILandroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lde;

    invoke-direct {v4}, Lde;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lfa0$d;

    invoke-direct {v4, v1, p1}, Lfa0$d;-><init>(Landroid/animation/ValueAnimator;Lud0;)V

    new-instance v6, Lf90;

    invoke-direct {v6, p1}, Lf90;-><init>(Lud0;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v0, [I

    fill-array-data v6, :array_2

    invoke-virtual {p0, v6, v1, v4}, Lia0;->c([ILandroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lde;

    invoke-direct {v4}, Lde;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lfa0$e;

    invoke-direct {v4, v1, p1}, Lfa0$e;-><init>(Landroid/animation/ValueAnimator;Lud0;)V

    new-instance v6, Ln90;

    invoke-direct {v6, p1}, Ln90;-><init>(Lud0;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v5, [I

    const v7, 0x101009e

    aput v7, v6, v8

    invoke-virtual {p0, v6, v1, v4}, Lia0;->c([ILandroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lde;

    invoke-direct {v1}, Lde;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lfa0$f;

    invoke-direct {v1, v0, p1}, Lfa0$f;-><init>(Landroid/animation/ValueAnimator;Lud0;)V

    new-instance v2, Lj90;

    invoke-direct {v2, p1}, Lj90;-><init>(Lud0;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v5, [I

    const v2, -0x101009e

    aput v2, p1, v8

    invoke-virtual {p0, p1, v0, v1}, Lia0;->c([ILandroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x10100a7
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static a()Landroid/animation/Animator;
    .locals 3

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lp90;

    invoke-direct {v2, v0}, Lp90;-><init>(Lja0;)V

    invoke-virtual {v0, v2}, Lja0;->c(Lha0;)V

    new-instance v2, Lfa0$a;

    invoke-direct {v2, v0, v1}, Lfa0$a;-><init>(Lja0;Landroid/view/animation/AccelerateDecelerateInterpolator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static b()Landroid/animation/Animator;
    .locals 3

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Ls80;

    invoke-direct {v2, v0}, Ls80;-><init>(Lja0;)V

    invoke-virtual {v0, v2}, Lja0;->c(Lha0;)V

    new-instance v2, Lfa0$b;

    invoke-direct {v2, v0, v1}, Lfa0$b;-><init>(Lja0;Landroid/view/animation/AccelerateDecelerateInterpolator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static c()Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lz80;

    invoke-direct {v1, v0}, Lz80;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance v1, Lu80;

    invoke-direct {v1, v0}, Lu80;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static d()Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lv80;

    invoke-direct {v1, v0}, Lv80;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance v1, Li90;

    invoke-direct {v1, v0}, Li90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static e()Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Lee;

    invoke-direct {v1}, Lee;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lt80;

    invoke-direct {v1, v0}, Lt80;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance v1, Lh90;

    invoke-direct {v1, v0}, Lh90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static f()Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Lce;

    invoke-direct {v1}, Lce;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lm90;

    invoke-direct {v1, v0}, Lm90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance v1, Lc90;

    invoke-direct {v1, v0}, Lc90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static g()Landroid/animation/Animator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lk90;

    invoke-direct {v1, v0}, Lk90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance v1, Lo90;

    invoke-direct {v1, v0}, Lo90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static h()Landroid/animation/Animator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lg90;

    invoke-direct {v1, v0}, Lg90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance v1, Ll90;

    invoke-direct {v1, v0}, Ll90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static i()Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Lee;

    invoke-direct {v1}, Lee;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lt90;

    invoke-direct {v1, v0}, Lt90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance v1, Lq90;

    invoke-direct {v1, v0}, Lq90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static j()Landroid/animation/Animator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Lce;

    invoke-direct {v1}, Lce;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lw80;

    invoke-direct {v1, v0}, Lw80;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance v1, Lx80;

    invoke-direct {v1, v0}, Lx80;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static k()Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Lee;

    invoke-direct {v1}, Lee;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Ls90;

    invoke-direct {v1, v0}, Ls90;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance v1, Ly80;

    invoke-direct {v1, v0}, Ly80;-><init>(Lja0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static l()Landroid/animation/ValueAnimator;
    .locals 1

    const/16 v0, 0x50

    invoke-static {v0}, Lfa0;->m(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static m(I)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    new-instance v1, Lce;

    invoke-direct {v1}, Lce;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, La90;

    invoke-direct {v1, v0, p0}, La90;-><init>(Lja0;I)V

    invoke-virtual {v0, v1}, Lja0;->c(Lha0;)V

    new-instance p0, Lb90;

    invoke-direct {p0, v0}, Lb90;-><init>(Lja0;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static synthetic n(Lja0;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x320

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic o(Lja0;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x320

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic p(Lja0;)V
    .locals 4

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/high16 v1, 0x43480000    # 200.0f

    sub-float/2addr v3, v0

    mul-float v3, v3, v1

    float-to-long v0, v3

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic q(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic r(Lja0;)V
    .locals 4

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/high16 v1, 0x43480000    # 200.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic s(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic t(Lja0;)V
    .locals 4

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/high16 v1, 0x43480000    # 200.0f

    sub-float/2addr v3, v0

    mul-float v3, v3, v1

    float-to-long v0, v3

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic u(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lj80;->carbon_1dip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic v(Lja0;)V
    .locals 4

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/high16 v1, 0x43480000    # 200.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic w(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lj80;->carbon_1dip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic x(Lja0;)V
    .locals 4

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/high16 v1, 0x43480000    # 200.0f

    sub-float/2addr v3, v0

    mul-float v3, v3, v1

    float-to-long v0, v3

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic y(Lja0;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static synthetic z(Lja0;)V
    .locals 4

    invoke-virtual {p0}, Lja0;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/high16 v1, 0x43480000    # 200.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

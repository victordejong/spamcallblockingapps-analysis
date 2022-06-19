.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    a = Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$b;,
        Lcom/google/android/material/appbar/AppBarLayout$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:Landroidx/core/h/ac;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/appbar/AppBarLayout$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/animation/ValueAnimator;

.field private p:[I

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method private a(Lcom/google/android/material/q/g;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 841
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/a$d;->design_appbar_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 842
    if-eqz p2, :cond_1

    move v2, v1

    .line 843
    :goto_0
    if-eqz p2, :cond_2

    .line 845
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 849
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Landroid/animation/ValueAnimator;

    .line 850
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Landroid/animation/ValueAnimator;

    .line 851
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$g;->app_bar_elevation_anim_duration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 850
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 852
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 853
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/q/g;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 860
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 861
    return-void

    :cond_1
    move v2, v0

    .line 842
    goto :goto_0

    :cond_2
    move v0, v1

    .line 843
    goto :goto_1
.end method

.method private a(ZZZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 563
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x4

    :goto_1
    or-int/2addr v1, v2

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:I

    .line 567
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    .line 568
    return-void

    .line 563
    :cond_1
    const/4 v1, 0x2

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private b(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 910
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 912
    if-eqz p1, :cond_3

    .line 913
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 915
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 920
    :cond_0
    if-eqz v0, :cond_1

    .line 921
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Z)Z
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z

    if-eq v0, p1, :cond_0

    .line 810
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z

    .line 811
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    .line 812
    const/4 v0, 0x1

    .line 814
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setWillNotDraw(Z)V

    .line 486
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 494
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x1

    .line 498
    :goto_1
    return v0

    .line 493
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 498
    goto :goto_1
.end method

.method private i()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 503
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    .line 504
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I

    .line 505
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I

    .line 506
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 931
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    .line 932
    return-void
.end method

.method private k()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 975
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 976
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 977
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 979
    :cond_0
    return v0
.end method


# virtual methods
.method protected a()Lcom/google/android/material/appbar/AppBarLayout$b;
    .locals 3

    .prologue
    .line 577
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$b;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$b;
    .locals 2

    .prologue
    .line 582
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$b;
    .locals 2

    .prologue
    .line 587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$b;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 592
    :goto_0
    return-object v0

    .line 589
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 590
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 592
    :cond_1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 737
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->a:I

    .line 739
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->willNotDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 746
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 747
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$a;

    .line 748
    if-eqz v0, :cond_1

    .line 749
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$a;->a(Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 746
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 753
    :cond_2
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->a(ZZZ)V

    .line 560
    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 901
    if-nez v0, :cond_2

    .line 904
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 905
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 904
    :goto_1
    return v0

    .line 905
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method a(Z)Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    if-eq v0, p1, :cond_1

    .line 829
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    .line 830
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    .line 831
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/g;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/q/g;Z)V

    .line 834
    :cond_0
    const/4 v0, 0x1

    .line 836
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 572
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout$b;

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 383
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 385
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->a:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 386
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 387
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 389
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 393
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 395
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    .line 398
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :cond_0
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 962
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:I

    .line 963
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->a()Lcom/google/android/material/appbar/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->a()Lcom/google/android/material/appbar/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 659
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 661
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I

    .line 697
    :goto_0
    return v0

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v1, v3

    :goto_1
    if-ltz v2, :cond_5

    .line 666
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 667
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    .line 668
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 669
    iget v6, v0, Lcom/google/android/material/appbar/AppBarLayout$b;->a:I

    .line 671
    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 673
    iget v7, v0, Lcom/google/android/material/appbar/AppBarLayout$b;->topMargin:I

    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$b;->bottomMargin:I

    add-int/2addr v0, v7

    .line 675
    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_2

    .line 677
    invoke-static {v4}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v6

    add-int/2addr v0, v6

    .line 685
    :goto_2
    if-nez v2, :cond_1

    invoke-static {v4}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v4

    sub-int v4, v5, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 690
    :cond_1
    add-int/2addr v0, v1

    .line 665
    :goto_3
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_1

    .line 678
    :cond_2
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    .line 680
    invoke-static {v4}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    add-int/2addr v0, v6

    goto :goto_2

    .line 683
    :cond_3
    add-int/2addr v0, v5

    goto :goto_2

    .line 691
    :cond_4
    if-lez v1, :cond_6

    .line 697
    :cond_5
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method getDownNestedScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 702
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 704
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I

    .line 733
    :goto_0
    return v0

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 709
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 710
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    .line 711
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 712
    iget v7, v0, Lcom/google/android/material/appbar/AppBarLayout$b;->topMargin:I

    iget v8, v0, Lcom/google/android/material/appbar/AppBarLayout$b;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 714
    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$b;->a:I

    .line 716
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_2

    .line 718
    add-int/2addr v1, v6

    .line 720
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 724
    invoke-static {v5}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    .line 733
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I

    goto :goto_0

    .line 708
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getLiftOnScrollTargetViewId()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    .line 757
    invoke-static {p0}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v0

    .line 758
    if-eqz v0, :cond_0

    .line 760
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 773
    :goto_0
    return v0

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    .line 765
    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 766
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v0

    .line 767
    :goto_1
    if-eqz v0, :cond_2

    .line 768
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 766
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 773
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method getPendingAction()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:I

    return v0
.end method

.method public getStatusBarForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:Landroidx/core/h/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:Landroidx/core/h/ac;

    invoke-virtual {v0}, Landroidx/core/h/ac;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 612
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 613
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    .line 645
    :goto_0
    return v0

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_3

    .line 618
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 619
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    .line 620
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 621
    iget v7, v0, Lcom/google/android/material/appbar/AppBarLayout$b;->a:I

    .line 623
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_3

    .line 625
    iget v8, v0, Lcom/google/android/material/appbar/AppBarLayout$b;->topMargin:I

    add-int/2addr v6, v8

    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$b;->bottomMargin:I

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    .line 627
    if-nez v2, :cond_1

    invoke-static {v5}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v0, v1

    .line 632
    :cond_1
    and-int/lit8 v1, v7, 0x2

    if-eqz v1, :cond_2

    .line 636
    invoke-static {v5}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 645
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    goto :goto_0

    .line 617
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method getUpNestedPreScrollRange()I
    .locals 1

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 521
    invoke-static {p0}, Lcom/google/android/material/q/h;->a(Landroid/view/View;)V

    .line 522
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:[I

    if-nez v0, :cond_0

    .line 781
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:[I

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:[I

    .line 784
    array-length v0, v1

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 786
    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/material/a$b;->state_liftable:I

    :goto_0
    aput v0, v1, v3

    .line 787
    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/google/android/material/a$b;->state_lifted:I

    :goto_1
    aput v0, v1, v3

    .line 791
    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/material/a$b;->state_collapsible:I

    :goto_2
    aput v0, v1, v3

    .line 792
    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/material/a$b;->state_collapsed:I

    :goto_3
    aput v0, v1, v3

    .line 794
    invoke-static {v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0

    .line 786
    :cond_1
    sget v0, Lcom/google/android/material/a$b;->state_liftable:I

    neg-int v0, v0

    goto :goto_0

    .line 787
    :cond_2
    sget v0, Lcom/google/android/material/a$b;->state_lifted:I

    neg-int v0, v0

    goto :goto_1

    .line 791
    :cond_3
    sget v0, Lcom/google/android/material/a$b;->state_collapsible:I

    neg-int v0, v0

    goto :goto_2

    .line 792
    :cond_4
    sget v0, Lcom/google/android/material/a$b;->state_collapsed:I

    neg-int v0, v0

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 597
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 599
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->j()V

    .line 600
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 450
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 452
    invoke-static {p0}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    .line 455
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 456
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 455
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->i()V

    .line 462
    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_1

    .line 464
    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$b;

    .line 466
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$b;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_5

    .line 469
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v4

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->i:Z

    if-nez v0, :cond_4

    .line 480
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v2

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->b(Z)Z

    .line 482
    :cond_4
    return-void

    .line 463
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_6
    move v0, v1

    .line 480
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 420
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 424
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 425
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_0

    .line 426
    invoke-static {p0}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    .line 429
    sparse-switch v1, :sswitch_data_0

    .line 442
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setMeasuredDimension(II)V

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->i()V

    .line 446
    return-void

    .line 434
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 433
    invoke-static {v0, v1, v2}, Landroidx/core/c/a;->a(III)I

    move-result v0

    goto :goto_0

    .line 438
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    goto :goto_0

    .line 429
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public setElevation(F)V
    .locals 0

    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 529
    invoke-static {p0, p1}, Lcom/google/android/material/q/h;->a(Landroid/view/View;F)V

    .line 530
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .prologue
    .line 544
    invoke-static {p0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->a(ZZ)V

    .line 545
    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 0

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    .line 873
    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .locals 0

    .prologue
    .line 885
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    .line 887
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->j()V

    .line 888
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 510
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 515
    return-void
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 323
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 324
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 327
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    .line 328
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 333
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 334
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 336
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->f()V

    .line 337
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 339
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 333
    goto :goto_0
.end method

.method public setStatusBarForegroundColor(I)V
    .locals 1

    .prologue
    .line 351
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 352
    return-void
.end method

.method public setStatusBarForegroundResource(I)V
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 943
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 944
    invoke-static {p0, p1}, Lcom/google/android/material/appbar/e;->a(Landroid/view/View;F)V

    .line 946
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 413
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 416
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 412
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

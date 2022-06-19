.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "BottomAppBar.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$b;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$a;
    }
.end annotation


# static fields
.field private static final g:I


# instance fields
.field e:Landroid/animation/AnimatorListenerAdapter;

.field f:Lcom/google/android/material/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/a/k",
            "<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:Lcom/google/android/material/q/g;

.field private j:Landroid/animation/Animator;

.field private k:Landroid/animation/Animator;

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_BottomAppBar:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->g:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d(I)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 579
    invoke-static {p0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 587
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 590
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()Z

    move-result v2

    if-nez v2, :cond_2

    move p2, v0

    move p1, v0

    .line 595
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZLjava/util/List;)V

    .line 597
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 598
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 599
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    .line 600
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$3;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private a(IZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 621
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    .line 624
    if-nez v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    const-string/jumbo v1, "alpha"

    new-array v2, v7, [F

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 631
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getTranslationX()F

    move-result v2

    .line 632
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 635
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 637
    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 639
    new-instance v3, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 656
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 657
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 658
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 659
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 663
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->e:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 811
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 824
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->f:Lcom/google/android/material/a/k;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Lcom/google/android/material/a/k;)V

    .line 825
    return-void
.end method

.method private b(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    .line 573
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d(I)F

    move-result v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 574
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 575
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    return-void
.end method

.method private b(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 1

    .prologue
    .line 708
    .line 709
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v0

    int-to-float v0, v0

    .line 708
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setTranslationX(F)V

    .line 710
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->n()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 475
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    if-eq v0, p1, :cond_0

    invoke-static {p0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 483
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(ILjava/util/List;)V

    .line 491
    :goto_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 492
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 493
    iput-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    .line 494
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 506
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(ILjava/util/List;)V

    goto :goto_1
.end method

.method private d(I)F
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 672
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_1

    move v1, v0

    .line 673
    :goto_0
    if-ne p1, v0, :cond_2

    .line 674
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h:I

    sub-int/2addr v2, v3

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    mul-int/2addr v0, v2

    int-to-float v0, v0

    .line 673
    :goto_1
    return v0

    .line 672
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 674
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->p()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()V

    return-void
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    .prologue
    .line 684
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 685
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 686
    instance-of v2, v0, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 687
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 691
    :goto_1
    return-object v0

    .line 684
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 691
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getBottomInset()I
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:I

    return v0
.end method

.method private getFabTranslationX()F
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d(I)F

    move-result v0

    return v0
.end method

.method private getFabTranslationY()F
    .locals 1

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->b()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method private getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    .line 777
    invoke-virtual {v0}, Lcom/google/android/material/q/g;->L()Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/q/k;->k()Lcom/google/android/material/q/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomappbar/a;

    .line 776
    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    .line 446
    invoke-interface {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->a(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    .line 449
    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 452
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    .line 455
    invoke-interface {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->b(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method private o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->p()Landroid/view/View;

    move-result-object v0

    .line 512
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 529
    :cond_0
    :goto_0
    return-object v0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 523
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 524
    instance-of v3, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 529
    goto :goto_0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 754
    :cond_1
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/a;->b(F)V

    .line 783
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->p()Landroid/view/View;

    move-result-object v1

    .line 784
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/material/q/g;->p(F)V

    .line 785
    if-eqz v1, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 787
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 789
    :cond_0
    return-void

    .line 784
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 792
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_0

    .line 794
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    .line 795
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 796
    invoke-direct {p0, v0, v2, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 722
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    if-ne v0, v4, :cond_1

    move v5, v4

    .line 723
    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result v0

    :goto_1
    move v2, v1

    move v3, v0

    .line 726
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 727
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 729
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/Toolbar$b;

    if-eqz v0, :cond_3

    .line 730
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    const v7, 0x800007

    and-int/2addr v0, v7

    const v7, 0x800003

    if-ne v0, v7, :cond_3

    move v0, v4

    .line 733
    :goto_3
    if-eqz v0, :cond_0

    .line 734
    if-eqz v5, :cond_4

    .line 736
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4
    move v3, v0

    .line 726
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    move v5, v1

    .line 722
    goto :goto_0

    :cond_2
    move v0, v1

    .line 723
    goto :goto_1

    :cond_3
    move v0, v1

    .line 730
    goto :goto_3

    .line 737
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    .line 741
    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getRight()I

    move-result v0

    .line 742
    :goto_5
    sub-int v0, v3, v0

    .line 744
    if-ne p2, v4, :cond_6

    if-eqz p3, :cond_6

    move v1, v0

    :cond_6
    return v1

    .line 741
    :cond_7
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLeft()I

    move-result v0

    goto :goto_5
.end method

.method protected a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m()V

    .line 554
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$2;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V

    goto :goto_0
.end method

.method b(I)Z
    .locals 2

    .prologue
    .line 465
    int-to-float v0, p1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/a;->a()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/a;->a(F)V

    .line 467
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->invalidateSelf()V

    .line 468
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->N()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 845
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->b()F

    move-result v0

    return v0
.end method

.method public getFabAlignmentMode()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    return v0
.end method

.method public getFabAnimationMode()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    return v0
.end method

.method public getFabCradleMargin()F
    .locals 1

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->c()F

    move-result v0

    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->d()F

    move-result v0

    return v0
.end method

.method public getHideOnScroll()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 852
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 854
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    invoke-static {p0, v0}, Lcom/google/android/material/q/h;->a(Landroid/view/View;Lcom/google/android/material/q/g;)V

    .line 858
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 861
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 758
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    .line 764
    if-eqz p1, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()V

    .line 767
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()V

    .line 771
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t()V

    .line 772
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 996
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$b;

    if-nez v0, :cond_0

    .line 997
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1004
    :goto_0
    return-void

    .line 1000
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$b;

    .line 1001
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1002
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    .line 1003
    iget-boolean v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->b:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 987
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 988
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$b;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$b;-><init>(Landroid/os/Parcelable;)V

    .line 989
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:I

    .line 990
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:Z

    iput-boolean v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->b:Z

    .line 991
    return-object v1
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 320
    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->c(F)V

    .line 375
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->invalidateSelf()V

    .line 376
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()V

    .line 378
    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->r(F)V

    .line 412
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    .line 413
    invoke-virtual {v0}, Lcom/google/android/material/q/g;->V()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    invoke-virtual {v1}, Lcom/google/android/material/q/g;->X()I

    move-result v1

    sub-int/2addr v0, v1

    .line 414
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->a(Landroid/view/View;I)V

    .line 415
    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->c(I)V

    .line 294
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZ)V

    .line 295
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l:I

    .line 296
    return-void
.end method

.method public setFabAnimationMode(I)V
    .locals 0

    .prologue
    .line 315
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    .line 316
    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->d(F)V

    .line 340
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->invalidateSelf()V

    .line 342
    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->e(F)V

    .line 354
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->invalidateSelf()V

    .line 356
    :cond_0
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Z

    .line 396
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 839
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 834
    return-void
.end method

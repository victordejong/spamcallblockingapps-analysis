.class public Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "SourceFile"


# instance fields
.field private b:Landroid/animation/ValueAnimator;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->c:Z

    return-void
.end method

.method private a(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->getTopAndBottomOffset()I

    move-result p4

    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    .line 60
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->c()I

    move-result p1

    neg-int p1, p1

    if-ne p4, p1, :cond_2

    .line 61
    :cond_1
    invoke-static {p3}, Landroidx/core/view/v;->A(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 106
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->b(I)Z

    return-void
.end method

.method private c(I)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->b:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->b:Landroid/animation/ValueAnimator;

    .line 104
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/behavior/-$$Lambda$FixAppBarLayoutBehavior$xSJQtWaQxppUUDQEwljNGOr8L5Y;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/behavior/-$$Lambda$FixAppBarLayoutBehavior$xSJQtWaQxppUUDQEwljNGOr8L5Y;-><init>(Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->b:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->getTopAndBottomOffset()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 112
    iget-object p1, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$xSJQtWaQxppUUDQEwljNGOr8L5Y(Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final bridge synthetic a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 10

    .line 26
    move-object v9, p2

    check-cast v9, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1043
    invoke-super/range {v0 .. v8}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    move-object v1, p3

    move/from16 v2, p7

    move/from16 v3, p8

    .line 1045
    invoke-direct {p0, v2, v9, p3, v3}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->a(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final bridge synthetic a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 78
    iget-boolean p1, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->c:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->c:Z

    .line 84
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->c()I

    move-result p2

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->getTopAndBottomOffset()I

    move-result p3

    neg-int p4, p2

    if-le p3, p4, :cond_3

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p3, p3

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    neg-float p2, p2

    cmpg-float p2, p3, p2

    if-gez p2, :cond_2

    .line 94
    invoke-direct {p0, p4}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->c(I)V

    return-void

    .line 97
    :cond_2
    invoke-direct {p0, p1}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->c(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 0

    .line 52
    invoke-super/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    .line 53
    invoke-direct {p0, p5, p2, p3, p7}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->a(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final bridge synthetic a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 68
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->c:Z

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 72
    :cond_0
    iget-boolean p1, p0, Lcom/callapp/contacts/behavior/FixAppBarLayoutBehavior;->c:Z

    return p1
.end method

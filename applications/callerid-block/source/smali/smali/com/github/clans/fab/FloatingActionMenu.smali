.class public Lcom/github/clans/fab/FloatingActionMenu;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionMenu$h;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:I

.field private G:I

.field private H:I

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:I

.field private K:Landroid/view/animation/Interpolator;

.field private L:Landroid/view/animation/Interpolator;

.field private M:Z

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Landroid/graphics/Typeface;

.field private T:Z

.field private U:Landroid/widget/ImageView;

.field private V:Z

.field private W:I

.field private a0:Lcom/github/clans/fab/FloatingActionMenu$h;

.field private b:Landroid/animation/AnimatorSet;

.field private b0:Landroid/animation/ValueAnimator;

.field private c:Landroid/animation/AnimatorSet;

.field private c0:Landroid/animation/ValueAnimator;

.field private d:Landroid/animation/AnimatorSet;

.field private d0:I

.field private e:I

.field private e0:I

.field private f:Lcom/github/clans/fab/FloatingActionButton;

.field private f0:Landroid/content/Context;

.field private g:I

.field private g0:Ljava/lang/String;

.field private h:I

.field private h0:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/content/res/ColorStateList;

.field private u:F

.field private v:I

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/clans/fab/FloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p3, v0}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p3, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p3, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    iput-boolean p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    invoke-direct {p0, p1, p2}, Lcom/github/clans/fab/FloatingActionMenu;->n(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/github/clans/fab/FloatingActionMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    return p0
.end method

.method static synthetic b(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    iget-object p0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    return-object p0
.end method

.method static synthetic c(Lcom/github/clans/fab/FloatingActionMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    return p1
.end method

.method static synthetic d(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionMenu$h;
    .locals 0

    iget-object p0, p0, Lcom/github/clans/fab/FloatingActionMenu;->a0:Lcom/github/clans/fab/FloatingActionMenu$h;

    return-object p0
.end method

.method private e(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 6

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getLabelText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/github/clans/fab/Label;

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->f0:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/github/clans/fab/Label;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v1, p1}, Lcom/github/clans/fab/Label;->setFab(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->n:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/clans/fab/Label;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/clans/fab/Label;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    const/4 v4, 0x0

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setUsingStyle(Z)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->x:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->y:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->z:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/github/clans/fab/Label;->w(III)V

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:Z

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setCornerRadius(I)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    if-lez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setLabelEllipsize(Lcom/github/clans/fab/Label;)V

    :cond_2
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1}, Lcom/github/clans/fab/Label;->y()V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->u:F

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    :cond_3
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    if-ltz v2, :cond_4

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->S:Landroid/graphics/Typeface;

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f090121

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private f(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-int p1, v2

    return p1
.end method

.method private h()V
    .locals 8

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:I

    const/high16 v1, 0x43070000    # 135.0f

    const/high16 v2, -0x3cf90000    # -135.0f

    if-nez v0, :cond_2

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez v0, :cond_0

    const/high16 v3, -0x3cf90000    # -135.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x43070000    # 135.0f

    :goto_0
    if-nez v0, :cond_4

    :cond_1
    const/high16 v1, -0x3cf90000    # -135.0f

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez v0, :cond_3

    const/high16 v3, 0x43070000    # 135.0f

    goto :goto_1

    :cond_3
    const/high16 v3, -0x3cf90000    # -135.0f

    :goto_1
    if-nez v0, :cond_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v4, v2, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v3, 0x1

    const/4 v6, 0x0

    aput v6, v4, v3

    const-string v7, "rotation"

    invoke-static {v0, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    new-array v2, v2, [F

    aput v6, v2, v5

    aput v1, v2, v3

    invoke-static {v4, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->K:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->L:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    const v2, 0x7f090121

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->e(Lcom/github/clans/fab/FloatingActionButton;)V

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenu$c;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionMenu$c;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    invoke-virtual {v2, v1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private j()V
    .locals 4

    new-instance v0, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->A:Z

    iput-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionButton;->E(III)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->B:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->Q:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->b:I

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->h()V

    return-void
.end method

.method private n(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    sget-object v0, Lcom/callerid/block/R$styleable;->FloatingActionMenu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    const/16 v0, 0x13

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    const/16 p2, 0x1a

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez p2, :cond_0

    const p2, 0x7f010029

    goto :goto_0

    :cond_0
    const p2, 0x7f010028

    :goto_0
    const/16 v0, 0x1b

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->n:I

    const/16 p2, 0x12

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez v0, :cond_1

    const v0, 0x7f01002b

    goto :goto_1

    :cond_1
    const v0, 0x7f01002a

    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    const/16 p2, 0x19

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    const/16 p2, 0x18

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    const/16 p2, 0x16

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    const/16 p2, 0x17

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    const/4 v0, -0x1

    if-nez p2, :cond_2

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    :cond_2
    const/16 p2, 0x20

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->u:F

    const/16 p2, 0xf

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    const/16 p2, 0x1c

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:Z

    const/16 p2, 0xc

    const v3, -0xcccccd

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->x:I

    const/16 p2, 0xd

    const v3, -0xbbbbbc

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->y:I

    const/16 p2, 0xe

    const v3, 0x66ffffff

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->z:I

    const/16 p2, 0x26

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->A:Z

    const/16 p2, 0x22

    const/high16 v3, 0x66000000

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->B:I

    const/16 p2, 0x23

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    const/16 p2, 0x24

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    const/16 p2, 0x25

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    const/4 p2, 0x4

    const v3, -0x25bcca

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    const/4 p2, 0x5

    const v3, -0x18afbd

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    const/4 p2, 0x6

    const v3, -0x66000001

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    const/16 p2, 0x32

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0800e0

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    :cond_3
    const/16 p2, 0x1d

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:Z

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->Q:I

    const/16 p2, 0x1e

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->S:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/16 p2, 0x21

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->h0:Z

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->g0:Ljava/lang/String;

    :cond_5
    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/github/clans/fab/FloatingActionMenu;->q(I)V

    :cond_6
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->K:Landroid/view/animation/Interpolator;

    new-instance p2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->L:Landroid/view/animation/Interpolator;

    new-instance p2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    invoke-direct {p2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->f0:Landroid/content/Context;

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->o()V

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->j()V

    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->p(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load specified custom font: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private o()V
    .locals 11

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/4 v7, 0x1

    aput v0, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->b0:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->b0:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/github/clans/fab/FloatingActionMenu$a;

    invoke-direct {v10, p0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionMenu$a;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v4, [I

    aput v0, v4, v6

    aput v6, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c0:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/github/clans/fab/FloatingActionMenu$b;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionMenu$b;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private p(Landroid/content/res/TypedArray;)V
    .locals 2

    const/16 v0, 0x9

    const v1, 0x7f010027

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    const/4 v0, 0x7

    const v1, 0x7f010026

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    return-void
.end method

.method private q(I)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    return-void
.end method

.method private r()Z
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setLabelEllipsize(Lcom/github/clans/fab/Label;)V
    .locals 2

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return p1
.end method

.method public g(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/github/clans/fab/FloatingActionButton;

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    new-instance v5, Lcom/github/clans/fab/FloatingActionMenu$f;

    invoke-direct {v5, p0, v3, p1}, Lcom/github/clans/fab/FloatingActionMenu$f;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    new-instance v0, Lcom/github/clans/fab/FloatingActionMenu$g;

    invoke-direct {v0, p0}, Lcom/github/clans/fab/FloatingActionMenu$g;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    mul-int v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->k()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->l(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->m(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAnimationDelayPerItem()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    return v0
.end method

.method public getIconToggleAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getMenuButtonColorNormal()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    return v0
.end method

.method public getMenuButtonColorPressed()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    return v0
.end method

.method public getMenuButtonColorRipple()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    return v0
.end method

.method public getMenuButtonLabelText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->g0:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected k()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public l(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected m(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->i()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez p1, :cond_0

    sub-int/2addr p4, p2

    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    add-int p4, p1, p2

    :goto_0
    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    sub-int/2addr p5, p3

    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    :goto_2
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p4, p3

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v1, p3, p5, v2, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p4, p3

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p5

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, p3, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p5, p3

    iget p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    add-int/2addr p5, p3

    :cond_3
    iget p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    sub-int/2addr p3, p2

    :goto_3
    if-ltz p3, :cond_f

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    if-ne p2, v1, :cond_4

    goto/16 :goto_9

    :cond_4
    move-object v1, p2

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p5, v3

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    sub-int/2addr p5, v3

    :cond_6
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    if-eq v1, v3, :cond_7

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p5

    invoke-virtual {v1, v2, p5, v3, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    if-nez v2, :cond_7

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->u(Z)V

    :cond_7
    const v2, 0x7f090121

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_d

    iget-boolean v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->h0:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    :goto_4
    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez v4, :cond_9

    sub-int v3, p4, v3

    goto :goto_5

    :cond_9
    add-int/2addr v3, p4

    :goto_5
    if-nez v4, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    :goto_6
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->e0:I

    if-nez v5, :cond_b

    move v6, v4

    goto :goto_7

    :cond_b
    move v6, v3

    :goto_7
    if-nez v5, :cond_c

    goto :goto_8

    :cond_c
    move v3, v4

    :goto_8
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    sub-int v4, p5, v4

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v2, v6, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    if-nez v1, :cond_d

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    if-eqz p1, :cond_e

    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    sub-int/2addr p5, p2

    goto :goto_9

    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p5, p2

    iget p2, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    add-int/2addr p5, p2

    :goto_9
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_3

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    move-object v6, p0

    const/4 v7, 0x0

    iput v7, v6, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    iget-object v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/4 v8, 0x0

    :goto_0
    iget v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    const/16 v9, 0x8

    if-ge v8, v0, :cond_2

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_1

    iget-object v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    if-ne v10, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2
    iget v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    const/4 v2, 0x1

    if-ge v8, v1, :cond_7

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_6

    iget-object v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    if-ne v1, v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/lit8 v11, v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v12, v0, v3

    const v0, 0x7f090121

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/github/clans/fab/Label;

    if-eqz v13, :cond_5

    iget v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget-boolean v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->h0:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    :goto_3
    div-int v14, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v13}, Lcom/github/clans/fab/Label;->n()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    add-int/2addr v0, v1

    add-int v3, v0, v14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v11, v0

    add-int/2addr v11, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_5
    move v0, v12

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    iget v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    iget v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    add-int/2addr v10, v3

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    iget v4, v6, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    sub-int/2addr v4, v2

    mul-int v3, v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->f(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v1

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    move/from16 v2, p2

    invoke-static {v0, v2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v0

    :cond_9
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->V:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->g(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    return v0
.end method

.method public setAnimated(Z)V
    .locals 7

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setAnimationDelayPerItem(I)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    return-void
.end method

.method public setClosedOnTouchOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->V:Z

    return-void
.end method

.method public setIconAnimated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    return-void
.end method

.method public setIconAnimationCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconAnimationOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconToggleAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setMenuButtonColorNormal(I)V
    .locals 1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setMenuButtonColorNormalResId(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormalResId(I)V

    return-void
.end method

.method public setMenuButtonColorPressed(I)V
    .locals 1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setMenuButtonColorPressedResId(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressedResId(I)V

    return-void
.end method

.method public setMenuButtonColorRipple(I)V
    .locals 1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setMenuButtonColorRippleResId(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRippleResId(I)V

    return-void
.end method

.method public setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setMenuButtonLabelText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    return-void
.end method

.method public setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuButtonLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$h;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->a0:Lcom/github/clans/fab/FloatingActionMenu$h;

    return-void
.end method

.method public t(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/github/clans/fab/FloatingActionButton;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    new-instance v6, Lcom/github/clans/fab/FloatingActionMenu$d;

    invoke-direct {v6, p0, v4, p1}, Lcom/github/clans/fab/FloatingActionMenu$d;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    add-int/2addr v3, v4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenu$e;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionMenu$e;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/2addr v2, v0

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    mul-int v2, v2, v0

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public u(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->g(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->t(Z)V

    :goto_0
    return-void
.end method

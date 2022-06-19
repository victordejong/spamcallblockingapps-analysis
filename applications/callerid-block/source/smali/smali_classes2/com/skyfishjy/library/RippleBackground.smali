.class public Lcom/skyfishjy/library/RippleBackground;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skyfishjy/library/RippleBackground$a;
    }
.end annotation


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:Landroid/graphics/Paint;

.field private k:Z

.field private l:Landroid/animation/AnimatorSet;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/widget/RelativeLayout$LayoutParams;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/skyfishjy/library/RippleBackground$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/skyfishjy/library/RippleBackground;->k:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->o:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/skyfishjy/library/RippleBackground;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/skyfishjy/library/RippleBackground;->k:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/skyfishjy/library/RippleBackground;->o:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/skyfishjy/library/RippleBackground;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/skyfishjy/library/RippleBackground;)F
    .locals 0

    iget p0, p0, Lcom/skyfishjy/library/RippleBackground;->c:F

    return p0
.end method

.method static synthetic b(Lcom/skyfishjy/library/RippleBackground;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/skyfishjy/library/RippleBackground;->j:Landroid/graphics/Paint;

    return-object p0
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    sget-object v0, Lcom/skyfishjy/library/c;->RippleBackground:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/skyfishjy/library/c;->RippleBackground_rb_color:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/skyfishjy/library/a;->rippelColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->b:I

    sget p2, Lcom/skyfishjy/library/c;->RippleBackground_rb_strokeWidth:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/skyfishjy/library/b;->rippleStrokeWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->c:F

    sget p2, Lcom/skyfishjy/library/c;->RippleBackground_rb_radius:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/skyfishjy/library/b;->rippleRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->d:F

    sget p2, Lcom/skyfishjy/library/c;->RippleBackground_rb_duration:I

    const/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->e:I

    sget p2, Lcom/skyfishjy/library/c;->RippleBackground_rb_rippleAmount:I

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->f:I

    sget p2, Lcom/skyfishjy/library/c;->RippleBackground_rb_scale:I

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->h:F

    sget p2, Lcom/skyfishjy/library/c;->RippleBackground_rb_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->i:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/skyfishjy/library/RippleBackground;->e:I

    iget p2, p0, Lcom/skyfishjy/library/RippleBackground;->f:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/skyfishjy/library/RippleBackground;->g:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->j:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p1, p0, Lcom/skyfishjy/library/RippleBackground;->i:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/skyfishjy/library/RippleBackground;->c:F

    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->b:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->d:F

    iget v2, p0, Lcom/skyfishjy/library/RippleBackground;->c:F

    add-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-float/2addr v1, v2

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-direct {p1, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->n:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->l:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->e:I

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->l:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->m:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_1
    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->f:I

    if-ge p1, v1, :cond_2

    new-instance v1, Lcom/skyfishjy/library/RippleBackground$a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/skyfishjy/library/RippleBackground$a;-><init>(Lcom/skyfishjy/library/RippleBackground;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/skyfishjy/library/RippleBackground;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/skyfishjy/library/RippleBackground;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v0

    iget v6, p0, Lcom/skyfishjy/library/RippleBackground;->h:F

    aput v6, v4, p2

    const-string v6, "ScaleX"

    invoke-static {v1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v4, p2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget v6, p0, Lcom/skyfishjy/library/RippleBackground;->g:I

    mul-int v6, v6, p1

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v6, p0, Lcom/skyfishjy/library/RippleBackground;->m:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v3, [F

    aput v5, v4, v0

    iget v5, p0, Lcom/skyfishjy/library/RippleBackground;->h:F

    aput v5, v4, p2

    const-string v5, "ScaleY"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v4, p2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget v5, p0, Lcom/skyfishjy/library/RippleBackground;->g:I

    mul-int v5, v5, p1

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v5, p0, Lcom/skyfishjy/library/RippleBackground;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const-string v4, "Alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget v3, p0, Lcom/skyfishjy/library/RippleBackground;->g:I

    mul-int v3, v3, p1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/skyfishjy/library/RippleBackground;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->l:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/skyfishjy/library/RippleBackground;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attributes should be provided to this view,"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->k:Z

    return v0
.end method

.method public e()V
    .locals 3

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skyfishjy/library/RippleBackground$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->k:Z

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->k:Z

    :cond_0
    return-void
.end method

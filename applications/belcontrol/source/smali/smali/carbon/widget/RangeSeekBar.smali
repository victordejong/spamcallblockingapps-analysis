.class public Lcarbon/widget/RangeSeekBar;
.super Lcarbon/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/RangeSeekBar$d;,
        Lcarbon/widget/RangeSeekBar$e;
    }
.end annotation


# static fields
.field public static m0:F

.field public static n0:F

.field public static o0:F


# instance fields
.field public O:F

.field public P:F

.field public Q:F

.field public R:F

.field public S:F

.field public T:F

.field public U:F

.field public V:I

.field public W:Z

.field public a0:I

.field public b0:Z

.field public c0:Ljava/lang/String;

.field public d0:Lad0;

.field public e0:Lcarbon/widget/RangeSeekBar$d;

.field public f0:I

.field public g0:Landroid/graphics/Paint;

.field public h0:I

.field public i0:Lcarbon/widget/RangeSeekBar$e;

.field public j0:Landroid/view/animation/DecelerateInterpolator;

.field public k0:Landroid/animation/ValueAnimator;

.field public l0:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x101007b

    invoke-direct {p0, p1, v0, v1}, Lcarbon/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->O:F

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->P:F

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->S:F

    const/4 p1, 0x1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->V:I

    iput-boolean p1, p0, Lcarbon/widget/RangeSeekBar;->W:Z

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->a0:I

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->j0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v0, v1}, Lcarbon/widget/RangeSeekBar;->s(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcarbon/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->O:F

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->P:F

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->S:F

    const/4 p1, 0x1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->V:I

    iput-boolean p1, p0, Lcarbon/widget/RangeSeekBar;->W:Z

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->a0:I

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->j0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, p2, v0}, Lcarbon/widget/RangeSeekBar;->s(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcarbon/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->O:F

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->P:F

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->S:F

    const/4 p1, 0x1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->V:I

    iput-boolean p1, p0, Lcarbon/widget/RangeSeekBar;->W:Z

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->a0:I

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->j0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/RangeSeekBar;->s(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic B(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->U:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public static synthetic r(Lcarbon/widget/RangeSeekBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic t(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->T:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private synthetic v(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->U:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private synthetic x(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->O:F

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcarbon/view/View;->f:Lhc0;

    invoke-interface {v1}, Lhc0;->getRadius()I

    move-result v1

    iget-object v2, p0, Lcarbon/view/View;->f:Lhc0;

    sub-int v3, p1, v1

    sub-int v4, v0, v1

    add-int/2addr p1, v1

    add-int/2addr v0, v1

    invoke-interface {v2, v3, v4, p1, v0}, Lhc0;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private synthetic z(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->P:F

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcarbon/view/View;->f:Lhc0;

    invoke-interface {v1}, Lhc0;->getRadius()I

    move-result v1

    iget-object v2, p0, Lcarbon/view/View;->f:Lhc0;

    sub-int v3, p1, v1

    sub-int v4, v0, v1

    add-int/2addr p1, v1

    add-int/2addr v0, v1

    invoke-interface {v2, v3, v4, p1, v0}, Lhc0;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public synthetic A(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/RangeSeekBar;->z(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic C(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/RangeSeekBar;->B(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public final D(F)I
    .locals 4

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->S:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    add-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget p1, p0, Lcarbon/widget/RangeSeekBar;->S:F

    float-to-double v2, p1

    mul-double v0, v0, v2

    iget p1, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Lcarbon/view/View;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->O:F

    iget v1, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcarbon/widget/RangeSeekBar;->R:F

    sub-float v3, v2, v1

    div-float/2addr v0, v3

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->P:F

    sub-float/2addr v3, v1

    sub-float/2addr v2, v1

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v3, v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    float-to-int v2, v3

    iget-object v3, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    sget v4, Lcarbon/widget/RangeSeekBar;->o0:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    iget v4, p0, Lcarbon/widget/RangeSeekBar;->h0:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcarbon/widget/RangeSeekBar;->T:F

    add-float/2addr v3, v4

    int-to-float v0, v0

    sub-float v4, v0, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v5, v3

    int-to-float v8, v1

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->T:F

    sub-float v7, v0, v3

    iget-object v9, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    int-to-float v2, v2

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->U:F

    add-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->U:F

    sub-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    add-float v7, v2, v5

    int-to-float v10, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v9, v3

    iget-object v11, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    iget-object v5, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v6

    iget-object v7, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    :goto_0
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    iget v3, p0, Lcarbon/widget/RangeSeekBar;->U:F

    add-float v5, v0, v3

    iget v6, p0, Lcarbon/widget/RangeSeekBar;->T:F

    sub-float v7, v2, v6

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4

    add-float v8, v0, v6

    int-to-float v11, v1

    sub-float v10, v2, v3

    iget-object v12, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v11

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v3, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    sget-object v5, Lcarbon/widget/RangeSeekBar$e;->b:Lcarbon/widget/RangeSeekBar$e;

    if-ne v3, v5, :cond_6

    iget-boolean v3, p0, Lcarbon/widget/RangeSeekBar;->W:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->a0:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->R:F

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->S:F

    div-float/2addr v3, v5

    const/4 v5, 0x0

    :goto_1
    int-to-float v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    cmpg-float v8, v6, v3

    if-gez v8, :cond_5

    div-float/2addr v6, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v6, v6, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sget v9, Lcarbon/widget/RangeSeekBar;->o0:F

    div-float/2addr v9, v7

    iget-object v7, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v9, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v6, p0, Lcarbon/widget/RangeSeekBar;->V:I

    add-int/2addr v5, v6

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget v6, Lcarbon/widget/RangeSeekBar;->o0:F

    div-float/2addr v6, v7

    iget-object v7, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    iget-object v5, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    iget-object v6, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    :cond_7
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    int-to-float v1, v1

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->T:F

    iget-object v4, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->U:F

    iget-object v3, p0, Lcarbon/widget/RangeSeekBar;->g0:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcarbon/view/View;->f:Lhc0;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->a:Lhc0$a;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcarbon/view/View;->f:Lhc0;

    invoke-interface {v0, p1}, Lhc0;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public getLabelFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/RangeSeekBar;->c0:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()F
    .locals 1

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->R:F

    return v0
.end method

.method public getMin()F
    .locals 1

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    return v0
.end method

.method public getShowLabel()Z
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/RangeSeekBar;->b0:Z

    return v0
.end method

.method public getStepSize()F
    .locals 1

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->S:F

    return v0
.end method

.method public getStyle()Lcarbon/widget/RangeSeekBar$e;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 2

    sget v0, Lcarbon/widget/RangeSeekBar;->n0:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 2

    sget v0, Lcarbon/widget/RangeSeekBar;->n0:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTickColor()I
    .locals 1

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->a0:I

    return v0
.end method

.method public getTickStep()I
    .locals 1

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->V:I

    return v0
.end method

.method public getValue()F
    .locals 2

    iget-object v0, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    sget-object v1, Lcarbon/widget/RangeSeekBar$e;->b:Lcarbon/widget/RangeSeekBar$e;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->O:F

    invoke-virtual {p0, v0}, Lcarbon/widget/RangeSeekBar;->D(F)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcarbon/widget/RangeSeekBar;->O:F

    return v0
.end method

.method public getValue2()F
    .locals 2

    iget-object v0, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    sget-object v1, Lcarbon/widget/RangeSeekBar$e;->b:Lcarbon/widget/RangeSeekBar$e;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->P:F

    invoke-virtual {p0, v0}, Lcarbon/widget/RangeSeekBar;->D(F)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcarbon/widget/RangeSeekBar;->P:F

    return v0
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Lcarbon/widget/RangeSeekBar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/RangeSeekBar;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-ne v3, v5, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_3

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcarbon/widget/RangeSeekBar;->O:F

    iget v2, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    sub-float/2addr v0, v2

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->R:F

    sub-float v4, v3, v2

    div-float/2addr v0, v4

    iget v4, p0, Lcarbon/widget/RangeSeekBar;->P:F

    sub-float/2addr v4, v2

    sub-float/2addr v3, v2

    div-float/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    const/high16 v5, 0x40000000    # 2.0f

    const-wide/16 v6, 0xc8

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v2, v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v2, v10

    int-to-float v2, v2

    iget v10, p0, Lcarbon/widget/RangeSeekBar;->T:F

    mul-float v10, v10, v5

    sub-float/2addr v2, v10

    mul-float v2, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v2, v10

    iget v10, p0, Lcarbon/widget/RangeSeekBar;->T:F

    add-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcarbon/widget/RangeSeekBar;->U:F

    mul-float v11, v11, v5

    sub-float/2addr v10, v11

    mul-float v10, v10, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v10, v5

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->U:F

    add-float/2addr v10, v5

    float-to-int v5, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    int-to-float v2, v2

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    int-to-float v5, v5

    sub-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    iput v9, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    new-array v2, v8, [F

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->T:F

    aput v5, v2, v1

    sget v5, Lcarbon/widget/RangeSeekBar;->n0:F

    aput v5, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcarbon/widget/RangeSeekBar;->j0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    new-instance v5, Lkg0;

    invoke-direct {v5, p0}, Lkg0;-><init>(Lcarbon/widget/RangeSeekBar;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcarbon/widget/RangeSeekBar$a;

    invoke-direct {v5, p0}, Lcarbon/widget/RangeSeekBar$a;-><init>(Lcarbon/widget/RangeSeekBar;)V

    goto :goto_0

    :cond_2
    iput v8, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    new-array v2, v8, [F

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->U:F

    aput v5, v2, v1

    sget v5, Lcarbon/widget/RangeSeekBar;->n0:F

    aput v5, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcarbon/widget/RangeSeekBar;->j0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    new-instance v5, Llg0;

    invoke-direct {v5, p0}, Llg0;-><init>(Lcarbon/widget/RangeSeekBar;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcarbon/widget/RangeSeekBar$b;

    invoke-direct {v5, p0}, Lcarbon/widget/RangeSeekBar$b;-><init>(Lcarbon/widget/RangeSeekBar;)V

    :goto_0
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iget-boolean v2, p0, Lcarbon/widget/RangeSeekBar;->b0:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->d0:Lad0;

    invoke-virtual {v2, p0}, Lad0;->d(Landroid/view/View;)Z

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v9, :cond_f

    :cond_6
    iget v2, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    if-ne v2, v9, :cond_a

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    sget-object v10, Lcarbon/widget/RangeSeekBar$e;->b:Lcarbon/widget/RangeSeekBar$e;

    if-ne v2, v10, :cond_8

    iget v2, p0, Lcarbon/widget/RangeSeekBar;->O:F

    iget v10, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    sub-float/2addr v2, v10

    iget v10, p0, Lcarbon/widget/RangeSeekBar;->S:F

    div-float v5, v10, v5

    add-float/2addr v2, v5

    div-float/2addr v2, v10

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v2, v10

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->S:F

    mul-float v2, v2, v5

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    new-array v5, v8, [F

    iget v10, p0, Lcarbon/widget/RangeSeekBar;->O:F

    aput v10, v5, v1

    aput v2, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcarbon/widget/RangeSeekBar;->j0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    new-instance v5, Lhg0;

    invoke-direct {v5, p0}, Lhg0;-><init>(Lcarbon/widget/RangeSeekBar;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    :cond_9
    new-array v2, v8, [F

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->T:F

    aput v5, v2, v1

    sget v5, Lcarbon/widget/RangeSeekBar;->m0:F

    aput v5, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcarbon/widget/RangeSeekBar;->j0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcarbon/widget/RangeSeekBar$c;

    invoke-direct {v5, p0}, Lcarbon/widget/RangeSeekBar$c;-><init>(Lcarbon/widget/RangeSeekBar;)V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    sget-object v10, Lcarbon/widget/RangeSeekBar$e;->b:Lcarbon/widget/RangeSeekBar$e;

    if-ne v2, v10, :cond_c

    iget v2, p0, Lcarbon/widget/RangeSeekBar;->P:F

    iget v10, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    sub-float/2addr v2, v10

    iget v10, p0, Lcarbon/widget/RangeSeekBar;->S:F

    div-float v5, v10, v5

    add-float/2addr v2, v5

    div-float/2addr v2, v10

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v2, v10

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->S:F

    mul-float v2, v2, v5

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    new-array v5, v8, [F

    iget v10, p0, Lcarbon/widget/RangeSeekBar;->P:F

    aput v10, v5, v1

    aput v2, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcarbon/widget/RangeSeekBar;->j0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    new-instance v5, Lig0;

    invoke-direct {v5, p0}, Lig0;-><init>(Lcarbon/widget/RangeSeekBar;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->l0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_c
    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    :cond_d
    new-array v2, v8, [F

    iget v5, p0, Lcarbon/widget/RangeSeekBar;->U:F

    aput v5, v2, v1

    sget v5, Lcarbon/widget/RangeSeekBar;->m0:F

    aput v5, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcarbon/widget/RangeSeekBar;->j0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    new-instance v5, Ljg0;

    invoke-direct {v5, p0}, Ljg0;-><init>(Lcarbon/widget/RangeSeekBar;)V

    :goto_1
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_e
    iget-boolean v2, p0, Lcarbon/widget/RangeSeekBar;->b0:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcarbon/widget/RangeSeekBar;->d0:Lad0;

    invoke-virtual {v2}, Lad0;->dismiss()V

    :cond_f
    :goto_2
    iget v2, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ne v2, v9, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v2, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_3

    :cond_10
    if-ne v2, v8, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_11
    :goto_3
    cmpl-float v2, v0, v4

    if-lez v2, :cond_12

    iget v2, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    iget v2, p0, Lcarbon/widget/RangeSeekBar;->T:F

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->U:F

    iput v3, p0, Lcarbon/widget/RangeSeekBar;->T:F

    iput v2, p0, Lcarbon/widget/RangeSeekBar;->U:F

    move v13, v4

    move v4, v0

    move v0, v13

    :cond_12
    iget v2, p0, Lcarbon/widget/RangeSeekBar;->R:F

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    sub-float v5, v2, v3

    mul-float v5, v5, v0

    add-float/2addr v5, v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    if-ne v3, v9, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v0, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_4

    :cond_13
    if-ne v3, v8, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v4, v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    float-to-int v0, v4

    goto :goto_4

    :cond_14
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    iget-object v4, p0, Lcarbon/view/View;->f:Lhc0;

    invoke-interface {v4}, Lhc0;->getRadius()I

    move-result v4

    iget-boolean v6, p0, Lcarbon/widget/RangeSeekBar;->b0:Z

    if-eqz v6, :cond_16

    iget v6, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    if-lez v6, :cond_16

    new-array v6, v8, [I

    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v7, p0, Lcarbon/widget/RangeSeekBar;->d0:Lad0;

    iget-object v10, p0, Lcarbon/widget/RangeSeekBar;->c0:Ljava/lang/String;

    new-array v11, v9, [Ljava/lang/Object;

    iget v12, p0, Lcarbon/widget/RangeSeekBar;->f0:I

    if-ne v12, v9, :cond_15

    move v12, v5

    goto :goto_5

    :cond_15
    move v12, v2

    :goto_5
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lad0;->c(Ljava/lang/String;)V

    iget-object v7, p0, Lcarbon/widget/RangeSeekBar;->d0:Lad0;

    aget v1, v6, v1

    add-int/2addr v1, v0

    invoke-virtual {v7}, Lad0;->b()I

    move-result v10

    div-int/2addr v10, v8

    sub-int/2addr v1, v10

    sub-int v8, v3, v4

    aget v6, v6, v9

    add-int/2addr v8, v6

    iget-object v6, p0, Lcarbon/widget/RangeSeekBar;->d0:Lad0;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    sub-int/2addr v8, v6

    invoke-virtual {v7, v1, v8}, Lad0;->update(II)V

    :cond_16
    iget-object v1, p0, Lcarbon/view/View;->f:Lhc0;

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-interface {v1, v6, v7}, Lhc0;->setHotspot(FF)V

    iget-object v1, p0, Lcarbon/view/View;->f:Lhc0;

    sub-int v6, v0, v4

    sub-int v7, v3, v4

    add-int/2addr v0, v4

    add-int/2addr v3, v4

    invoke-interface {v1, v6, v7, v0, v3}, Lhc0;->setBounds(IIII)V

    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->O:F

    cmpl-float v0, v5, v0

    if-nez v0, :cond_18

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->P:F

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1b

    :cond_18
    iget-object v0, p0, Lcarbon/widget/RangeSeekBar;->e0:Lcarbon/widget/RangeSeekBar$d;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    sget-object v3, Lcarbon/widget/RangeSeekBar$e;->b:Lcarbon/widget/RangeSeekBar$e;

    if-ne v1, v3, :cond_1a

    invoke-virtual {p0, v5}, Lcarbon/widget/RangeSeekBar;->D(F)I

    move-result v0

    invoke-virtual {p0, v2}, Lcarbon/widget/RangeSeekBar;->D(F)I

    move-result v1

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->O:F

    invoke-virtual {p0, v3}, Lcarbon/widget/RangeSeekBar;->D(F)I

    move-result v3

    if-ne v3, v0, :cond_19

    iget v3, p0, Lcarbon/widget/RangeSeekBar;->P:F

    invoke-virtual {p0, v3}, Lcarbon/widget/RangeSeekBar;->D(F)I

    move-result v3

    if-eq v3, v1, :cond_1b

    :cond_19
    iget-object v3, p0, Lcarbon/widget/RangeSeekBar;->e0:Lcarbon/widget/RangeSeekBar$d;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-interface {v3, p0, v0, v1}, Lcarbon/widget/RangeSeekBar$d;->a(Lcarbon/widget/RangeSeekBar;FF)V

    goto :goto_6

    :cond_1a
    invoke-interface {v0, p0, v5, v2}, Lcarbon/widget/RangeSeekBar$d;->a(Lcarbon/widget/RangeSeekBar;FF)V

    :cond_1b
    :goto_6
    iput v5, p0, Lcarbon/widget/RangeSeekBar;->O:F

    iput v2, p0, Lcarbon/widget/RangeSeekBar;->P:F

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v9
.end method

.method public final s(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lh80;->colorControlNormal:I

    invoke-static {v0, v1}, Ld80;->g(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcarbon/widget/RangeSeekBar;->h0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld80;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    sput v0, Lcarbon/widget/RangeSeekBar;->m0:F

    iput v0, p0, Lcarbon/widget/RangeSeekBar;->U:F

    iput v0, p0, Lcarbon/widget/RangeSeekBar;->T:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld80;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    sput v0, Lcarbon/widget/RangeSeekBar;->n0:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld80;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sput v0, Lcarbon/widget/RangeSeekBar;->o0:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->SeekBar:[I

    sget v2, Lo80;->carbon_SeekBar:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {}, Lcarbon/widget/RangeSeekBar$e;->values()[Lcarbon/widget/RangeSeekBar$e;

    move-result-object p2

    sget v0, Lp80;->SeekBar_carbon_barStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setStyle(Lcarbon/widget/RangeSeekBar$e;)V

    sget p2, Lp80;->SeekBar_carbon_min:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setMin(F)V

    sget p2, Lp80;->SeekBar_carbon_max:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setMax(F)V

    sget p2, Lp80;->SeekBar_carbon_stepSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setStepSize(F)V

    sget p2, Lp80;->SeekBar_carbon_value:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setValue(F)V

    sget p2, Lp80;->SeekBar_carbon_value2:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setValue2(F)V

    sget p2, Lp80;->SeekBar_carbon_tick:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setTick(Z)V

    sget p2, Lp80;->SeekBar_carbon_tickStep:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setTickStep(I)V

    sget p2, Lp80;->SeekBar_carbon_tickColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setTickColor(I)V

    sget p2, Lp80;->SeekBar_carbon_showLabel:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setShowLabel(Z)V

    sget p2, Lp80;->SeekBar_carbon_labelFormat:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcarbon/widget/RangeSeekBar;->setLabelFormat(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setLabelFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->c0:Ljava/lang/String;

    return-void
.end method

.method public setMax(F)V
    .locals 2

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcarbon/widget/RangeSeekBar;->S:F

    add-float/2addr v1, v0

    iput v1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    :goto_0
    iget v1, p0, Lcarbon/widget/RangeSeekBar;->O:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->O:F

    return-void
.end method

.method public setMin(F)V
    .locals 3

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->R:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    goto :goto_1

    :cond_0
    iget v1, p0, Lcarbon/widget/RangeSeekBar;->S:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    sub-float v1, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    :goto_1
    iget v1, p0, Lcarbon/widget/RangeSeekBar;->O:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->O:F

    return-void
.end method

.method public setOnValueChangedListener(Lcarbon/widget/RangeSeekBar$d;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->e0:Lcarbon/widget/RangeSeekBar$d;

    return-void
.end method

.method public setShowLabel(Z)V
    .locals 1

    iput-boolean p1, p0, Lcarbon/widget/RangeSeekBar;->b0:Z

    if-eqz p1, :cond_0

    new-instance p1, Lad0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lad0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->d0:Lad0;

    :cond_0
    return-void
.end method

.method public setStepSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcarbon/widget/RangeSeekBar;->S:F

    return-void
.end method

.method public setStyle(Lcarbon/widget/RangeSeekBar$e;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    return-void
.end method

.method public setTick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcarbon/widget/RangeSeekBar;->W:Z

    return-void
.end method

.method public setTickColor(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->a0:I

    return-void
.end method

.method public setTickStep(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/RangeSeekBar;->V:I

    return-void
.end method

.method public setValue(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    sget-object v1, Lcarbon/widget/RangeSeekBar$e;->b:Lcarbon/widget/RangeSeekBar$e;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    iget v1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcarbon/widget/RangeSeekBar;->D(F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    iget v1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    iput p1, p0, Lcarbon/widget/RangeSeekBar;->O:F

    return-void
.end method

.method public setValue2(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/RangeSeekBar;->i0:Lcarbon/widget/RangeSeekBar$e;

    sget-object v1, Lcarbon/widget/RangeSeekBar$e;->b:Lcarbon/widget/RangeSeekBar$e;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    iget v1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcarbon/widget/RangeSeekBar;->D(F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcarbon/widget/RangeSeekBar;->Q:F

    iget v1, p0, Lcarbon/widget/RangeSeekBar;->R:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    iput p1, p0, Lcarbon/widget/RangeSeekBar;->P:F

    return-void
.end method

.method public synthetic u(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/RangeSeekBar;->t(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic w(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/RangeSeekBar;->v(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic y(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/RangeSeekBar;->x(Landroid/animation/ValueAnimator;)V

    return-void
.end method

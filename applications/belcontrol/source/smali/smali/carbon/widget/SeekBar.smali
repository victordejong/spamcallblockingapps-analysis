.class public Lcarbon/widget/SeekBar;
.super Lcarbon/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/SeekBar$a;,
        Lcarbon/widget/SeekBar$b;
    }
.end annotation


# static fields
.field public static j0:F

.field public static k0:F

.field public static l0:F


# instance fields
.field public O:F

.field public P:F

.field public Q:F

.field public R:F

.field public S:F

.field public T:I

.field public U:Z

.field public V:I

.field public W:Z

.field public a0:Ljava/lang/String;

.field public b0:Lad0;

.field public c0:Lcarbon/widget/SeekBar$a;

.field public d0:Landroid/graphics/Paint;

.field public e0:I

.field public f0:Lcarbon/widget/SeekBar$b;

.field public g0:Landroid/view/animation/DecelerateInterpolator;

.field public h0:Landroid/animation/ValueAnimator;

.field public i0:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x101007b

    invoke-direct {p0, p1, v0, v1}, Lcarbon/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcarbon/widget/SeekBar;->O:F

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/SeekBar;->P:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcarbon/widget/SeekBar;->Q:F

    iput p1, p0, Lcarbon/widget/SeekBar;->R:F

    const/4 p1, 0x1

    iput p1, p0, Lcarbon/widget/SeekBar;->T:I

    iput-boolean p1, p0, Lcarbon/widget/SeekBar;->U:Z

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/SeekBar;->V:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/SeekBar;->g0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v0, v1}, Lcarbon/widget/SeekBar;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcarbon/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcarbon/widget/SeekBar;->O:F

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/SeekBar;->P:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcarbon/widget/SeekBar;->Q:F

    iput p1, p0, Lcarbon/widget/SeekBar;->R:F

    const/4 p1, 0x1

    iput p1, p0, Lcarbon/widget/SeekBar;->T:I

    iput-boolean p1, p0, Lcarbon/widget/SeekBar;->U:Z

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/SeekBar;->V:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/SeekBar;->g0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, p2, v0}, Lcarbon/widget/SeekBar;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcarbon/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcarbon/widget/SeekBar;->O:F

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/SeekBar;->P:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcarbon/widget/SeekBar;->Q:F

    iput p1, p0, Lcarbon/widget/SeekBar;->R:F

    const/4 p1, 0x1

    iput p1, p0, Lcarbon/widget/SeekBar;->T:I

    iput-boolean p1, p0, Lcarbon/widget/SeekBar;->U:Z

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/SeekBar;->V:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/SeekBar;->g0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/SeekBar;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic s(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcarbon/widget/SeekBar;->S:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private synthetic u(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcarbon/widget/SeekBar;->O:F

    iget v0, p0, Lcarbon/widget/SeekBar;->P:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcarbon/widget/SeekBar;->Q:F

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

.method private synthetic w(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcarbon/widget/SeekBar;->S:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Lcarbon/view/View;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcarbon/widget/SeekBar;->O:F

    iget v1, p0, Lcarbon/widget/SeekBar;->P:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcarbon/widget/SeekBar;->Q:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

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

    iget-object v2, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    sget v3, Lcarbon/widget/SeekBar;->l0:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    iget-object v4, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    iget-object v6, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    iget v4, p0, Lcarbon/widget/SeekBar;->S:F

    sub-float v4, v0, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v5, v2

    int-to-float v8, v1

    iget v2, p0, Lcarbon/widget/SeekBar;->S:F

    sub-float v7, v0, v2

    iget-object v9, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v2, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    iget v4, p0, Lcarbon/widget/SeekBar;->e0:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcarbon/widget/SeekBar;->S:F

    add-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    iget v2, p0, Lcarbon/widget/SeekBar;->S:F

    add-float v5, v0, v2

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v7, v2

    iget-object v9, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v2, p0, Lcarbon/widget/SeekBar;->f0:Lcarbon/widget/SeekBar$b;

    sget-object v4, Lcarbon/widget/SeekBar$b;->b:Lcarbon/widget/SeekBar$b;

    if-ne v2, v4, :cond_5

    iget-boolean v2, p0, Lcarbon/widget/SeekBar;->U:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    iget v4, p0, Lcarbon/widget/SeekBar;->V:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcarbon/widget/SeekBar;->Q:F

    iget v4, p0, Lcarbon/widget/SeekBar;->P:F

    sub-float/2addr v2, v4

    iget v4, p0, Lcarbon/widget/SeekBar;->R:F

    div-float/2addr v2, v4

    const/4 v4, 0x0

    :goto_1
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    cmpg-float v7, v5, v2

    if-gez v7, :cond_4

    div-float/2addr v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v5, v5, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sget v8, Lcarbon/widget/SeekBar;->l0:F

    div-float/2addr v8, v6

    iget-object v6, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v8, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v5, p0, Lcarbon/widget/SeekBar;->T:I

    add-int/2addr v4, v5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcarbon/widget/SeekBar;->l0:F

    div-float/2addr v5, v6

    iget-object v6, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    iget-object v4, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    iget-object v5, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    :cond_6
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    int-to-float v1, v1

    iget v2, p0, Lcarbon/widget/SeekBar;->S:F

    iget-object v3, p0, Lcarbon/widget/SeekBar;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcarbon/view/View;->f:Lhc0;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->a:Lhc0$a;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcarbon/view/View;->f:Lhc0;

    invoke-interface {v0, p1}, Lhc0;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public getLabelFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/SeekBar;->a0:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()F
    .locals 1

    iget v0, p0, Lcarbon/widget/SeekBar;->Q:F

    return v0
.end method

.method public getMin()F
    .locals 1

    iget v0, p0, Lcarbon/widget/SeekBar;->P:F

    return v0
.end method

.method public getShowLabel()Z
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/SeekBar;->W:Z

    return v0
.end method

.method public getStepSize()F
    .locals 1

    iget v0, p0, Lcarbon/widget/SeekBar;->R:F

    return v0
.end method

.method public getStyle()Lcarbon/widget/SeekBar$b;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/SeekBar;->f0:Lcarbon/widget/SeekBar$b;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 2

    sget v0, Lcarbon/widget/SeekBar;->k0:F

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

    sget v0, Lcarbon/widget/SeekBar;->k0:F

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

    iget v0, p0, Lcarbon/widget/SeekBar;->V:I

    return v0
.end method

.method public getTickStep()I
    .locals 1

    iget v0, p0, Lcarbon/widget/SeekBar;->T:I

    return v0
.end method

.method public getValue()F
    .locals 2

    iget-object v0, p0, Lcarbon/widget/SeekBar;->f0:Lcarbon/widget/SeekBar$b;

    sget-object v1, Lcarbon/widget/SeekBar$b;->b:Lcarbon/widget/SeekBar$b;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcarbon/widget/SeekBar;->O:F

    invoke-virtual {p0, v0}, Lcarbon/widget/SeekBar;->y(F)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcarbon/widget/SeekBar;->O:F

    return v0
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Lcarbon/widget/SeekBar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/SeekBar;->getSuggestedMinimumHeight()I

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
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v2, 0xc8

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    new-array v0, v4, [F

    iget v6, p0, Lcarbon/widget/SeekBar;->S:F

    aput v6, v0, v1

    sget v6, Lcarbon/widget/SeekBar;->k0:F

    aput v6, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcarbon/widget/SeekBar;->g0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    new-instance v2, Ltg0;

    invoke-direct {v2, p0}, Ltg0;-><init>(Lcarbon/widget/SeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    iget-boolean v0, p0, Lcarbon/widget/SeekBar;->W:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcarbon/widget/SeekBar;->b0:Lad0;

    invoke-virtual {v0, p0}, Lad0;->d(Landroid/view/View;)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_9

    :cond_4
    iget-object v0, p0, Lcarbon/widget/SeekBar;->f0:Lcarbon/widget/SeekBar$b;

    sget-object v6, Lcarbon/widget/SeekBar$b;->b:Lcarbon/widget/SeekBar$b;

    if-ne v0, v6, :cond_6

    iget v0, p0, Lcarbon/widget/SeekBar;->O:F

    iget v6, p0, Lcarbon/widget/SeekBar;->P:F

    sub-float/2addr v0, v6

    iget v6, p0, Lcarbon/widget/SeekBar;->R:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v6, v7

    add-float/2addr v0, v7

    div-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v0, v6

    iget v6, p0, Lcarbon/widget/SeekBar;->R:F

    mul-float v0, v0, v6

    iget v6, p0, Lcarbon/widget/SeekBar;->P:F

    add-float/2addr v0, v6

    iget-object v6, p0, Lcarbon/widget/SeekBar;->i0:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    new-array v6, v4, [F

    iget v7, p0, Lcarbon/widget/SeekBar;->O:F

    aput v7, v6, v1

    aput v0, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcarbon/widget/SeekBar;->i0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcarbon/widget/SeekBar;->i0:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcarbon/widget/SeekBar;->g0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcarbon/widget/SeekBar;->i0:Landroid/animation/ValueAnimator;

    new-instance v6, Lrg0;

    invoke-direct {v6, p0}, Lrg0;-><init>(Lcarbon/widget/SeekBar;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcarbon/widget/SeekBar;->i0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    iget-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_7
    new-array v0, v4, [F

    iget v6, p0, Lcarbon/widget/SeekBar;->S:F

    aput v6, v0, v1

    sget v6, Lcarbon/widget/SeekBar;->j0:F

    aput v6, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcarbon/widget/SeekBar;->g0:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    new-instance v2, Lsg0;

    invoke-direct {v2, p0}, Lsg0;-><init>(Lcarbon/widget/SeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcarbon/widget/SeekBar;->h0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    iget-boolean v0, p0, Lcarbon/widget/SeekBar;->W:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcarbon/widget/SeekBar;->b0:Lad0;

    invoke-virtual {v0}, Lad0;->dismiss()V

    :cond_9
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcarbon/widget/SeekBar;->Q:F

    iget v3, p0, Lcarbon/widget/SeekBar;->P:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float v0, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    iget-object v6, p0, Lcarbon/view/View;->f:Lhc0;

    invoke-interface {v6}, Lhc0;->getRadius()I

    move-result v6

    iget-boolean v7, p0, Lcarbon/widget/SeekBar;->W:Z

    if-eqz v7, :cond_a

    new-array v7, v4, [I

    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v8, p0, Lcarbon/widget/SeekBar;->b0:Lad0;

    iget-object v9, p0, Lcarbon/widget/SeekBar;->a0:Ljava/lang/String;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lad0;->c(Ljava/lang/String;)V

    iget-object v8, p0, Lcarbon/widget/SeekBar;->b0:Lad0;

    aget v1, v7, v1

    add-int/2addr v1, v0

    invoke-virtual {v8}, Lad0;->b()I

    move-result v9

    div-int/2addr v9, v4

    sub-int/2addr v1, v9

    sub-int v4, v3, v6

    aget v7, v7, v5

    add-int/2addr v4, v7

    iget-object v7, p0, Lcarbon/widget/SeekBar;->b0:Lad0;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v8, v1, v4}, Lad0;->update(II)V

    :cond_a
    iget-object v1, p0, Lcarbon/view/View;->f:Lhc0;

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-interface {v1, v4, v7}, Lhc0;->setHotspot(FF)V

    iget-object v1, p0, Lcarbon/view/View;->f:Lhc0;

    sub-int v4, v0, v6

    sub-int v7, v3, v6

    add-int/2addr v0, v6

    add-int/2addr v3, v6

    invoke-interface {v1, v4, v7, v0, v3}, Lhc0;->setBounds(IIII)V

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    iget v0, p0, Lcarbon/widget/SeekBar;->O:F

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcarbon/widget/SeekBar;->c0:Lcarbon/widget/SeekBar$a;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcarbon/widget/SeekBar;->f0:Lcarbon/widget/SeekBar$b;

    sget-object v3, Lcarbon/widget/SeekBar$b;->b:Lcarbon/widget/SeekBar$b;

    if-ne v1, v3, :cond_c

    invoke-virtual {p0, v2}, Lcarbon/widget/SeekBar;->y(F)I

    move-result v0

    iget v1, p0, Lcarbon/widget/SeekBar;->O:F

    invoke-virtual {p0, v1}, Lcarbon/widget/SeekBar;->y(F)I

    move-result v1

    if-eq v1, v0, :cond_d

    iget-object v1, p0, Lcarbon/widget/SeekBar;->c0:Lcarbon/widget/SeekBar$a;

    int-to-float v0, v0

    invoke-interface {v1, p0, v0}, Lcarbon/widget/SeekBar$a;->a(Lcarbon/widget/SeekBar;F)V

    goto :goto_1

    :cond_c
    invoke-interface {v0, p0, v2}, Lcarbon/widget/SeekBar$a;->a(Lcarbon/widget/SeekBar;F)V

    :cond_d
    :goto_1
    iput v2, p0, Lcarbon/widget/SeekBar;->O:F

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v5
.end method

.method public final r(Landroid/util/AttributeSet;I)V
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

    iput v0, p0, Lcarbon/widget/SeekBar;->e0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld80;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    sput v0, Lcarbon/widget/SeekBar;->j0:F

    iput v0, p0, Lcarbon/widget/SeekBar;->S:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld80;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    sput v0, Lcarbon/widget/SeekBar;->k0:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld80;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sput v0, Lcarbon/widget/SeekBar;->l0:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->SeekBar:[I

    sget v2, Lo80;->carbon_SeekBar:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {}, Lcarbon/widget/SeekBar$b;->values()[Lcarbon/widget/SeekBar$b;

    move-result-object p2

    sget v0, Lp80;->SeekBar_carbon_barStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setStyle(Lcarbon/widget/SeekBar$b;)V

    sget p2, Lp80;->SeekBar_carbon_min:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setMin(F)V

    sget p2, Lp80;->SeekBar_carbon_max:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setMax(F)V

    sget p2, Lp80;->SeekBar_carbon_stepSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setStepSize(F)V

    sget p2, Lp80;->SeekBar_carbon_value:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setValue(F)V

    sget p2, Lp80;->SeekBar_carbon_tick:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setTick(Z)V

    sget p2, Lp80;->SeekBar_carbon_tickStep:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setTickStep(I)V

    sget p2, Lp80;->SeekBar_carbon_tickColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setTickColor(I)V

    sget p2, Lp80;->SeekBar_carbon_showLabel:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setShowLabel(Z)V

    sget p2, Lp80;->SeekBar_carbon_labelFormat:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcarbon/widget/SeekBar;->setLabelFormat(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setLabelFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/SeekBar;->a0:Ljava/lang/String;

    return-void
.end method

.method public setMax(F)V
    .locals 2

    iget v0, p0, Lcarbon/widget/SeekBar;->P:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iput p1, p0, Lcarbon/widget/SeekBar;->Q:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcarbon/widget/SeekBar;->R:F

    add-float/2addr v1, v0

    iput v1, p0, Lcarbon/widget/SeekBar;->Q:F

    :goto_0
    iget v1, p0, Lcarbon/widget/SeekBar;->O:F

    invoke-static {v1, v0, p1}, Lvc0;->a(FFF)F

    move-result p1

    iput p1, p0, Lcarbon/widget/SeekBar;->O:F

    return-void
.end method

.method public setMin(F)V
    .locals 3

    iget v0, p0, Lcarbon/widget/SeekBar;->Q:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iput p1, p0, Lcarbon/widget/SeekBar;->P:F

    goto :goto_1

    :cond_0
    iget v1, p0, Lcarbon/widget/SeekBar;->R:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    sub-float v1, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcarbon/widget/SeekBar;->P:F

    :goto_1
    iget v1, p0, Lcarbon/widget/SeekBar;->O:F

    invoke-static {v1, p1, v0}, Lvc0;->a(FFF)F

    move-result p1

    iput p1, p0, Lcarbon/widget/SeekBar;->O:F

    return-void
.end method

.method public setOnValueChangedListener(Lcarbon/widget/SeekBar$a;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/SeekBar;->c0:Lcarbon/widget/SeekBar$a;

    return-void
.end method

.method public setShowLabel(Z)V
    .locals 1

    iput-boolean p1, p0, Lcarbon/widget/SeekBar;->W:Z

    if-eqz p1, :cond_0

    new-instance p1, Lad0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lad0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcarbon/widget/SeekBar;->b0:Lad0;

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
    iput p1, p0, Lcarbon/widget/SeekBar;->R:F

    return-void
.end method

.method public setStyle(Lcarbon/widget/SeekBar$b;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/SeekBar;->f0:Lcarbon/widget/SeekBar$b;

    return-void
.end method

.method public setTick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcarbon/widget/SeekBar;->U:Z

    return-void
.end method

.method public setTickColor(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/SeekBar;->V:I

    return-void
.end method

.method public setTickStep(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/SeekBar;->T:I

    return-void
.end method

.method public setValue(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/SeekBar;->f0:Lcarbon/widget/SeekBar$b;

    sget-object v1, Lcarbon/widget/SeekBar$b;->b:Lcarbon/widget/SeekBar$b;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcarbon/widget/SeekBar;->P:F

    iget v1, p0, Lcarbon/widget/SeekBar;->Q:F

    invoke-static {p1, v0, v1}, Lvc0;->a(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcarbon/widget/SeekBar;->y(F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcarbon/widget/SeekBar;->P:F

    iget v1, p0, Lcarbon/widget/SeekBar;->Q:F

    invoke-static {p1, v0, v1}, Lvc0;->a(FFF)F

    move-result p1

    :goto_0
    iput p1, p0, Lcarbon/widget/SeekBar;->O:F

    return-void
.end method

.method public synthetic t(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/SeekBar;->s(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic v(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/SeekBar;->u(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic x(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/SeekBar;->w(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public final y(F)I
    .locals 4

    iget v0, p0, Lcarbon/widget/SeekBar;->P:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcarbon/widget/SeekBar;->R:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    add-float/2addr p1, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget p1, p0, Lcarbon/widget/SeekBar;->R:F

    float-to-double v2, p1

    mul-double v0, v0, v2

    iget p1, p0, Lcarbon/widget/SeekBar;->P:F

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

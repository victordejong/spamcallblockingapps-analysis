.class public Lcom/victor/loading/rotate/RotateLoading;
.super Landroid/view/View;
.source ""


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/victor/loading/rotate/RotateLoading;->e:I

    const/16 v0, 0xbe

    iput v0, p0, Lcom/victor/loading/rotate/RotateLoading;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/victor/loading/rotate/RotateLoading;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/victor/loading/rotate/RotateLoading;->k:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/victor/loading/rotate/RotateLoading;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/victor/loading/rotate/RotateLoading;->e:I

    const/16 v0, 0xbe

    iput v0, p0, Lcom/victor/loading/rotate/RotateLoading;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/victor/loading/rotate/RotateLoading;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/victor/loading/rotate/RotateLoading;->k:Z

    invoke-direct {p0, p1, p2}, Lcom/victor/loading/rotate/RotateLoading;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xa

    iput p3, p0, Lcom/victor/loading/rotate/RotateLoading;->e:I

    const/16 p3, 0xbe

    iput p3, p0, Lcom/victor/loading/rotate/RotateLoading;->f:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/victor/loading/rotate/RotateLoading;->i:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/victor/loading/rotate/RotateLoading;->k:Z

    invoke-direct {p0, p1, p2}, Lcom/victor/loading/rotate/RotateLoading;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/victor/loading/rotate/RotateLoading;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/victor/loading/rotate/RotateLoading;->k:Z

    return p1
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/victor/loading/rotate/RotateLoading;->l:I

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p0, p1, v1}, Lcom/victor/loading/rotate/RotateLoading;->b(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/victor/loading/rotate/RotateLoading;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, v2, v3}, Lcom/victor/loading/rotate/RotateLoading;->b(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/victor/loading/rotate/RotateLoading;->j:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/victor/loading/rotate/RotateLoading;->m:I

    if-eqz p2, :cond_0

    sget-object v3, Le/h/a/f;->RotateLoading:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v3, Le/h/a/f;->RotateLoading_loading_color:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/victor/loading/rotate/RotateLoading;->l:I

    sget v0, Le/h/a/f;->RotateLoading_loading_width:I

    invoke-virtual {p0, p1, v1}, Lcom/victor/loading/rotate/RotateLoading;->b(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/victor/loading/rotate/RotateLoading;->h:I

    sget p1, Le/h/a/f;->RotateLoading_shadow_position:I

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/victor/loading/rotate/RotateLoading;->j:I

    sget p1, Le/h/a/f;->RotateLoading_loading_speed:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/victor/loading/rotate/RotateLoading;->m:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget p1, p0, Lcom/victor/loading/rotate/RotateLoading;->m:I

    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    iput p1, p0, Lcom/victor/loading/rotate/RotateLoading;->n:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    iget p2, p0, Lcom/victor/loading/rotate/RotateLoading;->l:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    iget p2, p0, Lcom/victor/loading/rotate/RotateLoading;->h:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private f()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private h()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/victor/loading/rotate/RotateLoading$a;

    invoke-direct {v0, p0}, Lcom/victor/loading/rotate/RotateLoading$a;-><init>(Lcom/victor/loading/rotate/RotateLoading;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public b(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/victor/loading/rotate/RotateLoading;->k:Z

    return v0
.end method

.method public e()V
    .locals 1

    invoke-direct {p0}, Lcom/victor/loading/rotate/RotateLoading;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/victor/loading/rotate/RotateLoading;->k:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public g()V
    .locals 0

    invoke-direct {p0}, Lcom/victor/loading/rotate/RotateLoading;->h()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getLoadingColor()I
    .locals 1

    iget v0, p0, Lcom/victor/loading/rotate/RotateLoading;->l:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/victor/loading/rotate/RotateLoading;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    const-string v1, "#1a000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/victor/loading/rotate/RotateLoading;->d:Landroid/graphics/RectF;

    iget v0, p0, Lcom/victor/loading/rotate/RotateLoading;->e:I

    int-to-float v4, v0

    iget v5, p0, Lcom/victor/loading/rotate/RotateLoading;->g:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/victor/loading/rotate/RotateLoading;->d:Landroid/graphics/RectF;

    iget v0, p0, Lcom/victor/loading/rotate/RotateLoading;->f:I

    int-to-float v10, v0

    iget v11, p0, Lcom/victor/loading/rotate/RotateLoading;->g:F

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/victor/loading/rotate/RotateLoading;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/victor/loading/rotate/RotateLoading;->c:Landroid/graphics/RectF;

    iget v0, p0, Lcom/victor/loading/rotate/RotateLoading;->e:I

    int-to-float v4, v0

    iget v5, p0, Lcom/victor/loading/rotate/RotateLoading;->g:F

    iget-object v7, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/victor/loading/rotate/RotateLoading;->c:Landroid/graphics/RectF;

    iget v0, p0, Lcom/victor/loading/rotate/RotateLoading;->f:I

    int-to-float v10, v0

    iget v11, p0, Lcom/victor/loading/rotate/RotateLoading;->g:F

    iget-object v13, p0, Lcom/victor/loading/rotate/RotateLoading;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget p1, p0, Lcom/victor/loading/rotate/RotateLoading;->e:I

    iget v0, p0, Lcom/victor/loading/rotate/RotateLoading;->m:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/victor/loading/rotate/RotateLoading;->e:I

    iget v1, p0, Lcom/victor/loading/rotate/RotateLoading;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/victor/loading/rotate/RotateLoading;->f:I

    const/16 v2, 0x168

    if-le p1, v2, :cond_1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/victor/loading/rotate/RotateLoading;->e:I

    :cond_1
    if-le v1, v2, :cond_2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/victor/loading/rotate/RotateLoading;->f:I

    :cond_2
    iget-boolean p1, p0, Lcom/victor/loading/rotate/RotateLoading;->i:Z

    const/high16 v1, 0x43200000    # 160.0f

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/victor/loading/rotate/RotateLoading;->g:F

    cmpg-float v0, p1, v1

    if-gez v0, :cond_4

    iget v0, p0, Lcom/victor/loading/rotate/RotateLoading;->n:F

    add-float/2addr p1, v0

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/victor/loading/rotate/RotateLoading;->g:F

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    iget v2, p0, Lcom/victor/loading/rotate/RotateLoading;->n:F

    mul-float v2, v2, v0

    sub-float/2addr p1, v2

    :goto_0
    iput p1, p0, Lcom/victor/loading/rotate/RotateLoading;->g:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iget p1, p0, Lcom/victor/loading/rotate/RotateLoading;->g:F

    cmpl-float v0, p1, v1

    if-gez v0, :cond_5

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_6

    :cond_5
    iget-boolean p1, p0, Lcom/victor/loading/rotate/RotateLoading;->i:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/victor/loading/rotate/RotateLoading;->i:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/high16 p3, 0x41200000    # 10.0f

    iput p3, p0, Lcom/victor/loading/rotate/RotateLoading;->g:F

    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/victor/loading/rotate/RotateLoading;->h:I

    mul-int/lit8 v0, p4, 0x2

    int-to-float v0, v0

    mul-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    mul-int/lit8 v2, p4, 0x2

    sub-int v2, p1, v2

    int-to-float v2, v2

    mul-int/lit8 p4, p4, 0x2

    sub-int p4, p2, p4

    int-to-float p4, p4

    invoke-direct {p3, v0, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/victor/loading/rotate/RotateLoading;->c:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/victor/loading/rotate/RotateLoading;->h:I

    mul-int/lit8 v0, p4, 0x2

    iget v1, p0, Lcom/victor/loading/rotate/RotateLoading;->j:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-int/lit8 v2, p4, 0x2

    add-int/2addr v2, v1

    int-to-float v2, v2

    mul-int/lit8 v3, p4, 0x2

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    int-to-float p1, p1

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {p3, v0, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/victor/loading/rotate/RotateLoading;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public setLoadingColor(I)V
    .locals 0

    iput p1, p0, Lcom/victor/loading/rotate/RotateLoading;->l:I

    return-void
.end method

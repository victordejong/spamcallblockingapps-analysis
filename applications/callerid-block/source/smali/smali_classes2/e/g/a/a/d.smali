.class public Le/g/a/a/d;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private b:Z

.field private c:J

.field private d:F

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:I

.field private m:F

.field private n:F

.field private o:Landroid/graphics/Path;

.field private p:Landroid/graphics/Path;

.field private q:Landroid/graphics/RectF;

.field private r:Landroid/content/res/ColorStateList;

.field private s:I

.field private t:I

.field private u:Z

.field private final v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILandroid/content/res/ColorStateList;FFI)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/d;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/g/a/a/d;->f:Z

    iput-boolean v0, p0, Le/g/a/a/d;->g:Z

    iput-boolean v1, p0, Le/g/a/a/d;->h:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    iput-boolean v1, p0, Le/g/a/a/d;->u:Z

    new-instance v0, Le/g/a/a/d$a;

    invoke-direct {v0, p0}, Le/g/a/a/d$a;-><init>(Le/g/a/a/d;)V

    iput-object v0, p0, Le/g/a/a/d;->v:Ljava/lang/Runnable;

    iput p5, p0, Le/g/a/a/d;->e:I

    new-instance p5, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p5, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p5, p0, Le/g/a/a/d;->k:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p2}, Le/g/a/a/d;->p(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Le/g/a/a/d;->r(I)Z

    invoke-virtual {p0, p3, p4}, Le/g/a/a/d;->s(FF)Z

    return-void
.end method

.method static synthetic a(Le/g/a/a/d;)V
    .locals 0

    invoke-direct {p0}, Le/g/a/a/d;->t()V

    return-void
.end method

.method private b()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Le/g/a/a/d;->m:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Le/g/a/a/d;->i:Landroid/graphics/Paint;

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Le/g/a/a/d;->i:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Le/g/a/a/d;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_1
    iget v1, v0, Le/g/a/a/d;->l:I

    int-to-float v5, v1

    int-to-float v1, v1

    iget v6, v0, Le/g/a/a/d;->m:F

    add-float/2addr v1, v6

    iget v6, v0, Le/g/a/a/d;->n:F

    add-float/2addr v1, v6

    div-float/2addr v5, v1

    iget-object v1, v0, Le/g/a/a/d;->i:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/RadialGradient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v6, v0, Le/g/a/a/d;->l:I

    int-to-float v6, v6

    iget v9, v0, Le/g/a/a/d;->m:F

    add-float/2addr v9, v6

    const/4 v14, 0x3

    new-array v10, v14, [I

    fill-array-data v10, :array_0

    new-array v11, v14, [F

    const/4 v15, 0x0

    aput v2, v11, v15

    aput v5, v11, v4

    const/4 v5, 0x2

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v11, v5

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Le/g/a/a/d;->o:Landroid/graphics/Path;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Le/g/a/a/d;->o:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget v1, v0, Le/g/a/a/d;->l:I

    int-to-float v1, v1

    iget v6, v0, Le/g/a/a/d;->m:F

    add-float/2addr v1, v6

    iget-object v6, v0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    neg-float v7, v1

    invoke-virtual {v6, v7, v7, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Le/g/a/a/d;->o:Landroid/graphics/Path;

    iget-object v6, v0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget v1, v0, Le/g/a/a/d;->l:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v6, v0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    neg-float v7, v1

    iget v8, v0, Le/g/a/a/d;->n:F

    sub-float v9, v7, v8

    sub-float v8, v1, v8

    invoke-virtual {v6, v7, v9, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Le/g/a/a/d;->o:Landroid/graphics/Path;

    iget-object v6, v0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v1, v0, Le/g/a/a/d;->j:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Le/g/a/a/d;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Le/g/a/a/d;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_3
    iget v1, v0, Le/g/a/a/d;->l:I

    int-to-float v3, v1

    iget v6, v0, Le/g/a/a/d;->m:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    sub-float/2addr v3, v8

    int-to-float v1, v1

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    div-float/2addr v3, v1

    iget-object v1, v0, Le/g/a/a/d;->j:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/RadialGradient;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget v8, v0, Le/g/a/a/d;->l:I

    int-to-float v8, v8

    iget v9, v0, Le/g/a/a/d;->m:F

    div-float/2addr v9, v7

    add-float v20, v8, v9

    new-array v8, v14, [I

    fill-array-data v8, :array_1

    new-array v9, v14, [F

    aput v2, v9, v15

    aput v3, v9, v4

    aput v16, v9, v5

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Le/g/a/a/d;->p:Landroid/graphics/Path;

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Le/g/a/a/d;->p:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    :goto_1
    iget v1, v0, Le/g/a/a/d;->l:I

    int-to-float v1, v1

    iget v2, v0, Le/g/a/a/d;->m:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget-object v2, v0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    neg-float v3, v1

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Le/g/a/a/d;->p:Landroid/graphics/Path;

    iget-object v2, v0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget v1, v0, Le/g/a/a/d;->l:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v2, v0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    neg-float v3, v1

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Le/g/a/a/d;->p:Landroid/graphics/Path;

    iget-object v2, v0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x4c000000    # 3.3554432E7f
        0x4c000000    # 3.3554432E7f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x4c000000    # 3.3554432E7f
        0x4c000000    # 3.3554432E7f
        0x0
    .end array-data
.end method

.method private m()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/g/a/a/d;->c:J

    const/4 v0, 0x0

    iput v0, p0, Le/g/a/a/d;->d:F

    return-void
.end method

.method private t()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/g/a/a/d;->c:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Le/g/a/a/d;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Le/g/a/a/d;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/d;->b:Z

    :cond_0
    invoke-virtual {p0}, Le/g/a/a/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/g/a/a/d;->v:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/d;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public c()F
    .locals 2

    iget v0, p0, Le/g/a/a/d;->l:I

    int-to-float v0, v0

    iget v1, p0, Le/g/a/a/d;->m:F

    add-float/2addr v0, v1

    return v0
.end method

.method public d()F
    .locals 2

    iget v0, p0, Le/g/a/a/d;->l:I

    int-to-float v0, v0

    iget v1, p0, Le/g/a/a/d;->m:F

    add-float/2addr v0, v1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Le/g/a/a/d;->u:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Le/g/a/a/d;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/d;->u:Z

    :cond_0
    iget v0, p0, Le/g/a/a/d;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v2, p0, Le/g/a/a/d;->m:F

    iget v3, p0, Le/g/a/a/d;->l:I

    int-to-float v4, v3

    add-float/2addr v4, v2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Le/g/a/a/d;->n:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Le/g/a/a/d;->o:Landroid/graphics/Path;

    iget-object v3, p0, Le/g/a/a/d;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v2, p0, Le/g/a/a/d;->m:F

    iget v3, p0, Le/g/a/a/d;->l:I

    int-to-float v4, v3

    add-float/2addr v4, v2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Le/g/a/a/d;->m:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Le/g/a/a/d;->p:Landroid/graphics/Path;

    iget-object v2, p0, Le/g/a/a/d;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v1, p0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    iget v2, p0, Le/g/a/a/d;->l:I

    neg-int v3, v2

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    int-to-float v5, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Le/g/a/a/d;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Le/g/a/a/d;->k:Landroid/graphics/Paint;

    iget v2, p0, Le/g/a/a/d;->t:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Le/g/a/a/d;->k:Landroid/graphics/Paint;

    iget v2, p0, Le/g/a/a/d;->s:I

    iget v3, p0, Le/g/a/a/d;->t:I

    iget v4, p0, Le/g/a/a/d;->d:F

    invoke-static {v2, v3, v4}, Le/g/a/b/a;->b(IIF)I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Le/g/a/a/d;->q:Landroid/graphics/RectF;

    iget-object v2, p0, Le/g/a/a/d;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Le/g/a/a/d;->r:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public f()F
    .locals 2

    iget v0, p0, Le/g/a/a/d;->m:F

    iget v1, p0, Le/g/a/a/d;->n:F

    add-float/2addr v0, v1

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Le/g/a/a/d;->m:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget v0, p0, Le/g/a/a/d;->l:I

    int-to-float v0, v0

    iget v1, p0, Le/g/a/a/d;->m:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    iget v1, p0, Le/g/a/a/d;->n:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Le/g/a/a/d;->l:I

    int-to-float v0, v0

    iget v1, p0, Le/g/a/a/d;->m:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Le/g/a/a/d;->m:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Le/g/a/a/d;->m:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Le/g/a/a/d;->b:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Le/g/a/a/d;->l:I

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    invoke-virtual {p0}, Le/g/a/a/d;->stop()V

    return-void
.end method

.method public k()F
    .locals 1

    iget v0, p0, Le/g/a/a/d;->m:F

    return v0
.end method

.method public l(FF)Z
    .locals 4

    invoke-virtual {p0}, Le/g/a/a/d;->c()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Le/g/a/a/d;->d()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Le/g/a/a/d;->l:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(I)Z
    .locals 1

    iget v0, p0, Le/g/a/a/d;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Le/g/a/a/d;->e:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public o(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Le/g/a/a/d;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Le/g/a/a/d;->onStateChange([I)Z

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    const v0, 0x101009e

    invoke-static {p1, v0}, Le/g/a/b/d;->g([II)Z

    move-result v0

    iput-boolean v0, p0, Le/g/a/a/d;->f:Z

    iget-object v0, p0, Le/g/a/a/d;->r:Landroid/content/res/ColorStateList;

    iget v1, p0, Le/g/a/a/d;->t:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v0, p0, Le/g/a/a/d;->t:I

    if-eq v0, p1, :cond_2

    iget-boolean v0, p0, Le/g/a/a/d;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le/g/a/a/d;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le/g/a/a/d;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Le/g/a/a/d;->e:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Le/g/a/a/d;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/g/a/a/d;->s:I

    goto :goto_0

    :cond_0
    iget v0, p0, Le/g/a/a/d;->t:I

    :goto_0
    iput v0, p0, Le/g/a/a/d;->s:I

    iput p1, p0, Le/g/a/a/d;->t:I

    invoke-virtual {p0}, Le/g/a/a/d;->start()V

    goto :goto_1

    :cond_1
    iput p1, p0, Le/g/a/a/d;->s:I

    iput p1, p0, Le/g/a/a/d;->t:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p0}, Le/g/a/a/d;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iput p1, p0, Le/g/a/a/d;->s:I

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Le/g/a/a/d;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Le/g/a/a/d;->onStateChange([I)Z

    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Le/g/a/a/d;->g:Z

    return-void
.end method

.method public r(I)Z
    .locals 1

    iget v0, p0, Le/g/a/a/d;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Le/g/a/a/d;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/g/a/a/d;->u:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public s(FF)Z
    .locals 1

    iget v0, p0, Le/g/a/a/d;->m:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Le/g/a/a/d;->n:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iput p1, p0, Le/g/a/a/d;->m:F

    iput p2, p0, Le/g/a/a/d;->n:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/g/a/a/d;->u:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/g/a/a/d;->b:Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/d;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Le/g/a/a/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/d;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Le/g/a/a/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 5

    invoke-direct {p0}, Le/g/a/a/d;->m()V

    iget-object v0, p0, Le/g/a/a/d;->v:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/d;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/d;->b:Z

    iget-object v0, p0, Le/g/a/a/d;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

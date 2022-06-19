.class public Le/g/a/a/g;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private b:Z

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/RadialGradient;

.field private f:Landroid/graphics/RadialGradient;

.field private g:Landroid/graphics/Matrix;

.field private h:I

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/Path;

.field private k:I

.field private l:I

.field private m:F

.field private n:Landroid/graphics/PointF;

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:F

.field private t:I

.field private u:J

.field private v:Z

.field private w:I

.field private final x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Le/g/a/a/g;->w:I

    if-eqz v0, :cond_1

    iget v0, p0, Le/g/a/a/g;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Le/g/a/a/g;->d:Landroid/graphics/Paint;

    iget v2, p0, Le/g/a/a/g;->l:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/g;->d:Landroid/graphics/Paint;

    iget v2, p0, Le/g/a/a/g;->h:I

    int-to-float v2, v2

    iget v3, p0, Le/g/a/a/g;->m:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Le/g/a/a/g;->j:Landroid/graphics/Path;

    iget-object v2, p0, Le/g/a/a/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Le/g/a/a/g;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Le/g/a/a/g;->s:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Le/g/a/a/g;->c:Landroid/graphics/Paint;

    iget v2, p0, Le/g/a/a/g;->h:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Le/g/a/a/g;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Le/g/a/a/g;->e:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Le/g/a/a/g;->j:Landroid/graphics/Path;

    iget-object v1, p0, Le/g/a/a/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Le/g/a/a/g;->w:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Le/g/a/a/g;->o:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/g/a/a/g;->d:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/g;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/g;->j:Landroid/graphics/Path;

    iget-object v1, p0, Le/g/a/a/g;->d:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le/g/a/a/g;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Le/g/a/a/g;->f:Landroid/graphics/RadialGradient;

    goto :goto_0

    :cond_1
    iget v0, p0, Le/g/a/a/g;->o:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Le/g/a/a/g;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Le/g/a/a/g;->e:Landroid/graphics/RadialGradient;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Le/g/a/a/g;->j:Landroid/graphics/Path;

    iget-object v1, p0, Le/g/a/a/g;->c:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private e(FF)I
    .locals 6

    iget-object v0, p0, Le/g/a/a/g;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Le/g/a/a/g;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/g/a/a/g;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_0
    iget-object v1, p0, Le/g/a/a/g;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Le/g/a/a/g;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_1
    iget-object v1, p0, Le/g/a/a/g;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    :goto_1
    sub-float/2addr v0, p1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float/2addr v1, p2

    float-to-double p1, v1

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private f()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/g/a/a/g;->u:J

    return-void
.end method

.method private g(FFF)Z
    .locals 2

    iget-object v0, p0, Le/g/a/a/g;->n:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    iget v1, p0, Le/g/a/a/g;->o:F

    cmpl-float v1, v1, p3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iput p3, p0, Le/g/a/a/g;->o:F

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p3, v0

    iget-object v0, p0, Le/g/a/a/g;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Le/g/a/a/g;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Le/g/a/a/g;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p3, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Le/g/a/a/g;->e:Landroid/graphics/RadialGradient;

    iget-object p2, p0, Le/g/a/a/g;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Le/g/a/a/g;->f:Landroid/graphics/RadialGradient;

    if-eqz p1, :cond_2

    iget-object p2, p0, Le/g/a/a/g;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private h(I)V
    .locals 1

    iget v0, p0, Le/g/a/a/g;->w:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Le/g/a/a/g;->w:I

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Le/g/a/a/g;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/g/a/a/g;->stop()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/g/a/a/g;->h(I)V

    return-void
.end method

.method public d()J
    .locals 6

    iget v0, p0, Le/g/a/a/g;->t:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Le/g/a/a/g;->w:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Le/g/a/a/g;->k:I

    iget v2, p0, Le/g/a/a/g;->q:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Le/g/a/a/g;->u:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :goto_1
    iget v0, p0, Le/g/a/a/g;->k:I

    iget v1, p0, Le/g/a/a/g;->q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Le/g/a/a/g;->w:I

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Le/g/a/a/g;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Le/g/a/a/g;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Le/g/a/a/g;->b(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Le/g/a/a/g;->b:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Le/g/a/a/g;->i:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Le/g/a/a/g;->j:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Le/g/a/a/g;->j:Landroid/graphics/Path;

    iget-object v0, p0, Le/g/a/a/g;->i:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    const v0, 0x10100a7

    invoke-static {p1, v0}, Le/g/a/b/d;->g([II)Z

    move-result p1

    iget-boolean v0, p0, Le/g/a/a/g;->v:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Le/g/a/a/g;->v:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v4, p0, Le/g/a/a/g;->w:I

    if-eqz v4, :cond_1

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Le/g/a/a/g;->p:I

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v1, p0, Le/g/a/a/g;->o:F

    invoke-direct {p0, v0, p1, v1}, Le/g/a/a/g;->g(FFF)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget v2, p0, Le/g/a/a/g;->p:I

    if-eq v2, v3, :cond_2

    if-ne v2, v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Le/g/a/a/g;->e(FF)I

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    invoke-direct {p0, v1, p1, v0}, Le/g/a/a/g;->g(FFF)Z

    invoke-direct {p0, v3}, Le/g/a/a/g;->h(I)V

    goto :goto_1

    :cond_4
    iget p1, p0, Le/g/a/a/g;->w:I

    if-eqz p1, :cond_8

    const/4 v4, 0x2

    if-ne p1, v4, :cond_7

    iget p1, p0, Le/g/a/a/g;->p:I

    if-eq p1, v3, :cond_5

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object p1, p0, Le/g/a/a/g;->n:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, p1, v0}, Le/g/a/a/g;->g(FFF)Z

    :cond_6
    invoke-direct {p0, v2}, Le/g/a/a/g;->h(I)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Le/g/a/a/g;->h(I)V

    :cond_8
    :goto_1
    return v3

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/g/a/a/g;->b:Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Le/g/a/a/g;->h:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Le/g/a/a/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 5

    invoke-virtual {p0}, Le/g/a/a/g;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Le/g/a/a/g;->f()V

    iget-object v0, p0, Le/g/a/a/g;->x:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/g;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Le/g/a/a/g;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/g;->b:Z

    iget-object v0, p0, Le/g/a/a/g;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

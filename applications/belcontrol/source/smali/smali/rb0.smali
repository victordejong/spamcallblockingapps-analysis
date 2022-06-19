.class public Lrb0;
.super Lvb0;
.source ""

# interfaces
.implements Le9;


# instance fields
.field public k:J

.field public l:J

.field public m:Landroid/view/animation/Interpolator;

.field public n:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lvb0;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lrb0;->k:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lrb0;->l:J

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lrb0;->m:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lrb0;->n:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lvb0;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lvb0;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lvb0;->b:Landroid/graphics/Paint;

    iget v2, p0, Lvb0;->f:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v0, p0, Lvb0;->f:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    iget v3, p0, Lvb0;->h:F

    add-float/2addr v2, v3

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v5

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    add-float/2addr v0, v5

    invoke-virtual {v4, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lvb0;->j:Lcarbon/widget/ProgressBar$a;

    sget-object v2, Lcarbon/widget/ProgressBar$a;->d:Lcarbon/widget/ProgressBar$a;

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v0, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lvb0;->a:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lrb0;->l:J

    rem-long v10, v6, v8

    long-to-float v0, v10

    long-to-float v2, v8

    div-float/2addr v0, v2

    iget-wide v8, p0, Lrb0;->k:J

    rem-long/2addr v6, v8

    long-to-float v2, v6

    long-to-float v6, v8

    div-float/2addr v2, v6

    sub-float v6, v0, v2

    add-float/2addr v6, v5

    rem-float/2addr v6, v5

    sub-float/2addr v2, v0

    add-float/2addr v2, v5

    rem-float/2addr v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v5, p0, Lrb0;->n:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float v2, v2, v1

    const/high16 v5, 0x43960000    # 300.0f

    mul-float v2, v2, v5

    const/high16 v5, 0x41f00000    # 30.0f

    add-float v6, v2, v5

    mul-float v0, v0, v3

    div-float v1, v6, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v3

    rem-float v5, v0, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lvb0;->a:J

    sub-long/2addr v0, v6

    long-to-float v0, v0

    iget-wide v1, p0, Lrb0;->l:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lrb0;->m:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v3

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v5, v0, v1

    iget v0, p0, Lvb0;->g:F

    mul-float v6, v0, v3

    :goto_0
    const/4 v7, 0x0

    iget-object v8, p0, Lvb0;->b:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

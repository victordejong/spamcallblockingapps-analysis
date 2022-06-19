.class public Lub0;
.super Lvb0;
.source ""


# instance fields
.field public k:J

.field public l:J

.field public m:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lvb0;-><init>()V

    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lub0;->k:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lub0;->l:J

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lub0;->m:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lvb0;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lvb0;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lvb0;->j:Lcarbon/widget/ProgressBar$a;

    sget-object v3, Lcarbon/widget/ProgressBar$a;->b:Lcarbon/widget/ProgressBar$a;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, v0, Lvb0;->a:J

    sub-long/2addr v2, v5

    iget-wide v5, v0, Lub0;->k:J

    iget-wide v7, v0, Lub0;->l:J

    add-long v9, v5, v7

    rem-long/2addr v2, v9

    long-to-float v9, v2

    long-to-float v10, v5

    div-float/2addr v9, v10

    sub-long/2addr v2, v7

    long-to-float v2, v2

    long-to-float v3, v5

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, v0, Lub0;->m:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v11, v2, v3

    invoke-virtual/range {p0 .. p0}, Lvb0;->d()F

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v13, v9, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v14, v1

    iget-object v15, v0, Lvb0;->b:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcarbon/widget/ProgressBar$a;->c:Lcarbon/widget/ProgressBar$a;

    if-ne v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, v0, Lvb0;->a:J

    sub-long/2addr v2, v5

    iget-wide v5, v0, Lub0;->k:J

    iget-wide v7, v0, Lub0;->l:J

    add-long v9, v5, v7

    rem-long/2addr v2, v9

    long-to-float v9, v2

    long-to-float v10, v5

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    sub-long/2addr v2, v7

    long-to-float v2, v2

    long-to-float v3, v5

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, v0, Lub0;->m:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v10, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v4, v9, v2

    invoke-virtual/range {p0 .. p0}, Lvb0;->d()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v6, v10, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, v0, Lvb0;->b:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lvb0;->d()F

    move-result v11

    iget v2, v0, Lvb0;->g:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v12, v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v13, v1

    iget-object v14, v0, Lvb0;->b:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

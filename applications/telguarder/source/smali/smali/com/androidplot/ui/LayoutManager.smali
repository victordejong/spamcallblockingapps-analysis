.class public Lcom/androidplot/ui/LayoutManager;
.super Lcom/androidplot/util/LinkedLayerList;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/androidplot/ui/Resizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/util/LinkedLayerList<",
        "Lcom/androidplot/ui/widget/Widget;",
        ">;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/androidplot/ui/Resizable;"
    }
.end annotation


# instance fields
.field private anchorPaint:Landroid/graphics/Paint;

.field private displayDims:Lcom/androidplot/util/DisplayDimensions;

.field private drawAnchorsEnabled:Z

.field private drawMarginsEnabled:Z

.field private drawOutlineShadowsEnabled:Z

.field private drawOutlinesEnabled:Z

.field private drawPaddingEnabled:Z

.field private marginPaint:Landroid/graphics/Paint;

.field private outlinePaint:Landroid/graphics/Paint;

.field private outlineShadowPaint:Landroid/graphics/Paint;

.field private paddingPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Lcom/androidplot/util/LinkedLayerList;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawAnchorsEnabled:Z

    .line 36
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlinesEnabled:Z

    .line 38
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlineShadowsEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawMarginsEnabled:Z

    .line 42
    iput-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawPaddingEnabled:Z

    .line 44
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->anchorPaint:Landroid/graphics/Paint;

    .line 48
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->anchorPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    .line 60
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private static drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 143
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 144
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 147
    throw p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 86
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->isDrawMarginsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/ui/LayoutManager;->drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->isDrawPaddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/ui/LayoutManager;->drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/widget/Widget;

    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 95
    invoke-virtual {v1}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v3, v3, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/androidplot/ui/widget/Widget;->getWidthPix(F)F

    move-result v3

    .line 97
    iget-object v4, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v4, v4, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/androidplot/ui/widget/Widget;->getHeightPix(F)F

    move-result v4

    .line 98
    iget-object v5, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v5, v5, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-static {v4, v3, v5, v2}, Lcom/androidplot/ui/widget/Widget;->calculateCoordinates(FFLandroid/graphics/RectF;Lcom/androidplot/ui/PositionMetrics;)Landroid/graphics/PointF;

    move-result-object v5

    .line 101
    invoke-virtual {v1}, Lcom/androidplot/ui/widget/Widget;->getWidgetDimensions()Lcom/androidplot/util/DisplayDimensions;

    move-result-object v6

    .line 103
    iget-boolean v7, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlineShadowsEnabled:Z

    if-eqz v7, :cond_2

    .line 104
    iget-object v7, v6, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 110
    :cond_2
    invoke-virtual {v1}, Lcom/androidplot/ui/widget/Widget;->isClippingEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 111
    iget-object v7, v6, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 113
    :cond_3
    invoke-virtual {v1, p1}, Lcom/androidplot/ui/widget/Widget;->draw(Landroid/graphics/Canvas;)V

    .line 115
    iget-boolean v1, p0, Lcom/androidplot/ui/LayoutManager;->drawMarginsEnabled:Z

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, v6, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v7, v6, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->getMarginPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-static {p1, v1, v7, v8}, Lcom/androidplot/ui/LayoutManager;->drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 119
    :cond_4
    iget-boolean v1, p0, Lcom/androidplot/ui/LayoutManager;->drawPaddingEnabled:Z

    if-eqz v1, :cond_5

    .line 120
    iget-object v1, v6, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    iget-object v7, v6, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->getPaddingPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-static {p1, v1, v7, v8}, Lcom/androidplot/ui/LayoutManager;->drawSpacing(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 123
    :cond_5
    iget-boolean v1, p0, Lcom/androidplot/ui/LayoutManager;->drawAnchorsEnabled:Z

    if-eqz v1, :cond_6

    .line 124
    iget v1, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 126
    invoke-virtual {v2}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/Anchor;

    move-result-object v2

    .line 125
    invoke-static {v1, v5, v3, v4, v2}, Lcom/androidplot/ui/widget/Widget;->getAnchorCoordinates(FFFFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object v1

    .line 127
    invoke-virtual {p0, p1, v1}, Lcom/androidplot/ui/LayoutManager;->drawAnchor(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 131
    :cond_6
    iget-boolean v1, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlinesEnabled:Z

    if-eqz v1, :cond_7

    .line 132
    iget-object v1, v6, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 136
    throw v0

    :cond_8
    return-void
.end method

.method protected drawAnchor(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 8

    .line 152
    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40800000    # 4.0f

    sub-float v3, v0, v1

    iget v0, p2, Landroid/graphics/PointF;->y:F

    sub-float v4, v0, v1

    iget v0, p2, Landroid/graphics/PointF;->x:F

    add-float v5, v0, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float v6, p2, v1

    iget-object v7, p0, Lcom/androidplot/ui/LayoutManager;->anchorPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getMarginPaint()Landroid/graphics/Paint;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOutlinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOutlineShadowPaint()Landroid/graphics/Paint;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaddingPaint()Landroid/graphics/Paint;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isDrawAnchorsEnabled()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawAnchorsEnabled:Z

    return v0
.end method

.method public isDrawMarginsEnabled()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawMarginsEnabled:Z

    return v0
.end method

.method public isDrawOutlineShadowsEnabled()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlineShadowsEnabled:Z

    return v0
.end method

.method public isDrawOutlinesEnabled()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlinesEnabled:Z

    return v0
.end method

.method public isDrawPaddingEnabled()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/androidplot/ui/LayoutManager;->drawPaddingEnabled:Z

    return v0
.end method

.method public layout(Lcom/androidplot/util/DisplayDimensions;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 255
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->refreshLayout()V

    return-void
.end method

.method public declared-synchronized onPostInit()V
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/widget/Widget;

    .line 70
    invoke-virtual {v1}, Lcom/androidplot/ui/widget/Widget;->onPostInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public refreshLayout()V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/androidplot/ui/LayoutManager;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/widget/Widget;

    .line 247
    iget-object v2, p0, Lcom/androidplot/ui/LayoutManager;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    invoke-virtual {v1, v2}, Lcom/androidplot/ui/widget/Widget;->layout(Lcom/androidplot/util/DisplayDimensions;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDrawAnchorsEnabled(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawAnchorsEnabled:Z

    return-void
.end method

.method public setDrawMarginsEnabled(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawMarginsEnabled:Z

    return-void
.end method

.method public setDrawOutlineShadowsEnabled(Z)V
    .locals 3

    .line 217
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlineShadowsEnabled:Z

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 220
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    const v0, -0xbbbbbc

    .line 221
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object p1, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    iget-object p1, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, -0x1000000

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method

.method public setDrawOutlinesEnabled(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawOutlinesEnabled:Z

    return-void
.end method

.method public setDrawPaddingEnabled(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/androidplot/ui/LayoutManager;->drawPaddingEnabled:Z

    return-void
.end method

.method public setMarginPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->marginPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setMarkupEnabled(Z)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawOutlinesEnabled(Z)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawAnchorsEnabled(Z)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawMarginsEnabled(Z)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawPaddingEnabled(Z)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/LayoutManager;->setDrawOutlineShadowsEnabled(Z)V

    return-void
.end method

.method public setOutlinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->outlinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setOutlineShadowPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->outlineShadowPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setPaddingPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/androidplot/ui/LayoutManager;->paddingPaint:Landroid/graphics/Paint;

    return-void
.end method

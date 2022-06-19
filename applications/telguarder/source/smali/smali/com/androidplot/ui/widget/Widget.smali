.class public abstract Lcom/androidplot/ui/widget/Widget;
.super Ljava/lang/Object;
.source "Widget.java"

# interfaces
.implements Lcom/androidplot/ui/BoxModelable;
.implements Lcom/androidplot/ui/Resizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/widget/Widget$Rotation;
    }
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private boxModel:Lcom/androidplot/ui/BoxModel;

.field private clippingEnabled:Z

.field private isVisible:Z

.field private lastWidgetRect:Landroid/graphics/RectF;

.field private layoutManager:Lcom/androidplot/ui/LayoutManager;

.field private plotDimensions:Lcom/androidplot/util/DisplayDimensions;

.field private positionMetrics:Lcom/androidplot/ui/PositionMetrics;

.field private rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

.field private size:Lcom/androidplot/ui/Size;

.field private widgetDimensions:Lcom/androidplot/util/DisplayDimensions;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/androidplot/ui/widget/Widget;->clippingEnabled:Z

    .line 38
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    invoke-direct {v0}, Lcom/androidplot/ui/BoxModel;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    .line 40
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    .line 41
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/androidplot/ui/widget/Widget;->isVisible:Z

    .line 46
    sget-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

    iput-object v0, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/androidplot/ui/widget/Widget;->lastWidgetRect:Landroid/graphics/RectF;

    .line 61
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    .line 62
    iget-object p1, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    .line 63
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/widget/Widget;->setSize(Lcom/androidplot/ui/Size;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/widget/Widget;->onMetricsChanged(Lcom/androidplot/ui/Size;Lcom/androidplot/ui/Size;)V

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetric;Lcom/androidplot/ui/SizeMetric;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/androidplot/ui/Size;

    invoke-direct {v0, p2, p3}, Lcom/androidplot/ui/Size;-><init>(Lcom/androidplot/ui/SizeMetric;Lcom/androidplot/ui/SizeMetric;)V

    invoke-direct {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    return-void
.end method

.method public static calculateCoordinates(FFLandroid/graphics/RectF;Lcom/androidplot/ui/PositionMetrics;)Landroid/graphics/PointF;
    .locals 3

    .line 305
    invoke-virtual {p3}, Lcom/androidplot/ui/PositionMetrics;->getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/HorizontalPosition;->getPixelValue(F)F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 306
    invoke-virtual {p3}, Lcom/androidplot/ui/PositionMetrics;->getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/androidplot/ui/VerticalPosition;->getPixelValue(F)F

    move-result v1

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    .line 307
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 308
    invoke-virtual {p3}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/Anchor;

    move-result-object p3

    invoke-static {p1, p0, p3}, Lcom/androidplot/ui/widget/Widget;->getAnchorOffset(FFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/androidplot/util/PixelUtils;->sub(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private checkSize(Landroid/graphics/RectF;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->lastWidgetRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->lastWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/ui/widget/Widget;->onResize(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 359
    :cond_1
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->lastWidgetRect:Landroid/graphics/RectF;

    return-void
.end method

.method public static getAnchorCoordinates(FFFFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;
    .locals 1

    .line 352
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr p2, p0

    add-float/2addr p3, p1

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, p4}, Lcom/androidplot/ui/widget/Widget;->getAnchorCoordinates(Landroid/graphics/RectF;Lcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static getAnchorCoordinates(Landroid/graphics/RectF;Lcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;
    .locals 3

    .line 347
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 348
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-static {v1, p0, p1}, Lcom/androidplot/ui/widget/Widget;->getAnchorOffset(FFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object p0

    .line 347
    invoke-static {v0, p0}, Lcom/androidplot/util/PixelUtils;->add(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static getAnchorOffset(FFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;
    .locals 4

    .line 312
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 313
    sget-object v1, Lcom/androidplot/ui/widget/Widget$1;->$SwitchMap$com$androidplot$ui$Anchor:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/Anchor;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v1, :pswitch_data_0

    .line 341
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported anchor location: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    div-float/2addr p0, v3

    div-float/2addr p1, v3

    .line 338
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_1
    div-float/2addr p0, v3

    .line 335
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_2
    div-float/2addr p0, v3

    .line 332
    invoke-virtual {v0, p0, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_3
    div-float/2addr p1, v3

    .line 329
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 326
    :pswitch_4
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 323
    :pswitch_5
    invoke-virtual {v0, p0, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 320
    :pswitch_6
    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_7
    div-float/2addr p1, v3

    .line 317
    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    :pswitch_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected applyRotation(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7

    .line 393
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 394
    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 395
    iget-object v2, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v2, v2, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 396
    iget-object v4, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v4, v4, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v3

    .line 397
    sget-object v3, Lcom/androidplot/ui/widget/Widget$1;->$SwitchMap$com$androidplot$ui$widget$Widget$Rotation:[I

    iget-object v5, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    invoke-virtual {v5}, Lcom/androidplot/ui/widget/Widget$Rotation;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x4

    if-ne v3, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 420
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_0

    :cond_2
    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 408
    new-instance v3, Landroid/graphics/RectF;

    sub-float v5, v0, v2

    sub-float v6, v1, v4

    add-float/2addr v2, v0

    add-float/2addr v4, v1

    invoke-direct {v3, v5, v6, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object p2, v3

    const/high16 v2, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_3
    const/high16 p2, 0x42b40000    # 90.0f

    .line 400
    new-instance v3, Landroid/graphics/RectF;

    sub-float v5, v0, v2

    sub-float v6, v1, v4

    add-float/2addr v2, v0

    add-float/2addr v4, v1

    invoke-direct {v3, v5, v6, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object p2, v3

    const/high16 v2, 0x42b40000    # 90.0f

    .line 423
    :goto_0
    iget-object v3, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    sget-object v4, Lcom/androidplot/ui/widget/Widget$Rotation;->NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

    if-eq v3, v4, :cond_4

    .line 424
    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_4
    return-object p2
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method protected abstract doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 380
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;->applyRotation(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 381
    invoke-direct {p0, v0}, Lcom/androidplot/ui/widget/Widget;->checkSize(Landroid/graphics/RectF;)V

    .line 382
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;->doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 385
    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->borderPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getAnchor()Lcom/androidplot/ui/Anchor;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/Anchor;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->backgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->borderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getHeightMetric()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    return-object v0
.end method

.method public getHeightPix(F)F
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result p1

    return p1
.end method

.method public getMarginBottom()F
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginBottom()F

    move-result v0

    return v0
.end method

.method public getMarginLeft()F
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginLeft()F

    move-result v0

    return v0
.end method

.method public getMarginRight()F
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginRight()F

    move-result v0

    return v0
.end method

.method public getMarginTop()F
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginTop()F

    move-result v0

    return v0
.end method

.method public getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getPaddingBottom()F
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingBottom()F

    move-result v0

    return v0
.end method

.method public getPaddingLeft()F
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingLeft()F

    move-result v0

    return v0
.end method

.method public getPaddingRight()F
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingRight()F

    move-result v0

    return v0
.end method

.method public getPaddingTop()F
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingTop()F

    move-result v0

    return v0
.end method

.method public getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->positionMetrics:Lcom/androidplot/ui/PositionMetrics;

    return-object v0
.end method

.method public getRotation()Lcom/androidplot/ui/widget/Widget$Rotation;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    return-object v0
.end method

.method public getSize()Lcom/androidplot/ui/Size;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    return-object v0
.end method

.method public getWidgetDimensions()Lcom/androidplot/util/DisplayDimensions;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    return-object v0
.end method

.method public getWidthMetric()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    return-object v0
.end method

.method public getWidthPix(F)F
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result p1

    return p1
.end method

.method public isClippingEnabled()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/Widget;->clippingEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/Widget;->isVisible:Z

    return v0
.end method

.method public declared-synchronized layout(Lcom/androidplot/util/DisplayDimensions;)V
    .locals 0

    monitor-enter p0

    .line 299
    :try_start_0
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    .line 300
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->refreshLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onMetricsChanged(Lcom/androidplot/ui/Size;Lcom/androidplot/ui/Size;)V
    .locals 0

    return-void
.end method

.method public onPostInit()V
    .locals 0

    return-void
.end method

.method protected onResize(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;)V
    .locals 6

    .line 90
    sget-object v5, Lcom/androidplot/ui/Anchor;->LEFT_TOP:Lcom/androidplot/ui/Anchor;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/widget/Widget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    return-void
.end method

.method public position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V
    .locals 7

    .line 102
    new-instance v6, Lcom/androidplot/ui/PositionMetrics;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/ui/PositionMetrics;-><init>(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    invoke-virtual {p0, v6}, Lcom/androidplot/ui/widget/Widget;->setPositionMetrics(Lcom/androidplot/ui/PositionMetrics;)V

    .line 103
    iget-object p1, p0, Lcom/androidplot/ui/widget/Widget;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {p1, p0}, Lcom/androidplot/ui/LayoutManager;->addToTop(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized refreshLayout()V
    .locals 7

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->positionMetrics:Lcom/androidplot/ui/PositionMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 282
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/widget/Widget;->getWidthPix(F)F

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/androidplot/ui/widget/Widget;->getHeightPix(F)F

    move-result v1

    .line 286
    iget-object v2, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v2, v2, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/androidplot/ui/widget/Widget;->positionMetrics:Lcom/androidplot/ui/PositionMetrics;

    invoke-static {v1, v0, v2, v3}, Lcom/androidplot/ui/widget/Widget;->calculateCoordinates(FFLandroid/graphics/RectF;Lcom/androidplot/ui/PositionMetrics;)Landroid/graphics/PointF;

    move-result-object v2

    .line 289
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget v0, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 291
    invoke-virtual {p0, v3}, Lcom/androidplot/ui/widget/Widget;->getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 292
    invoke-virtual {p0, v0}, Lcom/androidplot/ui/widget/Widget;->getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 293
    new-instance v2, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v2, v3, v0, v1}, Lcom/androidplot/util/DisplayDimensions;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAnchor(Lcom/androidplot/ui/Anchor;)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/PositionMetrics;->setAnchor(Lcom/androidplot/ui/Anchor;)V

    return-void
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->borderPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/Widget;->clippingEnabled:Z

    return-void
.end method

.method public setHeight(F)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->setValue(F)V

    return-void
.end method

.method public setHeight(FLcom/androidplot/ui/SizeMode;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/ui/SizeMetric;->set(FLjava/lang/Enum;)V

    return-void
.end method

.method public setMarginBottom(F)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginBottom(F)V

    return-void
.end method

.method public setMarginLeft(F)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginLeft(F)V

    return-void
.end method

.method public setMarginRight(F)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginRight(F)V

    return-void
.end method

.method public setMarginTop(F)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginTop(F)V

    return-void
.end method

.method public setMargins(FFFF)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/androidplot/ui/BoxModel;->setMargins(FFFF)V

    return-void
.end method

.method public setPadding(FFFF)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/androidplot/ui/BoxModel;->setPadding(FFFF)V

    return-void
.end method

.method public setPaddingBottom(F)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingBottom(F)V

    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingLeft(F)V

    return-void
.end method

.method public setPaddingRight(F)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingRight(F)V

    return-void
.end method

.method public setPaddingTop(F)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingTop(F)V

    return-void
.end method

.method public setPositionMetrics(Lcom/androidplot/ui/PositionMetrics;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->positionMetrics:Lcom/androidplot/ui/PositionMetrics;

    return-void
.end method

.method public setRotation(Lcom/androidplot/ui/widget/Widget$Rotation;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    return-void
.end method

.method public setSize(Lcom/androidplot/ui/Size;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 472
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/Widget;->isVisible:Z

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->setValue(F)V

    return-void
.end method

.method public setWidth(FLcom/androidplot/ui/SizeMode;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/ui/SizeMetric;->set(FLjava/lang/Enum;)V

    return-void
.end method

.class public Lcom/androidplot/xy/PanZoom;
.super Ljava/lang/Object;
.source "PanZoom.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/PanZoom$State;,
        Lcom/androidplot/xy/PanZoom$ZoomLimit;,
        Lcom/androidplot/xy/PanZoom$Zoom;,
        Lcom/androidplot/xy/PanZoom$Pan;,
        Lcom/androidplot/xy/PanZoom$DragState;
    }
.end annotation


# static fields
.field protected static final FIRST_FINGER:I = 0x0

.field protected static final MIN_DIST_2_FING:F = 5.0f

.field protected static final SECOND_FINGER:I = 0x1


# instance fields
.field private delegate:Landroid/view/View$OnTouchListener;

.field private dragState:Lcom/androidplot/xy/PanZoom$DragState;

.field protected fingersRect:Landroid/graphics/RectF;

.field private firstFingerPos:Landroid/graphics/PointF;

.field private isEnabled:Z

.field private pan:Lcom/androidplot/xy/PanZoom$Pan;

.field private plot:Lcom/androidplot/xy/XYPlot;

.field private state:Lcom/androidplot/xy/PanZoom$State;

.field private zoom:Lcom/androidplot/xy/PanZoom$Zoom;

.field private zoomLimit:Lcom/androidplot/xy/PanZoom$ZoomLimit;


# direct methods
.method protected constructor <init>(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/androidplot/xy/PanZoom;->isEnabled:Z

    .line 34
    sget-object v0, Lcom/androidplot/xy/PanZoom$DragState;->NONE:Lcom/androidplot/xy/PanZoom$DragState;

    iput-object v0, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    .line 40
    new-instance v0, Lcom/androidplot/xy/PanZoom$State;

    invoke-direct {v0}, Lcom/androidplot/xy/PanZoom$State;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/PanZoom;->state:Lcom/androidplot/xy/PanZoom$State;

    .line 137
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    .line 138
    iput-object p2, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    .line 139
    iput-object p3, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 140
    sget-object p1, Lcom/androidplot/xy/PanZoom$ZoomLimit;->OUTER:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->zoomLimit:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    return-void
.end method

.method protected constructor <init>(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;Lcom/androidplot/xy/PanZoom$ZoomLimit;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/androidplot/xy/PanZoom;->isEnabled:Z

    .line 34
    sget-object v0, Lcom/androidplot/xy/PanZoom$DragState;->NONE:Lcom/androidplot/xy/PanZoom$DragState;

    iput-object v0, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    .line 40
    new-instance v0, Lcom/androidplot/xy/PanZoom$State;

    invoke-direct {v0}, Lcom/androidplot/xy/PanZoom$State;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/PanZoom;->state:Lcom/androidplot/xy/PanZoom$State;

    .line 145
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    .line 146
    iput-object p2, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    .line 147
    iput-object p3, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 148
    iput-object p4, p0, Lcom/androidplot/xy/PanZoom;->zoomLimit:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    return-void
.end method

.method public static attach(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/xy/PanZoom;
    .locals 2

    .line 178
    sget-object v0, Lcom/androidplot/xy/PanZoom$Pan;->BOTH:Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-static {p0, v0, v1}, Lcom/androidplot/xy/PanZoom;->attach(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;)Lcom/androidplot/xy/PanZoom;

    move-result-object p0

    return-object p0
.end method

.method public static attach(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;)Lcom/androidplot/xy/PanZoom;
    .locals 1

    .line 191
    sget-object v0, Lcom/androidplot/xy/PanZoom$ZoomLimit;->OUTER:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    invoke-static {p0, p1, p2, v0}, Lcom/androidplot/xy/PanZoom;->attach(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;Lcom/androidplot/xy/PanZoom$ZoomLimit;)Lcom/androidplot/xy/PanZoom;

    move-result-object p0

    return-object p0
.end method

.method public static attach(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;Lcom/androidplot/xy/PanZoom$ZoomLimit;)Lcom/androidplot/xy/PanZoom;
    .locals 1

    .line 203
    new-instance v0, Lcom/androidplot/xy/PanZoom;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androidplot/xy/PanZoom;-><init>(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;Lcom/androidplot/xy/PanZoom$ZoomLimit;)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method


# virtual methods
.method protected adjustDomainBoundary(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->state:Lcom/androidplot/xy/PanZoom$State;

    invoke-virtual {v0, p1, p2, p3}, Lcom/androidplot/xy/PanZoom$State;->setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 167
    iget-object p1, p0, Lcom/androidplot/xy/PanZoom;->state:Lcom/androidplot/xy/PanZoom$State;

    iget-object p2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p1, p2}, Lcom/androidplot/xy/PanZoom$State;->applyDomainBoundaries(Lcom/androidplot/xy/XYPlot;)V

    return-void
.end method

.method protected adjustRangeBoundary(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->state:Lcom/androidplot/xy/PanZoom$State;

    invoke-virtual {v0, p1, p2, p3}, Lcom/androidplot/xy/PanZoom$State;->setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 162
    iget-object p1, p0, Lcom/androidplot/xy/PanZoom;->state:Lcom/androidplot/xy/PanZoom$State;

    iget-object p2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p1, p2}, Lcom/androidplot/xy/PanZoom$State;->applyRangeBoundaries(Lcom/androidplot/xy/XYPlot;)V

    return-void
.end method

.method protected calculatePan(Landroid/graphics/PointF;Lcom/androidplot/Region;Z)V
    .locals 2

    if-eqz p3, :cond_0

    .line 313
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/androidplot/Region;->setMinMax(Lcom/androidplot/Region;)V

    .line 314
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    .line 315
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getWidth()I

    move-result v1

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/androidplot/Region;->setMinMax(Lcom/androidplot/Region;)V

    .line 318
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    neg-float p1, p1

    .line 319
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    .line 322
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 323
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 326
    invoke-virtual {p2}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    if-eqz p3, :cond_2

    .line 329
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/Region;->isDefined()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 330
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_1

    .line 331
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 332
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    add-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 334
    :cond_1
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_4

    .line 335
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 336
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    goto/16 :goto_1

    .line 338
    :cond_2
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/Region;->isDefined()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 339
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_3

    .line 340
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 341
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    add-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 343
    :cond_3
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_4

    .line 344
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 345
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected calculateZoom(Landroid/graphics/RectF;FZ)V
    .locals 9

    .line 429
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 432
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 435
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_0
    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    sub-float/2addr v1, v3

    mul-float v0, v0, p2

    div-float p2, v0, v2

    .line 440
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-eqz p3, :cond_3

    .line 444
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->zoomLimit:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    sget-object v5, Lcom/androidplot/xy/PanZoom$ZoomLimit;->MIN_TICKS:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    if-ne p3, v5, :cond_1

    .line 446
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p3}, Lcom/androidplot/xy/XYPlot;->getDomainStepValue()D

    move-result-wide v5

    float-to-double v7, v0

    cmpl-double p3, v5, v7

    if-lez p3, :cond_1

    .line 447
    iget-object p2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p2}, Lcom/androidplot/xy/XYPlot;->getDomainStepValue()D

    move-result-wide p2

    div-double/2addr p2, v3

    double-to-float p2, p2

    :cond_1
    sub-float p3, v1, p2

    .line 451
    iput p3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p2

    .line 452
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 453
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 454
    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_2

    .line 455
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 457
    :cond_2
    iget p2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_6

    .line 458
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 463
    :cond_3
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->zoomLimit:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    sget-object v5, Lcom/androidplot/xy/PanZoom$ZoomLimit;->MIN_TICKS:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    if-ne p3, v5, :cond_4

    .line 465
    iget-object p3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p3}, Lcom/androidplot/xy/XYPlot;->getRangeStepValue()D

    move-result-wide v5

    float-to-double v7, v0

    cmpl-double p3, v5, v7

    if-lez p3, :cond_4

    .line 466
    iget-object p2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p2}, Lcom/androidplot/xy/XYPlot;->getRangeStepValue()D

    move-result-wide p2

    div-double/2addr p2, v3

    double-to-float p2, p2

    :cond_4
    sub-float p3, v1, p2

    .line 470
    iput p3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    .line 471
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 472
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 473
    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_5

    .line 474
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 476
    :cond_5
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_6

    .line 477
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_6
    :goto_1
    return-void
.end method

.method protected fingerDistance(FFFF)Landroid/graphics/RectF;
    .locals 2

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    cmpl-float p3, p2, p4

    if-lez p3, :cond_2

    move v0, p4

    goto :goto_2

    :cond_2
    move v0, p2

    :goto_2
    if-lez p3, :cond_3

    goto :goto_3

    :cond_3
    move p2, p4

    .line 271
    :goto_3
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3, v1, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p3
.end method

.method protected fingerDistance(Landroid/view/MotionEvent;)Landroid/graphics/RectF;
    .locals 4

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v2, 0x1

    .line 283
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 284
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 280
    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/androidplot/xy/PanZoom;->fingerDistance(FFFF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->delegate:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method protected getFingersRect()Landroid/graphics/RectF;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->fingersRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPan()Lcom/androidplot/xy/PanZoom$Pan;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    return-object v0
.end method

.method public getState()Lcom/androidplot/xy/PanZoom$State;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->state:Lcom/androidplot/xy/PanZoom$State;

    return-object v0
.end method

.method public getZoom()Lcom/androidplot/xy/PanZoom$Zoom;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    return-object v0
.end method

.method public getZoomLimit()Lcom/androidplot/xy/PanZoom$ZoomLimit;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->zoomLimit:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/androidplot/xy/PanZoom;->isEnabled:Z

    return v0
.end method

.method protected isValidScale(F)Z
    .locals 4

    .line 351
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    float-to-double v0, p1

    const-wide v2, -0x40af9db22d0e5604L    # -0.001

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->delegate:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    sget-object p1, Lcom/androidplot/xy/PanZoom$DragState;->NONE:Lcom/androidplot/xy/PanZoom$DragState;

    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/PanZoom;->fingerDistance(Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/PanZoom;->setFingersRect(Landroid/graphics/RectF;)V

    .line 232
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_3

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p2, -0x3f600000    # -5.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_8

    .line 233
    :cond_3
    sget-object p1, Lcom/androidplot/xy/PanZoom$DragState;->TWO_FINGERS:Lcom/androidplot/xy/PanZoom$DragState;

    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    goto :goto_1

    .line 242
    :cond_4
    iget-object p1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    sget-object v0, Lcom/androidplot/xy/PanZoom$DragState;->ONE_FINGER:Lcom/androidplot/xy/PanZoom$DragState;

    if-ne p1, v0, :cond_5

    .line 243
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/PanZoom;->pan(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 244
    :cond_5
    iget-object p1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    sget-object v0, Lcom/androidplot/xy/PanZoom$DragState;->TWO_FINGERS:Lcom/androidplot/xy/PanZoom$DragState;

    if-ne p1, v0, :cond_8

    .line 245
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/PanZoom;->zoom(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 250
    :cond_6
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->reset()V

    goto :goto_1

    .line 225
    :cond_7
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    .line 226
    sget-object p1, Lcom/androidplot/xy/PanZoom$DragState;->ONE_FINGER:Lcom/androidplot/xy/PanZoom$DragState;

    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    :cond_8
    :goto_1
    return v1
.end method

.method protected pan(Landroid/view/MotionEvent;)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v1, Lcom/androidplot/xy/PanZoom$Pan;->NONE:Lcom/androidplot/xy/PanZoom$Pan;

    if-ne v0, v1, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    .line 293
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    .line 294
    sget-object p1, Lcom/androidplot/xy/PanZoom$Pan;->HORIZONTAL:Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v1, Lcom/androidplot/xy/PanZoom$Pan;->BOTH:Lcom/androidplot/xy/PanZoom$Pan;

    invoke-static {p1, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iget-object v1, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    new-instance p1, Lcom/androidplot/Region;

    invoke-direct {p1}, Lcom/androidplot/Region;-><init>()V

    const/4 v1, 0x1

    .line 296
    invoke-virtual {p0, v0, p1, v1}, Lcom/androidplot/xy/PanZoom;->calculatePan(Landroid/graphics/PointF;Lcom/androidplot/Region;Z)V

    .line 297
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p1

    sget-object v2, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p0, v1, p1, v2}, Lcom/androidplot/xy/PanZoom;->adjustDomainBoundary(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 299
    :cond_1
    sget-object p1, Lcom/androidplot/xy/PanZoom$Pan;->VERTICAL:Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v1, Lcom/androidplot/xy/PanZoom$Pan;->BOTH:Lcom/androidplot/xy/PanZoom$Pan;

    invoke-static {p1, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iget-object v1, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 300
    new-instance p1, Lcom/androidplot/Region;

    invoke-direct {p1}, Lcom/androidplot/Region;-><init>()V

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0, v0, p1, v1}, Lcom/androidplot/xy/PanZoom;->calculatePan(Landroid/graphics/PointF;Lcom/androidplot/Region;Z)V

    .line 302
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p1

    sget-object v1, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p0, v0, p1, v1}, Lcom/androidplot/xy/PanZoom;->adjustRangeBoundary(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p1}, Lcom/androidplot/xy/XYPlot;->redraw()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    .line 524
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PanZoom;->setFingersRect(Landroid/graphics/RectF;)V

    .line 525
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PanZoom;->setFingersRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setDelegate(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->delegate:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/androidplot/xy/PanZoom;->isEnabled:Z

    return-void
.end method

.method protected setFingersRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->fingersRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setPan(Lcom/androidplot/xy/PanZoom$Pan;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    return-void
.end method

.method public setState(Lcom/androidplot/xy/PanZoom$State;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->state:Lcom/androidplot/xy/PanZoom$State;

    .line 157
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p1, v0}, Lcom/androidplot/xy/PanZoom$State;->apply(Lcom/androidplot/xy/XYPlot;)V

    return-void
.end method

.method public setZoom(Lcom/androidplot/xy/PanZoom$Zoom;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    return-void
.end method

.method public setZoomLimit(Lcom/androidplot/xy/PanZoom$ZoomLimit;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->zoomLimit:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    return-void
.end method

.method protected zoom(Landroid/view/MotionEvent;)V
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->NONE:Lcom/androidplot/xy/PanZoom$Zoom;

    if-ne v0, v1, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 361
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/PanZoom;->fingerDistance(Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object p1

    .line 362
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/PanZoom;->setFingersRect(Landroid/graphics/RectF;)V

    if-eqz v0, :cond_d

    .line 363
    invoke-static {v0, p1}, Lcom/androidplot/util/RectFUtils;->areIdentical(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_3

    .line 367
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 371
    sget-object v1, Lcom/androidplot/xy/PanZoom$1;->$SwitchMap$com$androidplot$xy$PanZoom$Zoom:[I

    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-virtual {v2}, Lcom/androidplot/xy/PanZoom$Zoom;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_8

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 392
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 393
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    div-float v3, v0, v1

    .line 397
    invoke-virtual {p0, v3}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 385
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v3, v1, v3

    .line 386
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    .line 387
    invoke-virtual {p0, v3}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_6
    return-void

    .line 379
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    .line 380
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    .line 373
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 374
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    move v3, v0

    goto/16 :goto_0

    .line 403
    :cond_a
    :goto_2
    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_HORIZONTAL:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v4, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_BOTH:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v5, Lcom/androidplot/xy/PanZoom$Zoom;->SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-static {v1, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iget-object v4, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 406
    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 407
    invoke-virtual {p0, p1, v3, v2}, Lcom/androidplot/xy/PanZoom;->calculateZoom(Landroid/graphics/RectF;FZ)V

    .line 408
    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p0, v1, v2, v3}, Lcom/androidplot/xy/PanZoom;->adjustDomainBoundary(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 410
    :cond_b
    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_VERTICAL:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v2, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_BOTH:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v3, Lcom/androidplot/xy/PanZoom$Zoom;->SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 413
    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 414
    invoke-virtual {p0, p1, v0, v1}, Lcom/androidplot/xy/PanZoom;->calculateZoom(Landroid/graphics/RectF;FZ)V

    .line 415
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v1, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p0, v0, p1, v1}, Lcom/androidplot/xy/PanZoom;->adjustRangeBoundary(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 417
    :cond_c
    iget-object p1, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p1}, Lcom/androidplot/xy/XYPlot;->redraw()V

    :cond_d
    :goto_3
    return-void
.end method

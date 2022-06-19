.class public Lcom/androidplot/xy/XYStepCalculator;
.super Ljava/lang/Object;
.source "XYStepCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStep(Lcom/androidplot/xy/StepMode;DLcom/androidplot/Region;Lcom/androidplot/Region;)Lcom/androidplot/xy/Step;
    .locals 9

    .line 60
    sget-object v0, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$StepMode:[I

    invoke-virtual {p0}, Lcom/androidplot/xy/StepMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    move-wide v3, v1

    move-wide v5, v3

    move-wide v7, v5

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {p4}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, p1, v2

    div-double/2addr v0, v2

    .line 75
    invoke-virtual {p3, p4}, Lcom/androidplot/Region;->ratio(Lcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    mul-double p3, p3, v0

    move-wide v3, p1

    move-wide v7, p3

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p3, p4}, Lcom/androidplot/Region;->ratio(Lcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    mul-double v0, v0, p1

    .line 70
    invoke-virtual {p4}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    div-double/2addr p3, p1

    move-wide v5, p1

    move-wide v3, p3

    move-wide v7, v0

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p3, p4}, Lcom/androidplot/Region;->ratio(Lcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    div-double v0, p1, v0

    .line 65
    invoke-virtual {p4}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    div-double/2addr p3, v0

    move-wide v7, p1

    move-wide v3, p3

    :goto_0
    move-wide v5, v0

    .line 78
    :goto_1
    new-instance p0, Lcom/androidplot/xy/Step;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/androidplot/xy/Step;-><init>(DDD)V

    return-object p0
.end method

.method public static getStep(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/Axis;Landroid/graphics/RectF;)Lcom/androidplot/xy/Step;
    .locals 4

    .line 39
    sget-object v0, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$Axis:[I

    invoke-virtual {p1}, Lcom/androidplot/xy/Axis;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeStepMode()Lcom/androidplot/xy/StepMode;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeStepValue()D

    move-result-wide v0

    .line 49
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object p0

    new-instance v2, Lcom/androidplot/Region;

    iget v3, p2, Landroid/graphics/RectF;->top:F

    .line 50
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 47
    invoke-static {p1, v0, v1, p0, v2}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/StepMode;DLcom/androidplot/Region;Lcom/androidplot/Region;)Lcom/androidplot/xy/Step;

    move-result-object p0

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainStepMode()Lcom/androidplot/xy/StepMode;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainStepValue()D

    move-result-wide v0

    .line 43
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object p0

    new-instance v2, Lcom/androidplot/Region;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    .line 44
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 41
    invoke-static {p1, v0, v1, p0, v2}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/StepMode;DLcom/androidplot/Region;Lcom/androidplot/Region;)Lcom/androidplot/xy/Step;

    move-result-object p0

    :goto_0
    return-object p0
.end method

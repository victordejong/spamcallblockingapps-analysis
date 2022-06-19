.class public Lcom/androidplot/xy/ZoomEstimator;
.super Lcom/androidplot/xy/Estimator;
.source "ZoomEstimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/androidplot/xy/Estimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateZoom(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/RectRegion;)D
    .locals 3

    .line 19
    invoke-virtual {p1}, Lcom/androidplot/xy/SampledXYSeries;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/androidplot/Region;->ratio(Lcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 21
    invoke-virtual {p1}, Lcom/androidplot/xy/SampledXYSeries;->getMaxZoomFactor()D

    move-result-wide p1

    div-double/2addr p1, v0

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    long-to-double p1, p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide p1
.end method

.method public run(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/XYSeriesBundle;)V
    .locals 2

    .line 11
    invoke-virtual {p2}, Lcom/androidplot/xy/XYSeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v0

    instance-of v0, v0, Lcom/androidplot/xy/SampledXYSeries;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p2}, Lcom/androidplot/xy/XYSeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object p2

    check-cast p2, Lcom/androidplot/xy/SampledXYSeries;

    .line 13
    invoke-virtual {p1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/androidplot/xy/ZoomEstimator;->calculateZoom(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/RectRegion;)D

    move-result-wide v0

    .line 14
    invoke-virtual {p2, v0, v1}, Lcom/androidplot/xy/SampledXYSeries;->setZoomFactor(D)V

    :cond_0
    return-void
.end method

.class public Lcom/androidplot/util/PlotStatistics;
.super Ljava/lang/Object;
.source "PlotStatistics.java"

# interfaces
.implements Lcom/androidplot/PlotListener;


# instance fields
.field private annotatePlotEnabled:Z

.field annotationString:Ljava/lang/String;

.field lastAnnotation:J

.field lastLatency:J

.field lastStart:J

.field latencySamples:J

.field latencySum:J

.field longestRenderMs:J

.field private paint:Landroid/graphics/Paint;

.field shortestRenderMs:J

.field updateDelayMs:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    .line 35
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    .line 36
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastStart:J

    .line 37
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    .line 39
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    .line 40
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/androidplot/util/PlotStatistics;->annotationString:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/util/PlotStatistics;->paint:Landroid/graphics/Paint;

    .line 47
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 48
    iget-object v0, p0, Lcom/androidplot/util/PlotStatistics;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/androidplot/util/PlotStatistics;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    invoke-direct {p0}, Lcom/androidplot/util/PlotStatistics;->resetCounters()V

    .line 54
    iput-wide p1, p0, Lcom/androidplot/util/PlotStatistics;->updateDelayMs:J

    .line 55
    iput-boolean p3, p0, Lcom/androidplot/util/PlotStatistics;->annotatePlotEnabled:Z

    return-void
.end method

.method private annotatePlot(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 72
    iget-wide v3, v0, Lcom/androidplot/util/PlotStatistics;->lastAnnotation:J

    sub-long v3, v1, v3

    .line 73
    iget-wide v5, v0, Lcom/androidplot/util/PlotStatistics;->updateDelayMs:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    .line 75
    iget-wide v5, v0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-lez v10, :cond_0

    iget-wide v10, v0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    div-long/2addr v10, v5

    long-to-float v10, v10

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/high16 v13, 0x447a0000    # 1000.0f

    cmp-long v14, v5, v8

    if-lez v14, :cond_1

    long-to-float v3, v3

    div-float v3, v13, v3

    long-to-float v4, v5

    mul-float v3, v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 76
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v12, v4

    const-string v3, "%.2f"

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    .line 77
    iget-wide v11, v0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    cmp-long v14, v11, v8

    if-lez v14, :cond_2

    div-float v7, v13, v10

    :cond_2
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FPS (potential): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FPS (actual): "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Latency (ms) Avg: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " \nMin: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Max: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/androidplot/util/PlotStatistics;->annotationString:Ljava/lang/String;

    .line 80
    iput-wide v1, v0, Lcom/androidplot/util/PlotStatistics;->lastAnnotation:J

    .line 81
    invoke-direct {p0}, Lcom/androidplot/util/PlotStatistics;->resetCounters()V

    .line 83
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/androidplot/Plot;->getDisplayDimensions()Lcom/androidplot/util/DisplayDimensions;

    move-result-object v1

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    .line 84
    iget-boolean v2, v0, Lcom/androidplot/util/PlotStatistics;->annotatePlotEnabled:Z

    if-eqz v2, :cond_4

    .line 85
    iget-object v2, v0, Lcom/androidplot/util/PlotStatistics;->annotationString:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v4, v0, Lcom/androidplot/util/PlotStatistics;->paint:Landroid/graphics/Paint;

    move-object/from16 v5, p2

    invoke-virtual {v5, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private resetCounters()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    const-wide/32 v2, 0x3b9ac9ff

    .line 64
    iput-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    .line 65
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    .line 66
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    return-void
.end method


# virtual methods
.method public onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 5

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->lastStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    .line 97
    iget-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 98
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    .line 101
    :cond_0
    iget-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 102
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    .line 104
    :cond_1
    iget-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    .line 105
    iget-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/androidplot/util/PlotStatistics;->annotatePlot(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/androidplot/util/PlotStatistics;->lastStart:J

    return-void
.end method

.method public setAnnotatePlotEnabled(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/androidplot/util/PlotStatistics;->annotatePlotEnabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/androidplot/util/PlotStatistics;->annotatePlotEnabled:Z

    return-void
.end method

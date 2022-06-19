.class public Lcom/androidplot/xy/LineAndPointFormatter;
.super Lcom/androidplot/xy/XYSeriesFormatter;
.source "LineAndPointFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/XYSeriesFormatter<",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LINE_STROKE_WIDTH_DP:F = 1.5f

.field private static final DEFAULT_VERTEX_STROKE_WIDTH_DP:F = 4.5f


# instance fields
.field protected fillDirection:Lcom/androidplot/xy/FillDirection;

.field protected fillPaint:Landroid/graphics/Paint;

.field protected interpolationParams:Lcom/androidplot/xy/InterpolationParams;

.field protected linePaint:Landroid/graphics/Paint;

.field protected vertexPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/high16 v0, -0x10000

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, -0xff0100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/androidplot/xy/XYSeriesFormatter;-><init>(Landroid/content/Context;I)V

    .line 47
    sget-object p1, Lcom/androidplot/xy/FillDirection;->BOTTOM:Lcom/androidplot/xy/FillDirection;

    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillDirection:Lcom/androidplot/xy/FillDirection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V
    .locals 6

    .line 66
    sget-object v5, Lcom/androidplot/xy/FillDirection;->BOTTOM:Lcom/androidplot/xy/FillDirection;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;Lcom/androidplot/xy/FillDirection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;Lcom/androidplot/xy/FillDirection;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/androidplot/xy/XYSeriesFormatter;-><init>()V

    .line 47
    sget-object v0, Lcom/androidplot/xy/FillDirection;->BOTTOM:Lcom/androidplot/xy/FillDirection;

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillDirection:Lcom/androidplot/xy/FillDirection;

    .line 71
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/LineAndPointFormatter;->initLinePaint(Ljava/lang/Integer;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/LineAndPointFormatter;->initVertexPaint(Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/LineAndPointFormatter;->initFillPaint(Ljava/lang/Integer;)V

    .line 74
    invoke-virtual {p0, p5}, Lcom/androidplot/xy/LineAndPointFormatter;->setFillDirection(Lcom/androidplot/xy/FillDirection;)V

    .line 75
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/LineAndPointFormatter;->setPointLabelFormatter(Lcom/androidplot/xy/PointLabelFormatter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 0

    .line 29
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/LineAndPointFormatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object p1

    return-object p1
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .line 85
    new-instance v0, Lcom/androidplot/xy/LineAndPointRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/LineAndPointRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method

.method public getFillDirection()Lcom/androidplot/xy/FillDirection;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillDirection:Lcom/androidplot/xy/FillDirection;

    return-object v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/LineAndPointFormatter;->initFillPaint(Ljava/lang/Integer;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getInterpolationParams()Lcom/androidplot/xy/InterpolationParams;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->interpolationParams:Lcom/androidplot/xy/InterpolationParams;

    return-object v0
.end method

.method public getLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->linePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/LineAndPointFormatter;->initLinePaint(Ljava/lang/Integer;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->linePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRendererClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">;"
        }
    .end annotation

    .line 80
    const-class v0, Lcom/androidplot/xy/LineAndPointRenderer;

    return-object v0
.end method

.method public getVertexPaint()Landroid/graphics/Paint;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->vertexPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/LineAndPointFormatter;->initVertexPaint(Ljava/lang/Integer;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->vertexPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public hasFillPaint()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLinePaint()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->linePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVertexPaint()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->vertexPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initFillPaint(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method protected initLinePaint(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->linePaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->linePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method protected initVertexPaint(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->vertexPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->vertexPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->vertexPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40900000    # 4.5f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointFormatter;->vertexPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->vertexPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_0
    return-void
.end method

.method public setFillDirection(Lcom/androidplot/xy/FillDirection;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillDirection:Lcom/androidplot/xy/FillDirection;

    return-void
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->fillPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setInterpolationParams(Lcom/androidplot/xy/InterpolationParams;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->interpolationParams:Lcom/androidplot/xy/InterpolationParams;

    return-void
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->linePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setVertexPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointFormatter;->vertexPaint:Landroid/graphics/Paint;

    return-void
.end method

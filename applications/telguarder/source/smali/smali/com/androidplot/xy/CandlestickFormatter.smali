.class public Lcom/androidplot/xy/CandlestickFormatter;
.super Lcom/androidplot/xy/XYSeriesFormatter;
.source "CandlestickFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/XYSeriesFormatter<",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STROKE_PIX:F

.field private static final DEFAULT_WIDTH_PIX:F


# instance fields
.field private bodyStyle:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

.field private bodyWidth:F

.field private fallingBodyFillPaint:Landroid/graphics/Paint;

.field private fallingBodyStrokePaint:Landroid/graphics/Paint;

.field private lowerCapPaint:Landroid/graphics/Paint;

.field private lowerCapWidth:F

.field private risingBodyFillPaint:Landroid/graphics/Paint;

.field private risingBodyStrokePaint:Landroid/graphics/Paint;

.field private upperCapPaint:Landroid/graphics/Paint;

.field private upperCapWidth:F

.field private wickPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 31
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    sput v0, Lcom/androidplot/xy/CandlestickFormatter;->DEFAULT_WIDTH_PIX:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 32
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    sput v0, Lcom/androidplot/xy/CandlestickFormatter;->DEFAULT_STROKE_PIX:F

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v0, -0x100

    .line 75
    invoke-static {v0}, Lcom/androidplot/xy/CandlestickFormatter;->getDefaultStrokePaint(I)Landroid/graphics/Paint;

    move-result-object v2

    const v1, -0xff0100

    .line 76
    invoke-static {v1}, Lcom/androidplot/xy/CandlestickFormatter;->getDefaultFillPaint(I)Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v4, -0x10000

    .line 77
    invoke-static {v4}, Lcom/androidplot/xy/CandlestickFormatter;->getDefaultFillPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    .line 78
    invoke-static {v1}, Lcom/androidplot/xy/CandlestickFormatter;->getDefaultStrokePaint(I)Landroid/graphics/Paint;

    move-result-object v6

    .line 79
    invoke-static {v4}, Lcom/androidplot/xy/CandlestickFormatter;->getDefaultStrokePaint(I)Landroid/graphics/Paint;

    move-result-object v7

    .line 80
    invoke-static {v0}, Lcom/androidplot/xy/CandlestickFormatter;->getDefaultStrokePaint(I)Landroid/graphics/Paint;

    move-result-object v8

    .line 81
    invoke-static {v0}, Lcom/androidplot/xy/CandlestickFormatter;->getDefaultStrokePaint(I)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v9, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->SQUARE:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    move-object v1, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    .line 75
    invoke-direct/range {v1 .. v9}, Lcom/androidplot/xy/CandlestickFormatter;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/androidplot/xy/CandlestickFormatter;-><init>()V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/CandlestickFormatter;->configure(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/androidplot/xy/XYSeriesFormatter;-><init>()V

    .line 42
    sget v0, Lcom/androidplot/xy/CandlestickFormatter;->DEFAULT_WIDTH_PIX:F

    iput v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->bodyWidth:F

    .line 43
    iput v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->upperCapWidth:F

    .line 44
    iput v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->lowerCapWidth:F

    .line 88
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/CandlestickFormatter;->setWickPaint(Landroid/graphics/Paint;)V

    .line 89
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/CandlestickFormatter;->setRisingBodyFillPaint(Landroid/graphics/Paint;)V

    .line 90
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/CandlestickFormatter;->setFallingBodyFillPaint(Landroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/CandlestickFormatter;->setRisingBodyStrokePaint(Landroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p0, p5}, Lcom/androidplot/xy/CandlestickFormatter;->setFallingBodyStrokePaint(Landroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p0, p6}, Lcom/androidplot/xy/CandlestickFormatter;->setUpperCapPaint(Landroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p0, p7}, Lcom/androidplot/xy/CandlestickFormatter;->setLowerCapPaint(Landroid/graphics/Paint;)V

    .line 95
    invoke-virtual {p0, p8}, Lcom/androidplot/xy/CandlestickFormatter;->setBodyStyle(Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;)V

    return-void
.end method

.method protected static getDefaultFillPaint(I)Landroid/graphics/Paint;
    .locals 2

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 55
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method protected static getDefaultStrokePaint(I)Landroid/graphics/Paint;
    .locals 2

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 62
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    sget v1, Lcom/androidplot/xy/CandlestickFormatter;->DEFAULT_STROKE_PIX:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    .line 65
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 0

    .line 29
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/CandlestickFormatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object p1

    return-object p1
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .line 105
    new-instance v0, Lcom/androidplot/xy/CandlestickRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/CandlestickRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method

.method public getBodyStyle()Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->bodyStyle:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    return-object v0
.end method

.method public getBodyWidth()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->bodyWidth:F

    return v0
.end method

.method public getFallingBodyFillPaint()Landroid/graphics/Paint;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->fallingBodyFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getFallingBodyStrokePaint()Landroid/graphics/Paint;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->fallingBodyStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLowerCapPaint()Landroid/graphics/Paint;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->lowerCapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLowerCapWidth()F
    .locals 1

    .line 157
    iget v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->lowerCapWidth:F

    return v0
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

    .line 100
    const-class v0, Lcom/androidplot/xy/CandlestickRenderer;

    return-object v0
.end method

.method public getRisingBodyFillPaint()Landroid/graphics/Paint;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->risingBodyFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRisingBodyStrokePaint()Landroid/graphics/Paint;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->risingBodyStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUpperCapPaint()Landroid/graphics/Paint;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->upperCapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUpperCapWidth()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->upperCapWidth:F

    return v0
.end method

.method public getWickPaint()Landroid/graphics/Paint;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickFormatter;->wickPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setBodyStyle(Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->bodyStyle:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    return-void
.end method

.method public setBodyWidth(F)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->bodyWidth:F

    return-void
.end method

.method public setCapAndWickPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/CandlestickFormatter;->setUpperCapPaint(Landroid/graphics/Paint;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/CandlestickFormatter;->setLowerCapPaint(Landroid/graphics/Paint;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/CandlestickFormatter;->setWickPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setFallingBodyFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->fallingBodyFillPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setFallingBodyStrokePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->fallingBodyStrokePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setLowerCapPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->lowerCapPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setLowerCapWidth(F)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->lowerCapWidth:F

    return-void
.end method

.method public setRisingBodyFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->risingBodyFillPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setRisingBodyStrokePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->risingBodyStrokePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setUpperCapPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->upperCapPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setUpperCapWidth(F)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->upperCapWidth:F

    return-void
.end method

.method public setWickPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickFormatter;->wickPaint:Landroid/graphics/Paint;

    return-void
.end method

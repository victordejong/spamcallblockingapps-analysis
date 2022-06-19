.class public Lcom/androidplot/xy/BarFormatter;
.super Lcom/androidplot/xy/LineAndPointFormatter;
.source "BarFormatter.java"


# instance fields
.field private borderPaint:Landroid/graphics/Paint;

.field private fillPaint:Landroid/graphics/Paint;

.field private marginBottom:F

.field private marginLeft:F

.field private marginRight:F

.field private marginTop:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    .line 53
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    .line 56
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/androidplot/xy/BarFormatter;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object p1, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/androidplot/xy/BarFormatter;-><init>()V

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/BarFormatter;->configure(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 0

    .line 22
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/BarFormatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object p1

    return-object p1
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .line 78
    new-instance v0, Lcom/androidplot/xy/BarRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/BarRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getMarginBottom()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/androidplot/xy/BarFormatter;->marginBottom:F

    return v0
.end method

.method public getMarginLeft()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/androidplot/xy/BarFormatter;->marginLeft:F

    return v0
.end method

.method public getMarginRight()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/androidplot/xy/BarFormatter;->marginRight:F

    return v0
.end method

.method public getMarginTop()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/androidplot/xy/BarFormatter;->marginTop:F

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

    .line 73
    const-class v0, Lcom/androidplot/xy/BarRenderer;

    return-object v0
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/androidplot/xy/BarFormatter;->borderPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/androidplot/xy/BarFormatter;->fillPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setMarginBottom(F)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/androidplot/xy/BarFormatter;->marginBottom:F

    return-void
.end method

.method public setMarginLeft(F)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/androidplot/xy/BarFormatter;->marginLeft:F

    return-void
.end method

.method public setMarginRight(F)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/androidplot/xy/BarFormatter;->marginRight:F

    return-void
.end method

.method public setMarginTop(F)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/androidplot/xy/BarFormatter;->marginTop:F

    return-void
.end method

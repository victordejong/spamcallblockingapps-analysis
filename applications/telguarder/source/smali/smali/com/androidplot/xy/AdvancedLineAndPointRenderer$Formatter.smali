.class public Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;
.super Lcom/androidplot/xy/XYSeriesFormatter;
.source "AdvancedLineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/AdvancedLineAndPointRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Formatter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/XYSeriesFormatter<",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STROKE_WIDTH:I = 0x3


# instance fields
.field private linePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/androidplot/xy/XYSeriesFormatter;-><init>()V

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v0, p0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;-><init>()V

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->configure(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 0

    .line 83
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/xy/AdvancedLineAndPointRenderer;

    move-result-object p1

    return-object p1
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/xy/AdvancedLineAndPointRenderer;
    .locals 1

    .line 107
    new-instance v0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method

.method public getLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLinePaint(III)Landroid/graphics/Paint;
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
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

    .line 102
    const-class v0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;

    return-object v0
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    return-void
.end method

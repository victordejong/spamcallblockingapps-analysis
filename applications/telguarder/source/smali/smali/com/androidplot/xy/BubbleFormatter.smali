.class public Lcom/androidplot/xy/BubbleFormatter;
.super Lcom/androidplot/xy/XYSeriesFormatter;
.source "BubbleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/XYSeriesFormatter<",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILL_COLOR:I = -0x100

.field private static final DEFAULT_STROKE_COLOR:I = -0x1000000

.field private static final DEFAULT_STROKE_PIX:F = 1.0f


# instance fields
.field private fillPaint:Landroid/graphics/Paint;

.field private strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Lcom/androidplot/xy/XYSeriesFormatter;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->fillPaint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->fillPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    new-instance v0, Lcom/androidplot/xy/BubbleFormatter$1;

    invoke-direct {v0, p0}, Lcom/androidplot/xy/BubbleFormatter$1;-><init>(Lcom/androidplot/xy/BubbleFormatter;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/BubbleFormatter;->setPointLabeler(Lcom/androidplot/xy/PointLabeler;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/androidplot/xy/XYSeriesFormatter;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->fillPaint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->fillPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    new-instance v0, Lcom/androidplot/xy/BubbleFormatter$1;

    invoke-direct {v0, p0}, Lcom/androidplot/xy/BubbleFormatter$1;-><init>(Lcom/androidplot/xy/BubbleFormatter;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/BubbleFormatter;->setPointLabeler(Lcom/androidplot/xy/PointLabeler;)V

    .line 68
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/androidplot/xy/BubbleFormatter;-><init>()V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/BubbleFormatter;->configure(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 0

    .line 30
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/BubbleFormatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/xy/BubbleRenderer;

    move-result-object p1

    return-object p1
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/xy/BubbleRenderer;
    .locals 1

    .line 79
    new-instance v0, Lcom/androidplot/xy/BubbleRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/BubbleRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->fillPaint:Landroid/graphics/Paint;

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

    .line 74
    const-class v0, Lcom/androidplot/xy/BubbleRenderer;

    return-object v0
.end method

.method public getStrokePaint()Landroid/graphics/Paint;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/androidplot/xy/BubbleFormatter;->fillPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setStrokePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/androidplot/xy/BubbleFormatter;->strokePaint:Landroid/graphics/Paint;

    return-void
.end method

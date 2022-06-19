.class public Lcom/androidplot/xy/BarRenderer$Bar;
.super Ljava/lang/Object;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/BarFormatter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

.field public final formatter:Lcom/androidplot/xy/BarFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFormatterType;"
        }
    .end annotation
.end field

.field public final i:I

.field public final series:Lcom/androidplot/xy/XYSeries;

.field public final seriesOrder:I

.field public final xPix:F

.field public final yPix:F


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/BarFormatter;IILandroid/graphics/RectF;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYPlot;",
            "Lcom/androidplot/xy/XYSeries;",
            "TFormatterType;II",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    .line 301
    iput-object p3, p0, Lcom/androidplot/xy/BarRenderer$Bar;->formatter:Lcom/androidplot/xy/BarFormatter;

    .line 302
    iput p5, p0, Lcom/androidplot/xy/BarRenderer$Bar;->i:I

    .line 303
    iput p4, p0, Lcom/androidplot/xy/BarRenderer$Bar;->seriesOrder:I

    .line 305
    invoke-interface {p2, p5}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 306
    invoke-virtual {p1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v0

    iget p3, p6, Landroid/graphics/RectF;->left:F

    float-to-double v3, p3

    iget p3, p6, Landroid/graphics/RectF;->right:F

    float-to-double v5, p3

    const/4 v7, 0x0

    .line 307
    invoke-virtual/range {v0 .. v7}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide p3

    double-to-float p3, p3

    iput p3, p0, Lcom/androidplot/xy/BarRenderer$Bar;->xPix:F

    .line 309
    invoke-interface {p2, p5}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 310
    invoke-interface {p2, p5}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 311
    invoke-virtual {p1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p1

    iget-object v0, p1, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    iget p1, p6, Landroid/graphics/RectF;->top:F

    float-to-double v3, p1

    iget p1, p6, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, p1

    const/4 v7, 0x1

    .line 312
    invoke-virtual/range {v0 .. v7}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 314
    iput p1, p0, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    :goto_0
    return-void
.end method


# virtual methods
.method public getY()Ljava/lang/Number;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    iget v1, p0, Lcom/androidplot/xy/BarRenderer$Bar;->i:I

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

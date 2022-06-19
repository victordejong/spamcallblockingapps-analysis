.class public Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;
.super Lcom/androidplot/xy/LineAndPointFormatter;
.source "FastLineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/FastLineAndPointRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Formatter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 0

    .line 145
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object p1

    return-object p1
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1

    .line 166
    new-instance v0, Lcom/androidplot/xy/FastLineAndPointRenderer;

    invoke-direct {v0, p1}, Lcom/androidplot/xy/FastLineAndPointRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

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

    .line 161
    const-class v0, Lcom/androidplot/xy/FastLineAndPointRenderer;

    return-object v0
.end method

.method protected initLinePaint(Ljava/lang/Integer;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/androidplot/xy/LineAndPointFormatter;->initLinePaint(Ljava/lang/Integer;)V

    .line 156
    invoke-virtual {p0}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

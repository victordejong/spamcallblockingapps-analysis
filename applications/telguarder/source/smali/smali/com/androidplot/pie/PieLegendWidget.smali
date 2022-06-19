.class public Lcom/androidplot/pie/PieLegendWidget;
.super Lcom/androidplot/ui/widget/LegendWidget;
.source "PieLegendWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/widget/LegendWidget<",
        "Lcom/androidplot/pie/PieLegendItem;",
        ">;"
    }
.end annotation


# instance fields
.field private pieChart:Lcom/androidplot/pie/PieChart;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/pie/PieChart;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/Size;)V
    .locals 0

    .line 24
    invoke-direct {p0, p4, p1, p3, p5}, Lcom/androidplot/ui/widget/LegendWidget;-><init>(Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/Size;)V

    .line 25
    iput-object p2, p0, Lcom/androidplot/pie/PieLegendWidget;->pieChart:Lcom/androidplot/pie/PieChart;

    return-void
.end method


# virtual methods
.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/PieLegendItem;)V
    .locals 0

    .line 30
    iget-object p3, p3, Lcom/androidplot/pie/PieLegendItem;->formatter:Lcom/androidplot/pie/SegmentFormatter;

    invoke-virtual {p3}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected bridge synthetic drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/widget/LegendItem;)V
    .locals 0

    .line 16
    check-cast p3, Lcom/androidplot/pie/PieLegendItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/pie/PieLegendWidget;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/PieLegendItem;)V

    return-void
.end method

.method protected getLegendItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/androidplot/pie/PieLegendItem;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/androidplot/pie/PieLegendWidget;->pieChart:Lcom/androidplot/pie/PieChart;

    invoke-virtual {v1}, Lcom/androidplot/pie/PieChart;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    check-cast v1, Lcom/androidplot/pie/SegmentRegistry;

    invoke-virtual {v1}, Lcom/androidplot/pie/SegmentRegistry;->getLegendEnabledItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/SeriesBundle;

    .line 37
    new-instance v3, Lcom/androidplot/pie/PieLegendItem;

    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v4

    check-cast v4, Lcom/androidplot/pie/Segment;

    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v2

    check-cast v2, Lcom/androidplot/pie/SegmentFormatter;

    invoke-direct {v3, v4, v2}, Lcom/androidplot/pie/PieLegendItem;-><init>(Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.class public Lcom/androidplot/xy/XYLegendWidget;
.super Lcom/androidplot/ui/widget/LegendWidget;
.source "XYLegendWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/widget/LegendWidget<",
        "Lcom/androidplot/xy/XYLegendItem;",
        ">;"
    }
.end annotation


# instance fields
.field private plot:Lcom/androidplot/xy/XYPlot;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/Size;)V
    .locals 0

    .line 45
    invoke-direct {p0, p4, p1, p3, p5}, Lcom/androidplot/ui/widget/LegendWidget;-><init>(Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/Size;)V

    .line 46
    iput-object p2, p0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 49
    new-instance p1, Lcom/androidplot/xy/XYLegendWidget$1;

    invoke-direct {p1, p0}, Lcom/androidplot/xy/XYLegendWidget$1;-><init>(Lcom/androidplot/xy/XYLegendWidget;)V

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYLegendWidget;->setLegendItemComparator(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/widget/LegendItem;)V
    .locals 0

    .line 37
    check-cast p3, Lcom/androidplot/xy/XYLegendItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/XYLegendWidget;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYLegendItem;)V

    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYLegendItem;)V
    .locals 2

    .line 67
    sget-object v0, Lcom/androidplot/xy/XYLegendWidget$2;->$SwitchMap$com$androidplot$xy$XYLegendItem$Type:[I

    iget-object v1, p3, Lcom/androidplot/xy/XYLegendItem;->type:Lcom/androidplot/xy/XYLegendItem$Type;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYLegendItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 72
    iget-object p3, p3, Lcom/androidplot/xy/XYLegendItem;->item:Ljava/lang/Object;

    check-cast p3, Lcom/androidplot/xy/XYSeriesFormatter;

    .line 73
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p3}, Lcom/androidplot/xy/XYSeriesFormatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeriesRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/androidplot/xy/XYSeriesRenderer;->drawSeriesLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected item type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/androidplot/xy/XYLegendItem;->type:Lcom/androidplot/xy/XYLegendItem$Type;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    iget-object p3, p3, Lcom/androidplot/xy/XYLegendItem;->item:Ljava/lang/Object;

    check-cast p3, Lcom/androidplot/xy/XYRegionFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/XYLegendWidget;->drawRegionLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYRegionFormatter;)V

    :goto_0
    return-void
.end method

.method protected drawRegionLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYRegionFormatter;)V
    .locals 0

    .line 62
    invoke-virtual {p3}, Lcom/androidplot/xy/XYRegionFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getLegendItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/XYLegendItem;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYSeriesRegistry;->getLegendEnabledItems()Ljava/util/List;

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

    .line 84
    new-instance v3, Lcom/androidplot/xy/XYLegendItem;

    sget-object v4, Lcom/androidplot/xy/XYLegendItem$Type;->SERIES:Lcom/androidplot/xy/XYLegendItem$Type;

    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeries;

    invoke-interface {v2}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/androidplot/xy/XYLegendItem;-><init>(Lcom/androidplot/xy/XYLegendItem$Type;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/XYLegendWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getRendererList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesRenderer;

    .line 88
    invoke-virtual {v2}, Lcom/androidplot/xy/XYSeriesRenderer;->getUniqueRegionFormatters()Ljava/util/Hashtable;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 90
    new-instance v4, Lcom/androidplot/xy/XYLegendItem;

    sget-object v5, Lcom/androidplot/xy/XYLegendItem$Type;->REGION:Lcom/androidplot/xy/XYLegendItem$Type;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/androidplot/xy/XYLegendItem;-><init>(Lcom/androidplot/xy/XYLegendItem$Type;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

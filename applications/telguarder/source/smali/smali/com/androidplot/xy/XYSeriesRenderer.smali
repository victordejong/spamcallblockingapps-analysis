.class public abstract Lcom/androidplot/xy/XYSeriesRenderer;
.super Lcom/androidplot/ui/SeriesRenderer;
.source "XYSeriesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/xy/XYSeries;",
        "XYFormatterType:",
        "Lcom/androidplot/xy/XYSeriesFormatter;",
        ">",
        "Lcom/androidplot/ui/SeriesRenderer<",
        "Lcom/androidplot/xy/XYPlot;",
        "TSeriesType;TXYFormatterType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/androidplot/ui/SeriesRenderer;-><init>(Lcom/androidplot/Plot;)V

    return-void
.end method


# virtual methods
.method public getUniqueRegionFormatters()Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Lcom/androidplot/xy/XYRegionFormatter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/androidplot/xy/XYSeriesRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/SeriesBundle;

    .line 44
    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYSeriesFormatter;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYSeriesFormatter;->getRegions()Lcom/androidplot/util/Layerable;

    move-result-object v3

    .line 45
    invoke-interface {v3}, Lcom/androidplot/util/Layerable;->elements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/RectRegion;

    .line 46
    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v5

    check-cast v5, Lcom/androidplot/xy/XYSeriesFormatter;

    invoke-virtual {v5, v4}, Lcom/androidplot/xy/XYSeriesFormatter;->getRegionFormatter(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYRegionFormatter;

    move-result-object v5

    .line 47
    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

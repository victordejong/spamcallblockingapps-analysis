.class public abstract Lcom/androidplot/ui/SeriesRenderer;
.super Ljava/lang/Object;
.source "SeriesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlotType:",
        "Lcom/androidplot/Plot;",
        "SeriesType::",
        "Lcom/androidplot/Series;",
        "SeriesFormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private plot:Lcom/androidplot/Plot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPlotType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/Plot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPlotType;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/androidplot/ui/SeriesRenderer;->plot:Lcom/androidplot/Plot;

    return-void
.end method


# virtual methods
.method protected abstract doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TSeriesFormatterType;)V"
        }
    .end annotation
.end method

.method public drawSeriesLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TSeriesFormatterType;)V"
        }
    .end annotation

    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 82
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/ui/SeriesRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 86
    throw p2
.end method

.method public getFormatter(Lcom/androidplot/Series;)Lcom/androidplot/ui/Formatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)TSeriesFormatterType;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/androidplot/ui/SeriesRenderer;->plot:Lcom/androidplot/Plot;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/androidplot/Plot;->getFormatter(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/Formatter;

    move-result-object p1

    return-object p1
.end method

.method public getPlot()Lcom/androidplot/Plot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPlotType;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/androidplot/ui/SeriesRenderer;->plot:Lcom/androidplot/Plot;

    return-object v0
.end method

.method public getSeriesAndFormatterList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/androidplot/ui/SeriesBundle<",
            "TSeriesType;+TSeriesFormatterType;>;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/androidplot/ui/SeriesRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/SeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/SeriesBundle;

    .line 98
    invoke-virtual {v2, p0}, Lcom/androidplot/ui/SeriesBundle;->rendersWith(Lcom/androidplot/ui/SeriesRenderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSeriesList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TSeriesType;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/androidplot/ui/SeriesRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/SeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/SeriesBundle;

    .line 115
    invoke-virtual {v2, p0}, Lcom/androidplot/ui/SeriesBundle;->rendersWith(Lcom/androidplot/ui/SeriesRenderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected abstract onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TSeriesType;TSeriesFormatterType;",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation
.end method

.method public render(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/SeriesBundle;Lcom/androidplot/ui/RenderStack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lcom/androidplot/ui/SeriesBundle<",
            "TSeriesType;TSeriesFormatterType;>;",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-virtual {p3}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v3

    invoke-virtual {p3}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/SeriesRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method public setPlot(Lcom/androidplot/Plot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPlotType;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/androidplot/ui/SeriesRenderer;->plot:Lcom/androidplot/Plot;

    return-void
.end method

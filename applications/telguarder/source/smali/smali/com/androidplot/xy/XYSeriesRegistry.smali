.class public Lcom/androidplot/xy/XYSeriesRegistry;
.super Lcom/androidplot/SeriesRegistry;
.source "XYSeriesRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/SeriesRegistry<",
        "Lcom/androidplot/xy/XYSeriesBundle;",
        "Lcom/androidplot/xy/XYSeries;",
        "Lcom/androidplot/xy/XYSeriesFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field private estimator:Lcom/androidplot/xy/Estimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/androidplot/SeriesRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public estimate(Lcom/androidplot/xy/XYPlot;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesRegistry;->estimator:Lcom/androidplot/xy/Estimator;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/androidplot/xy/XYSeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeriesBundle;

    .line 15
    invoke-virtual {p0}, Lcom/androidplot/xy/XYSeriesRegistry;->getEstimator()Lcom/androidplot/xy/Estimator;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/androidplot/xy/Estimator;->run(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/XYSeriesBundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEstimator()Lcom/androidplot/xy/Estimator;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesRegistry;->estimator:Lcom/androidplot/xy/Estimator;

    return-object v0
.end method

.method protected bridge synthetic newSeriesBundle(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Lcom/androidplot/ui/SeriesBundle;
    .locals 0

    .line 8
    check-cast p1, Lcom/androidplot/xy/XYSeries;

    check-cast p2, Lcom/androidplot/xy/XYSeriesFormatter;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/XYSeriesRegistry;->newSeriesBundle(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;)Lcom/androidplot/xy/XYSeriesBundle;

    move-result-object p1

    return-object p1
.end method

.method protected newSeriesBundle(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;)Lcom/androidplot/xy/XYSeriesBundle;
    .locals 1

    .line 22
    new-instance v0, Lcom/androidplot/xy/XYSeriesBundle;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/xy/XYSeriesBundle;-><init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;)V

    return-object v0
.end method

.method public setEstimator(Lcom/androidplot/xy/Estimator;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/androidplot/xy/XYSeriesRegistry;->estimator:Lcom/androidplot/xy/Estimator;

    return-void
.end method

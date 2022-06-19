.class public abstract Lcom/androidplot/xy/GroupRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "GroupRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/XYSeriesFormatter<",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        ">;>",
        "Lcom/androidplot/xy/XYSeriesRenderer<",
        "Lcom/androidplot/xy/XYSeries;",
        "TFormatterType;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.androidplot.xy.GroupRenderer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 0

    .line 33
    check-cast p3, Lcom/androidplot/xy/XYSeries;

    check-cast p4, Lcom/androidplot/xy/XYSeriesFormatter;

    invoke-virtual/range {p0 .. p5}, Lcom/androidplot/xy/GroupRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method protected onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lcom/androidplot/xy/XYSeries;",
            "TFormatterType;",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/androidplot/xy/GroupRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 55
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {p3}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object p3

    check-cast p3, Lcom/androidplot/xy/XYSeries;

    invoke-interface {p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v4

    const/4 p3, 0x1

    .line 58
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 59
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {p4}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object p4

    check-cast p4, Lcom/androidplot/xy/XYSeries;

    invoke-interface {p4}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result p4

    if-eq p4, v4, :cond_1

    .line 61
    sget-object p1, Lcom/androidplot/xy/GroupRenderer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": not all associated series are of same size."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/androidplot/ui/RenderStack;->disable(Ljava/lang/Class;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/GroupRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/util/List;ILcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method public abstract onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/util/List;ILcom/androidplot/ui/RenderStack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Lcom/androidplot/ui/SeriesBundle<",
            "Lcom/androidplot/xy/XYSeries;",
            "+TFormatterType;>;>;I",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation
.end method

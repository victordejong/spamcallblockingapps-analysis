.class public abstract Lcom/androidplot/xy/CandlestickMaker;
.super Ljava/lang/Object;
.source "CandlestickMaker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Lcom/androidplot/xy/CandlestickSeries;)V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/androidplot/xy/CandlestickSeries;->getOpenSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/CandlestickSeries;->getCloseSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidplot/xy/CandlestickSeries;->getHighSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v2

    invoke-virtual {p0}, Lcom/androidplot/xy/CandlestickSeries;->getLowSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/androidplot/xy/CandlestickMaker;->check(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;)V

    return-void
.end method

.method public static check(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;)V
    .locals 3

    .line 72
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    invoke-interface {p2, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 80
    invoke-interface {p3, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 81
    invoke-interface {p0, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 82
    invoke-interface {p1, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static make(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/CandlestickFormatter;Lcom/androidplot/xy/CandlestickSeries;)V
    .locals 6

    .line 48
    invoke-virtual {p2}, Lcom/androidplot/xy/CandlestickSeries;->getOpenSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v2

    invoke-virtual {p2}, Lcom/androidplot/xy/CandlestickSeries;->getCloseSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v3

    .line 49
    invoke-virtual {p2}, Lcom/androidplot/xy/CandlestickSeries;->getHighSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v4

    invoke-virtual {p2}, Lcom/androidplot/xy/CandlestickSeries;->getLowSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/androidplot/xy/CandlestickMaker;->make(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/CandlestickFormatter;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;)V

    return-void
.end method

.method public static make(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/CandlestickFormatter;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/androidplot/xy/XYSeries;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 p4, 0x1

    aput-object p5, v0, p4

    const/4 p4, 0x2

    aput-object p2, v0, p4

    const/4 p2, 0x3

    aput-object p3, v0, p2

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/ui/Formatter;[Lcom/androidplot/Series;)Z

    return-void
.end method

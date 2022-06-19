.class public Lcom/androidplot/xy/XYSeriesBundle;
.super Lcom/androidplot/ui/SeriesBundle;
.source "XYSeriesBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/SeriesBundle<",
        "Lcom/androidplot/xy/XYSeries;",
        "Lcom/androidplot/xy/XYSeriesFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeriesFormatter;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/SeriesBundle;-><init>(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V

    return-void
.end method

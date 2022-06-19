.class public Lcom/androidplot/pie/SegmentBundle;
.super Lcom/androidplot/ui/SeriesBundle;
.source "SegmentBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/SeriesBundle<",
        "Lcom/androidplot/pie/Segment;",
        "Lcom/androidplot/pie/SegmentFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/SeriesBundle;-><init>(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V

    return-void
.end method

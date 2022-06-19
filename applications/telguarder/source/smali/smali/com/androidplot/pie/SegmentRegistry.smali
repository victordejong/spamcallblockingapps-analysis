.class public Lcom/androidplot/pie/SegmentRegistry;
.super Lcom/androidplot/SeriesRegistry;
.source "SegmentRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/SeriesRegistry<",
        "Lcom/androidplot/pie/SegmentBundle;",
        "Lcom/androidplot/pie/Segment;",
        "Lcom/androidplot/pie/SegmentFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/androidplot/SeriesRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method protected newSeriesBundle(Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)Lcom/androidplot/pie/SegmentBundle;
    .locals 1

    .line 12
    new-instance v0, Lcom/androidplot/pie/SegmentBundle;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/pie/SegmentBundle;-><init>(Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V

    return-object v0
.end method

.method protected bridge synthetic newSeriesBundle(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Lcom/androidplot/ui/SeriesBundle;
    .locals 0

    .line 8
    check-cast p1, Lcom/androidplot/pie/Segment;

    check-cast p2, Lcom/androidplot/pie/SegmentFormatter;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/pie/SegmentRegistry;->newSeriesBundle(Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)Lcom/androidplot/pie/SegmentBundle;

    move-result-object p1

    return-object p1
.end method

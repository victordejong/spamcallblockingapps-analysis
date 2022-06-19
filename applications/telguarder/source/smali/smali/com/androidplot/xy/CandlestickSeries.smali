.class public Lcom/androidplot/xy/CandlestickSeries;
.super Ljava/lang/Object;
.source "CandlestickSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/CandlestickSeries$Item;
    }
.end annotation


# instance fields
.field private closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

.field private highSeries:Lcom/androidplot/xy/SimpleXYSeries;

.field private lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

.field private openSeries:Lcom/androidplot/xy/SimpleXYSeries;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/CandlestickSeries$Item;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/androidplot/xy/CandlestickSeries;->generateRange(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/androidplot/xy/CandlestickSeries;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/CandlestickSeries$Item;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->highSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 35
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v0, v1}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 36
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v0, v1}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->openSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 37
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v0, v1}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 67
    iget-object v2, p0, Lcom/androidplot/xy/CandlestickSeries;->highSeries:Lcom/androidplot/xy/SimpleXYSeries;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/CandlestickSeries$Item;

    invoke-virtual {v3}, Lcom/androidplot/xy/CandlestickSeries$Item;->getHigh()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/androidplot/xy/SimpleXYSeries;->addLast(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 68
    iget-object v2, p0, Lcom/androidplot/xy/CandlestickSeries;->lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/CandlestickSeries$Item;

    invoke-virtual {v3}, Lcom/androidplot/xy/CandlestickSeries$Item;->getLow()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/androidplot/xy/SimpleXYSeries;->addLast(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 69
    iget-object v2, p0, Lcom/androidplot/xy/CandlestickSeries;->openSeries:Lcom/androidplot/xy/SimpleXYSeries;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/CandlestickSeries$Item;

    invoke-virtual {v3}, Lcom/androidplot/xy/CandlestickSeries$Item;->getOpen()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/androidplot/xy/SimpleXYSeries;->addLast(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 70
    iget-object v2, p0, Lcom/androidplot/xy/CandlestickSeries;->closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/CandlestickSeries$Item;

    invoke-virtual {v3}, Lcom/androidplot/xy/CandlestickSeries$Item;->getClose()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/androidplot/xy/SimpleXYSeries;->addLast(Ljava/lang/Number;Ljava/lang/Number;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "xVals and yVals length must be identical."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([Lcom/androidplot/xy/CandlestickSeries$Item;)V
    .locals 0

    .line 48
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androidplot/xy/CandlestickSeries;-><init>(Ljava/util/List;)V

    return-void
.end method

.method protected static generateRange(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    sub-int v1, p1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge p0, p1, :cond_0

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCloseSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-object v0
.end method

.method public getHighSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->highSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-object v0
.end method

.method public getLowSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-object v0
.end method

.method public getOpenSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->openSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-object v0
.end method

.method public setCloseSeries(Lcom/androidplot/xy/SimpleXYSeries;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickSeries;->closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-void
.end method

.method public setHighSeries(Lcom/androidplot/xy/SimpleXYSeries;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickSeries;->highSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-void
.end method

.method public setLowSeries(Lcom/androidplot/xy/SimpleXYSeries;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickSeries;->lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-void
.end method

.method public setOpenSeries(Lcom/androidplot/xy/SimpleXYSeries;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickSeries;->openSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-void
.end method

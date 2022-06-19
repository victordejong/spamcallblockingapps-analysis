.class public Lcom/androidplot/xy/NormedXYSeries;
.super Ljava/lang/Object;
.source "NormedXYSeries.java"

# interfaces
.implements Lcom/androidplot/xy/XYSeries;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/NormedXYSeries$Norm;
    }
.end annotation


# instance fields
.field private minMaxX:Lcom/androidplot/Region;

.field private minMaxY:Lcom/androidplot/Region;

.field private rawData:Lcom/androidplot/xy/XYSeries;

.field private transformX:Lcom/androidplot/Region;

.field private transformY:Lcom/androidplot/Region;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYSeries;)V
    .locals 5

    .line 59
    new-instance v0, Lcom/androidplot/xy/NormedXYSeries$Norm;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/androidplot/xy/NormedXYSeries$Norm;-><init>(Lcom/androidplot/Region;DZ)V

    invoke-direct {p0, p1, v1, v0}, Lcom/androidplot/xy/NormedXYSeries;-><init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/NormedXYSeries$Norm;Lcom/androidplot/xy/NormedXYSeries$Norm;)V

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/NormedXYSeries$Norm;Lcom/androidplot/xy/NormedXYSeries$Norm;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    .line 70
    invoke-virtual {p0, p2, p3}, Lcom/androidplot/xy/NormedXYSeries;->normalize(Lcom/androidplot/xy/NormedXYSeries$Norm;Lcom/androidplot/xy/NormedXYSeries$Norm;)V

    return-void
.end method


# virtual methods
.method protected calculateTransform(Lcom/androidplot/xy/NormedXYSeries$Norm;)Lcom/androidplot/Region;
    .locals 9

    .line 86
    iget-boolean v0, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->useOffsetCompression:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    .line 87
    new-instance v0, Lcom/androidplot/Region;

    iget-wide v5, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    cmpl-double v7, v5, v3

    if-lez v7, :cond_0

    iget-wide v5, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 88
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    cmpg-double v8, v6, v3

    if-gez v8, :cond_1

    iget-wide v3, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    add-double/2addr v1, v3

    .line 89
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v5, p1}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    return-object v0

    .line 91
    :cond_2
    new-instance v0, Lcom/androidplot/Region;

    iget-wide v5, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    add-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    return-object v0
.end method

.method public denormalizeXVal(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 3

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->transformX:Lcom/androidplot/Region;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object p1, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxX:Lcom/androidplot/Region;

    invoke-virtual {v0, v1, v2, p1}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public denormalizeYVal(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 3

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->transformY:Lcom/androidplot/Region;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object p1, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxY:Lcom/androidplot/Region;

    invoke-virtual {v0, v1, v2, p1}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0, p1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->transformX:Lcom/androidplot/Region;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxX:Lcom/androidplot/Region;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object p1, p0, Lcom/androidplot/xy/NormedXYSeries;->transformX:Lcom/androidplot/Region;

    invoke-virtual {v0, v1, v2, p1}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0, p1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->transformY:Lcom/androidplot/Region;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxY:Lcom/androidplot/Region;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object p1, p0, Lcom/androidplot/xy/NormedXYSeries;->transformY:Lcom/androidplot/Region;

    invoke-virtual {v0, v1, v2, p1}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected normalize(Lcom/androidplot/xy/NormedXYSeries$Norm;Lcom/androidplot/xy/NormedXYSeries$Norm;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 75
    iget-object v2, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    goto :goto_0

    :cond_0
    new-array v2, v1, [Lcom/androidplot/xy/XYSeries;

    iget-object v3, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/androidplot/util/SeriesUtils;->minMaxX([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/Region;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxX:Lcom/androidplot/Region;

    .line 76
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/NormedXYSeries;->calculateTransform(Lcom/androidplot/xy/NormedXYSeries$Norm;)Lcom/androidplot/Region;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/xy/NormedXYSeries;->transformX:Lcom/androidplot/Region;

    :cond_1
    if-eqz p2, :cond_3

    .line 80
    iget-object p1, p2, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    goto :goto_1

    :cond_2
    new-array p1, v1, [Lcom/androidplot/xy/XYSeries;

    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/androidplot/util/SeriesUtils;->minMaxY([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/Region;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxY:Lcom/androidplot/Region;

    .line 81
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/NormedXYSeries;->calculateTransform(Lcom/androidplot/xy/NormedXYSeries$Norm;)Lcom/androidplot/Region;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/xy/NormedXYSeries;->transformY:Lcom/androidplot/Region;

    :cond_3
    return-void
.end method

.method public size()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    return v0
.end method

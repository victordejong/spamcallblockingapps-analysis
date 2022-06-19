.class public Lcom/androidplot/util/SeriesUtils;
.super Ljava/lang/Object;
.source "SeriesUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getNullRegion(Lcom/androidplot/xy/XYSeries;I)Lcom/androidplot/Region;
    .locals 3

    .line 230
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 231
    invoke-interface {p0, p1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v1

    if-nez v1, :cond_3

    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 235
    invoke-interface {p0, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 242
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 243
    invoke-interface {p0, p1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    :cond_2
    return-object v0

    .line 232
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to find null region for non null index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getXYOrder(Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/OrderedXYSeries$XOrder;
    .locals 1

    .line 268
    instance-of v0, p0, Lcom/androidplot/xy/OrderedXYSeries;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/androidplot/xy/OrderedXYSeries;

    .line 269
    invoke-interface {p0}, Lcom/androidplot/xy/OrderedXYSeries;->getXOrder()Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->NONE:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    :goto_0
    return-object p0
.end method

.method public static iBounds(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/Region;
    .locals 4

    .line 137
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 138
    :goto_0
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lcom/androidplot/util/SeriesUtils;->iBoundsMin(Lcom/androidplot/xy/XYSeries;DF)I

    move-result v1

    .line 139
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lcom/androidplot/util/SeriesUtils;->iBoundsMax(Lcom/androidplot/xy/XYSeries;DF)I

    move-result p0

    .line 140
    new-instance p1, Lcom/androidplot/Region;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    return-object p1
.end method

.method protected static iBoundsMax(Lcom/androidplot/xy/XYSeries;DF)I
    .locals 7

    .line 154
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 155
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, p3

    float-to-double v2, v2

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    :goto_0
    if-ltz v2, :cond_4

    float-to-int v3, p3

    mul-int v3, v3, v2

    const/4 v4, 0x0

    :goto_1
    int-to-float v5, v4

    cmpg-float v5, v5, p3

    if-gez v5, :cond_3

    add-int v5, v3, v4

    if-ge v5, v1, :cond_2

    .line 162
    invoke-interface {p0, v5}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 164
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpl-double v6, v3, p1

    if-lez v6, :cond_0

    move v0, v5

    goto :goto_2

    :cond_0
    if-nez v6, :cond_1

    return v5

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method protected static iBoundsMin(Lcom/androidplot/xy/XYSeries;DF)I
    .locals 9

    .line 194
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v0, :cond_5

    float-to-int v4, p3

    mul-int v4, v4, v3

    const/4 v5, 0x1

    :goto_1
    int-to-float v6, v5

    cmpg-float v6, v6, p3

    if-gtz v6, :cond_4

    sub-int v6, v4, v5

    if-gez v6, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 203
    invoke-interface {p0, v6}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 205
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v8, v4, p1

    if-gez v8, :cond_1

    move v2, v6

    goto :goto_2

    .line 210
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    cmpl-double p0, v0, p1

    if-nez p0, :cond_2

    return v6

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public static varargs minMax(Lcom/androidplot/Region;[Ljava/util/List;)Lcom/androidplot/Region;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/Region;",
            "[",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/androidplot/Region;"
        }
    .end annotation

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 123
    invoke-virtual {p0, v3}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static varargs minMax([Ljava/util/List;)Lcom/androidplot/Region;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/androidplot/Region;"
        }
    .end annotation

    .line 258
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    invoke-static {v0, p0}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/Region;[Ljava/util/List;)Lcom/androidplot/Region;

    move-result-object p0

    return-object p0
.end method

.method public static minMax(Lcom/androidplot/xy/XYConstraints;Ljava/util/List;)Lcom/androidplot/xy/RectRegion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYConstraints;",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/XYSeries;",
            ">;)",
            "Lcom/androidplot/xy/RectRegion;"
        }
    .end annotation

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/androidplot/xy/XYSeries;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/androidplot/xy/XYSeries;

    invoke-static {p0, p1}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/xy/XYConstraints;[Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/RectRegion;

    move-result-object p0

    return-object p0
.end method

.method public static varargs minMax(Lcom/androidplot/xy/XYConstraints;[Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/RectRegion;
    .locals 9

    .line 79
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    if-eqz p1, :cond_6

    .line 82
    array-length v1, p1

    if-lez v1, :cond_6

    .line 85
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    .line 88
    instance-of v5, v4, Lcom/androidplot/xy/FastXYSeries;

    if-eqz v5, :cond_2

    .line 89
    move-object v5, v4

    check-cast v5, Lcom/androidplot/xy/FastXYSeries;

    invoke-interface {v5}, Lcom/androidplot/xy/FastXYSeries;->minMax()Lcom/androidplot/xy/RectRegion;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0, v5}, Lcom/androidplot/xy/XYConstraints;->contains(Lcom/androidplot/xy/RectRegion;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    :cond_1
    invoke-virtual {v0, v5}, Lcom/androidplot/xy/RectRegion;->union(Lcom/androidplot/xy/RectRegion;)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 99
    :goto_1
    invoke-interface {v4}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 100
    invoke-interface {v4, v5}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v6

    .line 101
    invoke-interface {v4, v5}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v7

    if-eqz p0, :cond_3

    .line 104
    invoke-virtual {p0, v6, v7}, Lcom/androidplot/xy/XYConstraints;->contains(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 105
    :cond_3
    invoke-virtual {v0, v6, v7}, Lcom/androidplot/xy/RectRegion;->union(Ljava/lang/Number;Ljava/lang/Number;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static minMax(Ljava/util/List;)Lcom/androidplot/xy/RectRegion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/XYSeries;",
            ">;)",
            "Lcom/androidplot/xy/RectRegion;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    invoke-static {v0, p0}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/xy/XYConstraints;Ljava/util/List;)Lcom/androidplot/xy/RectRegion;

    move-result-object p0

    return-object p0
.end method

.method public static varargs minMax([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/RectRegion;
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {v0, p0}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/xy/XYConstraints;[Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/RectRegion;

    move-result-object p0

    return-object p0
.end method

.method public static varargs minMaxX([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/Region;
    .locals 7

    .line 42
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 43
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const/4 v5, 0x0

    .line 44
    :goto_1
    invoke-interface {v4}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 45
    invoke-interface {v4, v5}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static varargs minMaxY([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/Region;
    .locals 7

    .line 52
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 53
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const/4 v5, 0x0

    .line 54
    :goto_1
    invoke-interface {v4}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 55
    invoke-interface {v4, v5}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

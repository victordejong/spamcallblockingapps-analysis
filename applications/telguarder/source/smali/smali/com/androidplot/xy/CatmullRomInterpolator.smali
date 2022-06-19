.class public Lcom/androidplot/xy/CatmullRomInterpolator;
.super Ljava/lang/Object;
.source "CatmullRomInterpolator.java"

# interfaces
.implements Lcom/androidplot/xy/Interpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;,
        Lcom/androidplot/xy/CatmullRomInterpolator$Params;,
        Lcom/androidplot/xy/CatmullRomInterpolator$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/androidplot/xy/Interpolator<",
        "Lcom/androidplot/xy/CatmullRomInterpolator$Params;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static interpolate([D[DD)D
    .locals 16

    const/4 v0, 0x0

    .line 255
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    sub-double v4, v4, p2

    mul-double v1, v1, v4

    aget-wide v4, p1, v3

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    div-double/2addr v1, v4

    aget-wide v4, p0, v3

    aget-wide v6, p1, v0

    sub-double v6, p2, v6

    mul-double v4, v4, v6

    aget-wide v6, p1, v3

    aget-wide v8, p1, v0

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    add-double/2addr v1, v4

    .line 256
    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p1, v6

    sub-double v7, v7, p2

    mul-double v4, v4, v7

    aget-wide v7, p1, v6

    aget-wide v9, p1, v3

    sub-double/2addr v7, v9

    div-double/2addr v4, v7

    aget-wide v7, p0, v6

    aget-wide v9, p1, v3

    sub-double v9, p2, v9

    mul-double v7, v7, v9

    aget-wide v9, p1, v6

    aget-wide v11, p1, v3

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 257
    aget-wide v7, p0, v6

    const/4 v9, 0x3

    aget-wide v10, p1, v9

    sub-double v10, v10, p2

    mul-double v7, v7, v10

    aget-wide v10, p1, v9

    aget-wide v12, p1, v6

    sub-double/2addr v10, v12

    div-double/2addr v7, v10

    aget-wide v10, p0, v9

    aget-wide v12, p1, v6

    sub-double v12, p2, v12

    mul-double v10, v10, v12

    aget-wide v12, p1, v9

    aget-wide v14, p1, v6

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    add-double/2addr v7, v10

    .line 258
    aget-wide v10, p1, v6

    sub-double v10, v10, p2

    mul-double v1, v1, v10

    aget-wide v10, p1, v6

    aget-wide v12, p1, v0

    sub-double/2addr v10, v12

    div-double/2addr v1, v10

    aget-wide v10, p1, v0

    sub-double v10, p2, v10

    mul-double v10, v10, v4

    aget-wide v12, p1, v6

    aget-wide v14, p1, v0

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 259
    aget-wide v10, p1, v9

    sub-double v10, v10, p2

    mul-double v4, v4, v10

    aget-wide v10, p1, v9

    aget-wide v12, p1, v3

    sub-double/2addr v10, v12

    div-double/2addr v4, v10

    aget-wide v10, p1, v3

    sub-double v10, p2, v10

    mul-double v7, v7, v10

    aget-wide v9, p1, v9

    aget-wide v11, p1, v3

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 260
    aget-wide v7, p1, v6

    sub-double v7, v7, p2

    mul-double v1, v1, v7

    aget-wide v7, p1, v6

    aget-wide v9, p1, v3

    sub-double/2addr v7, v9

    div-double/2addr v1, v7

    aget-wide v7, p1, v3

    sub-double v7, p2, v7

    mul-double v4, v4, v7

    aget-wide v6, p1, v6

    aget-wide v8, p1, v3

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    add-double/2addr v1, v4

    return-wide v1
.end method


# virtual methods
.method protected interpolate(Lcom/androidplot/xy/XYSeries;ILcom/androidplot/xy/CatmullRomInterpolator$Params;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYSeries;",
            "I",
            "Lcom/androidplot/xy/CatmullRomInterpolator$Params;",
            ")",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/XYCoords;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [D

    new-array v4, v2, [D

    new-array v5, v2, [D

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    add-int v7, p2, v6

    .line 205
    invoke-interface {v0, v7}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v3, v6

    .line 206
    invoke-interface {v0, v7}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    aput-wide v7, v4, v6

    int-to-double v7, v6

    .line 207
    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 212
    invoke-virtual/range {p3 .. p3}, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->getType()Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    move-result-object v10

    sget-object v11, Lcom/androidplot/xy/CatmullRomInterpolator$Type;->Uniform:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v10, v11, :cond_3

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    :goto_1
    if-ge v8, v2, :cond_2

    .line 215
    aget-wide v9, v3, v8

    add-int/lit8 v11, v8, -0x1

    aget-wide v14, v3, v11

    sub-double/2addr v9, v14

    .line 216
    aget-wide v14, v4, v8

    aget-wide v16, v4, v11

    sub-double v14, v14, v16

    .line 217
    invoke-virtual/range {p3 .. p3}, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->getType()Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    move-result-object v11

    sget-object v2, Lcom/androidplot/xy/CatmullRomInterpolator$Type;->Centripetal:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    if-ne v11, v2, :cond_1

    mul-double v9, v9, v9

    mul-double v14, v14, v14

    add-double/2addr v9, v14

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    .line 218
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    goto :goto_2

    :cond_1
    mul-double v9, v9, v9

    mul-double v14, v14, v14

    add-double/2addr v9, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .line 220
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    :goto_2
    add-double/2addr v6, v9

    .line 222
    aput-wide v6, v5, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x4

    goto :goto_1

    .line 224
    :cond_2
    aget-wide v6, v5, v13

    .line 225
    aget-wide v8, v5, v12

    .line 228
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->getPointPerSegment()I

    move-result v2

    sub-int/2addr v2, v13

    .line 229
    new-instance v10, Lcom/androidplot/xy/XYCoords;

    add-int/lit8 v11, p2, 0x1

    invoke-interface {v0, v11}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v14

    invoke-interface {v0, v11}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v11

    invoke-direct {v10, v14, v11}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    if-ge v13, v2, :cond_4

    int-to-double v10, v13

    sub-double v14, v8, v6

    mul-double v10, v10, v14

    int-to-double v14, v2

    div-double/2addr v10, v14

    add-double/2addr v10, v6

    .line 231
    invoke-static {v3, v5, v10, v11}, Lcom/androidplot/xy/CatmullRomInterpolator;->interpolate([D[DD)D

    move-result-wide v14

    .line 232
    invoke-static {v4, v5, v10, v11}, Lcom/androidplot/xy/CatmullRomInterpolator;->interpolate([D[DD)D

    move-result-wide v10

    .line 233
    new-instance v12, Lcom/androidplot/xy/XYCoords;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v12, v14, v10}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x2

    goto :goto_3

    .line 235
    :cond_4
    new-instance v2, Lcom/androidplot/xy/XYCoords;

    const/4 v3, 0x2

    add-int/lit8 v3, p2, 0x2

    invoke-interface {v0, v3}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v4

    invoke-interface {v0, v3}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public interpolate(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/CatmullRomInterpolator$Params;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYSeries;",
            "Lcom/androidplot/xy/CatmullRomInterpolator$Params;",
            ")",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/XYCoords;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p2}, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->getPointPerSegment()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 130
    invoke-interface {p1}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    .line 135
    invoke-interface {p1, v0}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v2, v5

    .line 136
    invoke-interface {p1, v0}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-interface {p1, v4}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    sub-double/2addr v5, v7

    .line 139
    invoke-interface {p1, v4}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    sub-double/2addr v7, v2

    .line 140
    invoke-interface {p1, v4}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v2, v5

    .line 143
    new-instance v5, Lcom/androidplot/xy/XYCoords;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 146
    invoke-interface {p1}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 147
    invoke-interface {p1, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    add-int/lit8 v0, v2, -0x1

    invoke-interface {p1, v0}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 148
    invoke-interface {p1, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-interface {p1, v0}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 149
    invoke-interface {p1, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    add-double/2addr v10, v6

    .line 150
    invoke-interface {p1, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v8

    .line 151
    new-instance v0, Lcom/androidplot/xy/XYCoords;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 162
    new-instance v2, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;

    invoke-direct {v2, p1, v5, v0}, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;-><init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYCoords;Lcom/androidplot/xy/XYCoords;)V

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 169
    :goto_0
    invoke-virtual {v2}, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_1

    .line 172
    invoke-virtual {p0, v2, v0, p2}, Lcom/androidplot/xy/CatmullRomInterpolator;->interpolate(Lcom/androidplot/xy/XYSeries;ILcom/androidplot/xy/CatmullRomInterpolator$Params;)Ljava/util/List;

    move-result-object v3

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 178
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot interpolate a series with fewer than 3 vertices."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pointsPerSegment must be greater than 2, since 2 points is just the linear segment."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic interpolate(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/InterpolationParams;)Ljava/util/List;
    .locals 0

    .line 26
    check-cast p2, Lcom/androidplot/xy/CatmullRomInterpolator$Params;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/CatmullRomInterpolator;->interpolate(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/CatmullRomInterpolator$Params;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/androidplot/xy/LTTBSampler;
.super Ljava/lang/Object;
.source "LTTBSampler.java"

# interfaces
.implements Lcom/androidplot/xy/Sampler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/EditableXYSeries;)Lcom/androidplot/xy/RectRegion;
    .locals 30

    move-object/from16 v6, p1

    .line 29
    new-instance v7, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v7}, Lcom/androidplot/xy/RectRegion;-><init>()V

    .line 30
    invoke-interface/range {p2 .. p2}, Lcom/androidplot/xy/EditableXYSeries;->size()I

    move-result v0

    .line 31
    invoke-interface/range {p1 .. p1}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v8

    if-ge v0, v8, :cond_8

    if-eqz v0, :cond_8

    add-int/lit8 v1, v8, -0x2

    int-to-double v1, v1

    add-int/lit8 v9, v0, -0x2

    int-to-double v3, v9

    div-double v10, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v7

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/LTTBSampler;->setSample(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/EditableXYSeries;IILcom/androidplot/xy/RectRegion;)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x1

    :goto_0
    if-ge v0, v9, :cond_7

    add-int/lit8 v15, v0, 0x1

    int-to-double v3, v15

    mul-double v3, v3, v10

    move/from16 v16, v14

    move/from16 v17, v15

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v5, v14

    add-int/2addr v5, v13

    add-int/lit8 v14, v0, 0x2

    int-to-double v14, v14

    mul-double v14, v14, v10

    .line 52
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    add-int/2addr v14, v13

    if-ge v14, v8, :cond_0

    goto :goto_1

    :cond_0
    move v14, v8

    :goto_1
    sub-int v15, v14, v5

    const-wide/16 v18, 0x0

    move-wide/from16 v20, v18

    :goto_2
    if-ge v5, v14, :cond_3

    add-int/lit8 v13, v5, 0x0

    .line 56
    invoke-interface {v6, v13}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 57
    invoke-interface {v6, v13}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    add-double v18, v18, v22

    .line 60
    :cond_1
    invoke-interface {v6, v13}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 61
    invoke-interface {v6, v13}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    add-double v20, v20, v22

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    int-to-double v13, v15

    div-double v18, v18, v13

    div-double v20, v20, v13

    add-int/2addr v1, v12

    .line 66
    invoke-interface {v6, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    .line 67
    invoke-interface {v6, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    add-int/lit8 v0, v0, 0x0

    int-to-double v0, v0

    mul-double v0, v0, v10

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v1, 0x0

    move v15, v2

    :goto_3
    if-ge v0, v3, :cond_6

    sub-double v24, v13, v18

    add-int/lit8 v2, v0, 0x0

    .line 74
    invoke-interface {v6, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v26

    .line 75
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v26

    sub-double v26, v26, v22

    mul-double v24, v24, v26

    invoke-interface {v6, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v26

    .line 76
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v26

    sub-double v26, v13, v26

    sub-double v28, v20, v22

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    .line 74
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v26

    cmpl-double v26, v24, v4

    if-lez v26, :cond_5

    .line 79
    invoke-interface {v6, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v1

    if-nez v1, :cond_4

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null value encountered in raw data at index: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "LTTB"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_4
    new-instance v1, Lcom/androidplot/xy/XYCoords;

    invoke-interface {v6, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v4

    .line 84
    invoke-interface {v6, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    move v15, v0

    move-wide/from16 v4, v24

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 88
    :cond_6
    iget-object v2, v1, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object v3, v1, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v4, v16

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/LTTBSampler;->setSample(Lcom/androidplot/xy/EditableXYSeries;Ljava/lang/Number;Ljava/lang/Number;ILcom/androidplot/xy/RectRegion;)V

    add-int/lit8 v14, v16, 0x1

    move v1, v15

    move v2, v1

    move/from16 v0, v17

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_7
    move/from16 v16, v14

    add-int/2addr v8, v12

    const/4 v0, 0x1

    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, v16

    move-object v5, v7

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/LTTBSampler;->setSample(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/EditableXYSeries;IILcom/androidplot/xy/RectRegion;)V

    return-object v7

    .line 37
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldnt be here!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSample(Lcom/androidplot/xy/EditableXYSeries;Ljava/lang/Number;Ljava/lang/Number;ILcom/androidplot/xy/RectRegion;)V
    .locals 0

    .line 102
    invoke-virtual {p5, p2, p3}, Lcom/androidplot/xy/RectRegion;->union(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 103
    invoke-interface {p1, p2, p4}, Lcom/androidplot/xy/EditableXYSeries;->setX(Ljava/lang/Number;I)V

    .line 104
    invoke-interface {p1, p3, p4}, Lcom/androidplot/xy/EditableXYSeries;->setY(Ljava/lang/Number;I)V

    return-void
.end method

.method protected setSample(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/EditableXYSeries;IILcom/androidplot/xy/RectRegion;)V
    .locals 6

    .line 98
    invoke-interface {p1, p3}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    invoke-interface {p1, p3}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/LTTBSampler;->setSample(Lcom/androidplot/xy/EditableXYSeries;Ljava/lang/Number;Ljava/lang/Number;ILcom/androidplot/xy/RectRegion;)V

    return-void
.end method

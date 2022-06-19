.class public final Landroidx/transition/r;
.super Landroidx/transition/ap;
.source "SourceFile"


# instance fields
.field a:I

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/transition/ap;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 36
    iput v0, p0, Landroidx/transition/r;->b:F

    const/16 v0, 0x50

    .line 37
    iput v0, p0, Landroidx/transition/r;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/x;Landroidx/transition/x;)J
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-wide v1

    .line 80
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->j()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p4, :cond_2

    .line 82
    invoke-static/range {p3 .. p3}, Landroidx/transition/r;->b(Landroidx/transition/x;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v5, p4

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, -0x1

    move-object/from16 v5, p3

    const/4 v6, -0x1

    .line 89
    :goto_1
    invoke-static {v5}, Landroidx/transition/r;->c(Landroidx/transition/x;)I

    move-result v7

    .line 90
    invoke-static {v5}, Landroidx/transition/r;->d(Landroidx/transition/x;)I

    move-result v5

    const/4 v8, 0x2

    new-array v9, v8, [I

    move-object/from16 v10, p1

    .line 93
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v11, 0x0

    .line 94
    aget v12, v9, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    add-int/2addr v12, v13

    .line 95
    aget v9, v9, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    add-int/2addr v9, v13

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    add-int/2addr v13, v12

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    add-int/2addr v14, v9

    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 103
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    goto :goto_2

    :cond_3
    add-int v3, v12, v13

    .line 105
    div-int/2addr v3, v8

    add-int v15, v9, v14

    .line 106
    div-int/lit8 v8, v15, 0x2

    move/from16 v16, v8

    move v8, v3

    move/from16 v3, v16

    .line 1125
    :goto_2
    iget v15, v0, Landroidx/transition/r;->a:I

    const v11, 0x800005

    const v1, 0x800003

    const/4 v2, 0x3

    if-ne v15, v1, :cond_7

    .line 1126
    invoke-static/range {p1 .. p1}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v15

    if-ne v15, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    :cond_5
    const/4 v15, 0x5

    goto :goto_6

    :cond_6
    :goto_4
    const/4 v15, 0x3

    goto :goto_6

    :cond_7
    if-ne v15, v11, :cond_9

    .line 1130
    invoke-static/range {p1 .. p1}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v15

    if-ne v15, v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_5

    goto :goto_4

    :cond_9
    :goto_6
    if-eq v15, v2, :cond_d

    const/4 v4, 0x5

    if-eq v15, v4, :cond_c

    const/16 v3, 0x30

    if-eq v15, v3, :cond_b

    const/16 v3, 0x50

    if-eq v15, v3, :cond_a

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    sub-int/2addr v5, v9

    sub-int/2addr v8, v7

    .line 1148
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_7

    :cond_b
    sub-int/2addr v14, v5

    sub-int/2addr v8, v7

    .line 1142
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, v14

    goto :goto_7

    :cond_c
    sub-int/2addr v7, v12

    sub-int/2addr v3, v5

    .line 1145
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    sub-int/2addr v13, v7

    sub-int/2addr v3, v5

    .line 1139
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, v13

    :goto_7
    int-to-float v3, v3

    .line 1155
    iget v4, v0, Landroidx/transition/r;->a:I

    if-eq v4, v2, :cond_e

    const/4 v2, 0x5

    if-eq v4, v2, :cond_e

    if-eq v4, v1, :cond_e

    if-eq v4, v11, :cond_e

    .line 1162
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    goto :goto_8

    .line 1160
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    :goto_8
    int-to-float v1, v1

    div-float/2addr v3, v1

    move-object/from16 v1, p2

    .line 1354
    iget-wide v1, v1, Landroidx/transition/Transition;->b:J

    const-wide/16 v4, 0x0

    cmp-long v7, v1, v4

    if-gez v7, :cond_f

    const-wide/16 v1, 0x12c

    :cond_f
    int-to-long v4, v6

    mul-long v1, v1, v4

    long-to-float v1, v1

    .line 119
    iget v2, v0, Landroidx/transition/r;->b:F

    div-float/2addr v1, v2

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

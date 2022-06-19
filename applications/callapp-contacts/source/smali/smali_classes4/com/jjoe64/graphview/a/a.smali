.class public final Lcom/jjoe64/graphview/a/a;
.super Lcom/jjoe64/graphview/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/jjoe64/graphview/a/d;",
        ">",
        "Lcom/jjoe64/graphview/a/b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:D

.field private j:Lcom/jjoe64/graphview/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/i<",
            "TE;>;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I

.field private m:F

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jjoe64/graphview/g;",
            "TE;>;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:D

.field private q:J

.field private r:Landroid/view/animation/AccelerateInterpolator;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/jjoe64/graphview/a/b;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/a;->n:Ljava/util/Map;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 110
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/a;->p:D

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/a;->f:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/a/b;-><init>([Lcom/jjoe64/graphview/a/d;)V

    .line 100
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jjoe64/graphview/a/a;->n:Ljava/util/Map;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 110
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/a;->p:D

    .line 143
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jjoe64/graphview/a/a;->f:Landroid/graphics/Paint;

    .line 144
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p1, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/jjoe64/graphview/a/a;->r:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method


# virtual methods
.method protected final a(FF)Lcom/jjoe64/graphview/a/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TE;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/jjoe64/graphview/a/a;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    float-to-double v2, p1

    .line 475
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/g;

    iget-wide v4, v4, Lcom/jjoe64/graphview/g;->a:D

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/g;

    iget-wide v4, v4, Lcom/jjoe64/graphview/g;->b:D

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_0

    float-to-double v2, p2

    .line 476
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/g;

    iget-wide v4, v4, Lcom/jjoe64/graphview/g;->c:D

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/g;

    iget-wide v4, v4, Lcom/jjoe64/graphview/g;->d:D

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_0

    .line 477
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jjoe64/graphview/a/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a()V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/jjoe64/graphview/a/a;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Lcom/jjoe64/graphview/a/d;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 156
    iget-object v2, v0, Lcom/jjoe64/graphview/a/a;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 157
    iget v2, v0, Lcom/jjoe64/graphview/a/a;->m:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 2236
    iget-object v2, v1, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 158
    invoke-virtual {v2}, Lcom/jjoe64/graphview/c;->a()F

    move-result v2

    iput v2, v0, Lcom/jjoe64/graphview/a/a;->m:F

    .line 160
    :cond_0
    iget-object v2, v0, Lcom/jjoe64/graphview/a/a;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/jjoe64/graphview/a/a;->m:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/a/a;->a()V

    .line 2378
    iget-object v2, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    const/4 v3, 0x0

    .line 165
    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/j;->b(Z)D

    move-result-wide v4

    .line 3378
    iget-object v2, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 166
    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v6

    if-eqz p3, :cond_1

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jjoe64/graphview/h;->c()D

    move-result-wide v8

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jjoe64/graphview/h;->b()D

    move-result-wide v10

    goto :goto_0

    .line 4378
    :cond_1
    iget-object v2, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 174
    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/j;->d(Z)D

    move-result-wide v8

    .line 5378
    iget-object v2, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 175
    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v10

    .line 185
    :goto_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 6259
    iget-object v12, v1, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    .line 186
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/jjoe64/graphview/a/h;

    move-object/from16 v16, v12

    .line 187
    instance-of v12, v3, Lcom/jjoe64/graphview/a/a;

    if-eqz v12, :cond_7

    if-ne v3, v0, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_3

    move v15, v14

    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 199
    invoke-interface {v3, v6, v7, v4, v5}, Lcom/jjoe64/graphview/a/h;->a(DD)Ljava/util/Iterator;

    move-result-object v3

    .line 200
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 201
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/jjoe64/graphview/a/d;

    invoke-interface/range {v17 .. v17}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v17

    move/from16 p3, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_4

    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 203
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 204
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v14}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_5
    move/from16 v14, p3

    goto :goto_4

    :cond_6
    move/from16 p3, v14

    :cond_7
    :goto_4
    move-object/from16 v12, v16

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    if-nez v13, :cond_9

    return-void

    .line 216
    :cond_9
    iget-wide v12, v0, Lcom/jjoe64/graphview/a/a;->i:D

    const-wide/16 v17, 0x0

    cmpl-double v3, v12, v17

    if-lez v3, :cond_a

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 221
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide/from16 v12, v17

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    if-eqz v3, :cond_c

    .line 223
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    sub-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    cmpl-double v3, v12, v17

    if-eqz v3, :cond_b

    cmpl-double v3, v19, v17

    if-lez v3, :cond_c

    cmpg-double v3, v19, v12

    if-gez v3, :cond_c

    :cond_b
    move-wide/from16 v12, v19

    :cond_c
    move-object/from16 v3, v16

    goto :goto_5

    :cond_d
    :goto_6
    cmpl-double v2, v12, v17

    if-nez v2, :cond_e

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    sub-double v2, v4, v6

    div-double/2addr v2, v12

    .line 232
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    const/4 v2, 0x1

    add-int/2addr v3, v2

    .line 234
    :goto_7
    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/jjoe64/graphview/a/a;->a(DD)Ljava/util/Iterator;

    move-result-object v12

    if-ne v3, v2, :cond_f

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v3

    goto :goto_8

    .line 240
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v13

    sub-int/2addr v3, v2

    div-int v3, v13, v3

    .line 243
    :goto_8
    iget v13, v0, Lcom/jjoe64/graphview/a/a;->h:I

    mul-int v13, v13, v3

    div-int/lit8 v13, v13, 0x64

    int-to-float v13, v13

    int-to-float v2, v3

    const v16, 0x3f7ae148    # 0.98f

    mul-float v2, v2, v16

    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-double v1, v2

    move-object/from16 v16, v12

    int-to-double v12, v3

    sub-double/2addr v12, v1

    move/from16 v19, v15

    int-to-double v14, v14

    div-double/2addr v12, v14

    .line 247
    div-int/lit8 v3, v3, 0x2

    int-to-double v14, v3

    sub-double/2addr v8, v10

    sub-double/2addr v4, v6

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v3

    move-wide/from16 v20, v12

    int-to-double v12, v3

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v3

    move-wide/from16 v22, v1

    int-to-double v1, v3

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v3

    move-wide/from16 v24, v14

    int-to-double v14, v3

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v3

    move-wide/from16 v26, v14

    int-to-double v14, v3

    .line 258
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 259
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/d;

    .line 261
    invoke-interface {v3}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v28

    sub-double v28, v28, v10

    div-double v28, v28, v8

    mul-double v28, v28, v12

    sub-double v30, v17, v10

    div-double v30, v30, v8

    mul-double v30, v30, v12

    move-wide/from16 v32, v8

    .line 269
    invoke-interface {v3}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v8

    sub-double v34, v8, v6

    div-double v34, v34, v4

    mul-double v34, v34, v1

    move-wide/from16 v36, v4

    .line 6363
    iget-object v4, v0, Lcom/jjoe64/graphview/a/a;->j:Lcom/jjoe64/graphview/i;

    if-eqz v4, :cond_10

    .line 276
    iget-object v5, v0, Lcom/jjoe64/graphview/a/a;->f:Landroid/graphics/Paint;

    invoke-interface {v4}, Lcom/jjoe64/graphview/i;->a()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    .line 278
    :cond_10
    iget-object v4, v0, Lcom/jjoe64/graphview/a/a;->f:Landroid/graphics/Paint;

    .line 8274
    iget v5, v0, Lcom/jjoe64/graphview/a/b;->c:I

    .line 278
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_a
    add-double v34, v34, v26

    sub-double v34, v34, v24

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v22, v4

    add-double v34, v34, v4

    move-wide/from16 v38, v6

    move/from16 v4, v19

    int-to-double v5, v4

    mul-double v5, v5, v20

    add-double v5, v34, v5

    sub-double v28, v14, v28

    add-double v28, v28, v12

    move-wide/from16 v34, v10

    add-double v10, v5, v20

    sub-double v30, v14, v30

    add-double v30, v30, v12

    move-object/from16 v7, p1

    .line 9236
    iget-object v4, v7, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 284
    invoke-virtual {v4}, Lcom/jjoe64/graphview/c;->i()Z

    move-result v4

    const/16 v40, 0x4

    move-object/from16 v41, v3

    if-eqz v4, :cond_11

    const/4 v4, 0x4

    goto :goto_b

    :cond_11
    const/4 v4, 0x1

    :goto_b
    int-to-double v3, v4

    sub-double v30, v30, v3

    cmpl-double v3, v28, v30

    if-lez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    .line 288
    :goto_c
    iget-boolean v4, v0, Lcom/jjoe64/graphview/a/a;->o:Z

    move-wide/from16 v42, v12

    if-eqz v4, :cond_17

    .line 289
    iget-wide v12, v0, Lcom/jjoe64/graphview/a/a;->p:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_13

    iget-wide v12, v0, Lcom/jjoe64/graphview/a/a;->p:D

    cmpg-double v4, v12, v8

    if-gez v4, :cond_17

    .line 290
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide/from16 v44, v14

    .line 291
    iget-wide v14, v0, Lcom/jjoe64/graphview/a/a;->q:J

    const-wide/16 v46, 0x0

    cmp-long v4, v14, v46

    if-nez v4, :cond_14

    .line 293
    iput-wide v12, v0, Lcom/jjoe64/graphview/a/a;->q:J

    const/4 v4, 0x0

    .line 294
    iput v4, v0, Lcom/jjoe64/graphview/a/a;->s:I

    goto :goto_d

    .line 297
    :cond_14
    iget v4, v0, Lcom/jjoe64/graphview/a/a;->s:I

    const/16 v14, 0xf

    if-ge v4, v14, :cond_15

    .line 299
    iput-wide v12, v0, Lcom/jjoe64/graphview/a/a;->q:J

    add-int/lit8 v4, v4, 0x1

    .line 300
    iput v4, v0, Lcom/jjoe64/graphview/a/a;->s:I

    .line 303
    :cond_15
    :goto_d
    iget-wide v14, v0, Lcom/jjoe64/graphview/a/a;->q:J

    sub-long/2addr v12, v14

    long-to-float v4, v12

    const v12, 0x43a68000    # 333.0f

    div-float/2addr v4, v12

    .line 304
    iget-object v12, v0, Lcom/jjoe64/graphview/a/a;->r:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v12, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v12

    float-to-double v13, v4

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v13, v46

    if-gtz v4, :cond_16

    sub-double v8, v30, v28

    float-to-double v12, v12

    mul-double v8, v8, v12

    sub-double v28, v30, v8

    .line 309
    invoke-static/range {p1 .. p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    goto :goto_e

    .line 312
    :cond_16
    iput-wide v8, v0, Lcom/jjoe64/graphview/a/a;->p:D

    goto :goto_e

    :cond_17
    move-wide/from16 v44, v14

    :goto_e
    if-eqz v3, :cond_19

    .line 10236
    iget-object v4, v7, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 319
    invoke-virtual {v4}, Lcom/jjoe64/graphview/c;->i()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x4

    goto :goto_f

    :cond_18
    const/4 v4, 0x1

    :goto_f
    int-to-double v8, v4

    add-double v30, v30, v8

    move-wide/from16 v14, v26

    move-wide/from16 v12, v28

    move-wide/from16 v8, v30

    goto :goto_10

    :cond_19
    move-wide/from16 v14, v26

    move-wide/from16 v8, v28

    move-wide/from16 v12, v30

    .line 324
    :goto_10
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    add-double v6, v14, v1

    .line 325
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    add-double v10, v44, v42

    .line 326
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    move-wide/from16 v26, v1

    move-wide/from16 v1, v44

    .line 327
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide/from16 v28, v14

    .line 329
    iget-object v14, v0, Lcom/jjoe64/graphview/a/a;->n:Ljava/util/Map;

    new-instance v15, Lcom/jjoe64/graphview/g;

    move-object/from16 v46, v15

    move-wide/from16 v47, v4

    move-wide/from16 v49, v8

    move-wide/from16 v51, v6

    move-wide/from16 v53, v12

    invoke-direct/range {v46 .. v54}, Lcom/jjoe64/graphview/g;-><init>(DDDD)V

    move-object/from16 v1, v41

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v2, v0, Lcom/jjoe64/graphview/a/a;->g:Landroid/graphics/Paint;

    if-eqz v2, :cond_1a

    goto :goto_11

    .line 335
    :cond_1a
    iget-object v2, v0, Lcom/jjoe64/graphview/a/a;->f:Landroid/graphics/Paint;

    :goto_11
    move-object/from16 v51, v2

    double-to-float v2, v4

    double-to-float v14, v8

    double-to-float v15, v6

    move-wide/from16 v30, v4

    double-to-float v4, v12

    move-object/from16 v46, p2

    move/from16 v47, v2

    move/from16 v48, v14

    move/from16 v49, v15

    move/from16 v50, v4

    .line 337
    invoke-virtual/range {v46 .. v51}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 340
    iget-boolean v2, v0, Lcom/jjoe64/graphview/a/a;->k:Z

    if-eqz v2, :cond_1e

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    if-eqz v3, :cond_1c

    .line 342
    iget v2, v0, Lcom/jjoe64/graphview/a/a;->m:F

    float-to-double v2, v2

    add-double/2addr v12, v2

    add-double/2addr v12, v4

    cmpl-double v2, v12, v10

    if-lez v2, :cond_1b

    goto :goto_12

    :cond_1b
    move-wide v10, v12

    goto :goto_12

    :cond_1c
    sub-double v10, v8, v4

    cmpg-double v2, v10, v44

    if-gtz v2, :cond_1d

    add-double v14, v44, v4

    add-double/2addr v10, v14

    .line 349
    :cond_1d
    :goto_12
    iget-object v2, v0, Lcom/jjoe64/graphview/a/a;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/jjoe64/graphview/a/a;->l:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v2, p1

    .line 11236
    iget-object v3, v2, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 11569
    iget-object v3, v3, Lcom/jjoe64/graphview/c;->c:Lcom/jjoe64/graphview/d;

    .line 351
    invoke-interface {v1}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v4

    const/4 v1, 0x0

    invoke-interface {v3, v4, v5, v1}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object v3

    add-double v4, v30, v6

    double-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    double-to-float v5, v10

    iget-object v6, v0, Lcom/jjoe64/graphview/a/a;->f:Landroid/graphics/Paint;

    move-object/from16 v7, p2

    .line 350
    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_13

    :cond_1e
    move-object/from16 v2, p1

    move-object/from16 v7, p2

    const/4 v1, 0x0

    :goto_13
    move-wide/from16 v1, v26

    move-wide/from16 v26, v28

    move-wide/from16 v8, v32

    move-wide/from16 v10, v34

    move-wide/from16 v4, v36

    move-wide/from16 v6, v38

    move-wide/from16 v12, v42

    move-wide/from16 v14, v44

    goto/16 :goto_9

    :cond_1f
    return-void
.end method

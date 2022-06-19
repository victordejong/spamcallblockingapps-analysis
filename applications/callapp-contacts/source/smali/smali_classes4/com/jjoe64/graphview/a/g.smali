.class public final Lcom/jjoe64/graphview/a/g;
.super Lcom/jjoe64/graphview/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/a/g$c;,
        Lcom/jjoe64/graphview/a/g$b;,
        Lcom/jjoe64/graphview/a/g$a;
    }
.end annotation

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
.field private f:Lcom/jjoe64/graphview/a/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/a/g<",
            "TE;>.c;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/Paint;

.field private h:Lcom/jjoe64/graphview/a/g$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/jjoe64/graphview/a/b;-><init>()V

    .line 115
    invoke-direct {p0}, Lcom/jjoe64/graphview/a/g;->i()V

    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/a/b;-><init>([Lcom/jjoe64/graphview/a/d;)V

    .line 125
    invoke-direct {p0}, Lcom/jjoe64/graphview/a/g;->i()V

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iput p1, v0, Lcom/jjoe64/graphview/a/g$c;->b:I

    return-void
.end method

.method private i()V
    .locals 2

    .line 133
    new-instance v0, Lcom/jjoe64/graphview/a/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jjoe64/graphview/a/g$c;-><init>(Lcom/jjoe64/graphview/a/g;Lcom/jjoe64/graphview/a/g$1;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 134
    iput v1, v0, Lcom/jjoe64/graphview/a/g$c;->a:F

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/g;->g:Landroid/graphics/Paint;

    .line 136
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 137
    sget v0, Lcom/jjoe64/graphview/a/g$b;->a:I

    invoke-direct {p0, v0}, Lcom/jjoe64/graphview/a/g;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Lcom/jjoe64/graphview/a/d;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/a/g;->a()V

    .line 1378
    iget-object v2, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    const/4 v15, 0x0

    .line 152
    invoke-virtual {v2, v15}, Lcom/jjoe64/graphview/j;->b(Z)D

    move-result-wide v2

    .line 2378
    iget-object v4, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 153
    invoke-virtual {v4, v15}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v12

    if-eqz p3, :cond_0

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jjoe64/graphview/h;->c()D

    move-result-wide v4

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/h;->b()D

    move-result-wide v6

    goto :goto_0

    .line 3378
    :cond_0
    iget-object v4, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 161
    invoke-virtual {v4, v15}, Lcom/jjoe64/graphview/j;->d(Z)D

    move-result-wide v4

    .line 4378
    iget-object v6, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 162
    invoke-virtual {v6, v15}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v6

    :goto_0
    move-wide/from16 v16, v6

    .line 165
    invoke-virtual {v0, v12, v13, v2, v3}, Lcom/jjoe64/graphview/a/g;->a(DD)Ljava/util/Iterator;

    move-result-object v18

    .line 172
    iget-object v6, v0, Lcom/jjoe64/graphview/a/g;->g:Landroid/graphics/Paint;

    .line 5274
    iget v7, v0, Lcom/jjoe64/graphview/a/b;->c:I

    .line 172
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    sub-double v19, v4, v16

    sub-double v21, v2, v12

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v2

    int-to-float v11, v2

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v2

    int-to-float v10, v2

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v2

    int-to-float v9, v2

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    int-to-float v8, v1

    .line 186
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 187
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/a/d;

    .line 189
    invoke-interface {v1}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v2

    sub-double v2, v2, v16

    div-double v2, v2, v19

    float-to-double v4, v11

    mul-double v2, v2, v4

    .line 193
    invoke-interface {v1}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v6

    sub-double/2addr v6, v12

    div-double v6, v6, v21

    move-wide/from16 v23, v12

    float-to-double v12, v10

    mul-double v6, v6, v12

    const/16 v25, 0x1

    cmpl-double v26, v6, v12

    if-lez v26, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    const-wide/16 v26, 0x0

    cmpg-double v13, v2, v26

    if-gez v13, :cond_2

    const/4 v12, 0x1

    :cond_2
    cmpl-double v13, v2, v4

    if-lez v13, :cond_3

    const/4 v12, 0x1

    :cond_3
    cmpg-double v4, v6, v26

    if-gez v4, :cond_4

    const/4 v12, 0x1

    :cond_4
    double-to-float v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v5, v9

    add-float/2addr v4, v5

    float-to-double v5, v8

    sub-double/2addr v5, v2

    double-to-float v2, v5

    add-float/2addr v2, v11

    .line 218
    invoke-virtual {v0, v4, v2, v1}, Lcom/jjoe64/graphview/a/g;->a(FFLcom/jjoe64/graphview/a/d;)V

    if-nez v12, :cond_7

    .line 222
    iget-object v1, v0, Lcom/jjoe64/graphview/a/g;->h:Lcom/jjoe64/graphview/a/g$a;

    if-nez v1, :cond_7

    .line 224
    iget-object v1, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v1, v1, Lcom/jjoe64/graphview/a/g$c;->b:I

    sget v3, Lcom/jjoe64/graphview/a/g$b;->a:I

    if-ne v1, v3, :cond_5

    .line 225
    iget-object v1, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v1, v1, Lcom/jjoe64/graphview/a/g$c;->a:F

    iget-object v3, v0, Lcom/jjoe64/graphview/a/g;->g:Landroid/graphics/Paint;

    invoke-virtual {v14, v4, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3
    move-wide/from16 v12, v23

    goto :goto_1

    .line 226
    :cond_5
    iget-object v1, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v1, v1, Lcom/jjoe64/graphview/a/g$c;->b:I

    sget v3, Lcom/jjoe64/graphview/a/g$b;->c:I

    if-ne v1, v3, :cond_6

    .line 227
    iget-object v1, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v1, v1, Lcom/jjoe64/graphview/a/g$c;->a:F

    sub-float v3, v4, v1

    iget-object v1, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v1, v1, Lcom/jjoe64/graphview/a/g$c;->a:F

    sub-float v5, v2, v1

    iget-object v1, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v1, v1, Lcom/jjoe64/graphview/a/g$c;->a:F

    add-float/2addr v4, v1

    iget-object v1, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v1, v1, Lcom/jjoe64/graphview/a/g$c;->a:F

    add-float v6, v2, v1

    iget-object v7, v0, Lcom/jjoe64/graphview/a/g;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    move v2, v3

    move v3, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 228
    :cond_6
    iget-object v1, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v1, v1, Lcom/jjoe64/graphview/a/g$c;->b:I

    sget v3, Lcom/jjoe64/graphview/a/g$b;->b:I

    if-ne v1, v3, :cond_7

    const/4 v1, 0x3

    new-array v13, v1, [Landroid/graphics/Point;

    .line 230
    new-instance v3, Landroid/graphics/Point;

    float-to-int v5, v4

    .line 5276
    iget-object v6, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v6, v6, Lcom/jjoe64/graphview/a/g$c;->a:F

    sub-float v6, v2, v6

    float-to-int v6, v6

    .line 230
    invoke-direct {v3, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v13, v15

    .line 231
    new-instance v3, Landroid/graphics/Point;

    .line 6276
    iget-object v5, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v5, v5, Lcom/jjoe64/graphview/a/g$c;->a:F

    add-float/2addr v5, v4

    float-to-int v5, v5

    float-to-double v6, v2

    .line 7276
    iget-object v2, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v2, v2, Lcom/jjoe64/graphview/a/g$c;->a:F

    float-to-double v1, v2

    const-wide v26, 0x3fe570a3d70a3d71L    # 0.67

    mul-double v1, v1, v26

    add-double/2addr v1, v6

    double-to-int v1, v1

    .line 231
    invoke-direct {v3, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v13, v25

    .line 232
    new-instance v1, Landroid/graphics/Point;

    .line 8276
    iget-object v2, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v2, v2, Lcom/jjoe64/graphview/a/g$c;->a:F

    sub-float/2addr v4, v2

    float-to-int v2, v4

    .line 9276
    iget-object v3, v0, Lcom/jjoe64/graphview/a/g;->f:Lcom/jjoe64/graphview/a/g$c;

    iget v3, v3, Lcom/jjoe64/graphview/a/g$c;->a:F

    float-to-double v3, v3

    mul-double v3, v3, v26

    add-double/2addr v6, v3

    double-to-int v3, v6

    .line 232
    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/16 v26, 0x2

    aput-object v1, v13, v26

    .line 233
    iget-object v12, v0, Lcom/jjoe64/graphview/a/g;->g:Landroid/graphics/Paint;

    const/16 v1, 0x8

    new-array v4, v1, [F

    .line 10251
    aget-object v1, v13, v15

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v4, v15

    .line 10252
    aget-object v1, v13, v15

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v4, v25

    .line 10253
    aget-object v1, v13, v25

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v4, v26

    .line 10254
    aget-object v1, v13, v25

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v4, v2

    const/4 v1, 0x4

    .line 10255
    aget-object v2, v13, v26

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aput v2, v4, v1

    const/4 v1, 0x5

    .line 10256
    aget-object v2, v13, v26

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aput v2, v4, v1

    const/4 v1, 0x6

    .line 10257
    aget-object v2, v13, v15

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aput v2, v4, v1

    const/4 v1, 0x7

    .line 10258
    aget-object v2, v13, v15

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aput v2, v4, v1

    .line 10260
    sget-object v2, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v1, p2

    move/from16 v32, v8

    move-object/from16 v8, v27

    move/from16 v27, v9

    move/from16 v9, v28

    move/from16 v28, v10

    move-object/from16 v10, v29

    move/from16 v29, v11

    move/from16 v11, v30

    move-object/from16 p1, v12

    move/from16 v12, v31

    move-object/from16 v30, v13

    move-object/from16 v13, p1

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 10261
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 10262
    aget-object v2, v30, v15

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v3, v30, v15

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10263
    aget-object v2, v30, v25

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v3, v30, v25

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10264
    aget-object v2, v30, v26

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v3, v30, v26

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v2, p1

    .line 10265
    invoke-virtual {v14, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    move/from16 v32, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    :goto_4
    move-wide/from16 v12, v23

    move/from16 v9, v27

    move/from16 v10, v28

    move/from16 v11, v29

    move/from16 v8, v32

    goto/16 :goto_1

    :cond_8
    return-void
.end method

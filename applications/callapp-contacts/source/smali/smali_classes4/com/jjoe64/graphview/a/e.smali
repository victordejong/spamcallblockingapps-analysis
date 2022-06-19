.class public final Lcom/jjoe64/graphview/a/e;
.super Lcom/jjoe64/graphview/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/a/e$a;
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
.field public f:Lcom/jjoe64/graphview/a/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/a/e<",
            "TE;>.a;"
        }
    .end annotation
.end field

.field public g:Z

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Path;

.field private l:Landroid/graphics/Path;

.field private m:Landroid/graphics/Paint;

.field private n:D

.field private o:J

.field private p:Landroid/view/animation/AccelerateInterpolator;

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/jjoe64/graphview/a/b;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 124
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/e;->n:D

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/jjoe64/graphview/a/e;->r:Z

    .line 153
    invoke-direct {p0}, Lcom/jjoe64/graphview/a/e;->i()V

    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/a/b;-><init>([Lcom/jjoe64/graphview/a/d;)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 124
    iput-wide v0, p0, Lcom/jjoe64/graphview/a/e;->n:D

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/jjoe64/graphview/a/e;->r:Z

    .line 164
    invoke-direct {p0}, Lcom/jjoe64/graphview/a/e;->i()V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V
    .locals 2

    const/4 v0, 0x0

    .line 515
    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private i()V
    .locals 3

    .line 172
    new-instance v0, Lcom/jjoe64/graphview/a/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jjoe64/graphview/a/e$a;-><init>(Lcom/jjoe64/graphview/a/e;Lcom/jjoe64/graphview/a/e$1;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/e;->i:Landroid/graphics/Paint;

    .line 174
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 175
    iget-object v0, p0, Lcom/jjoe64/graphview/a/e;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/e;->j:Landroid/graphics/Paint;

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/e;->h:Landroid/graphics/Paint;

    const/16 v1, 0x50

    const/4 v2, 0x0

    .line 179
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lcom/jjoe64/graphview/a/e;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    .line 183
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/e;->l:Landroid/graphics/Path;

    .line 185
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/jjoe64/graphview/a/e;->p:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method


# virtual methods
.method public final a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Lcom/jjoe64/graphview/a/d;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 13378
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    const/4 v4, 0x0

    .line 693
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->b(Z)D

    move-result-wide v5

    .line 14378
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 693
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v7

    sub-double/2addr v5, v7

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v3

    int-to-double v7, v3

    .line 15378
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 696
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->d(Z)D

    move-result-wide v9

    .line 16378
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 696
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v11

    sub-double/2addr v9, v11

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v3

    int-to-double v11, v3

    .line 699
    invoke-interface/range {p3 .. p3}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v13

    .line 17378
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 699
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v15

    sub-double/2addr v13, v15

    mul-double v13, v13, v7

    div-double/2addr v13, v5

    .line 700
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v3

    int-to-double v5, v3

    add-double/2addr v13, v5

    .line 702
    invoke-interface/range {p3 .. p3}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v5

    .line 18378
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 702
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v3

    sub-double/2addr v5, v3

    mul-double v5, v5, v11

    div-double/2addr v5, v9

    .line 703
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    int-to-double v3, v1

    add-double/2addr v3, v11

    sub-double/2addr v3, v5

    double-to-float v1, v13

    double-to-float v3, v3

    .line 706
    iget-object v4, v0, Lcom/jjoe64/graphview/a/e;->h:Landroid/graphics/Paint;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 709
    iget-object v4, v0, Lcom/jjoe64/graphview/a/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    .line 710
    iget-object v5, v0, Lcom/jjoe64/graphview/a/e;->i:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 711
    iget-object v5, v0, Lcom/jjoe64/graphview/a/e;->i:Landroid/graphics/Paint;

    const/high16 v6, 0x41b80000    # 23.0f

    invoke-virtual {v2, v1, v3, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 712
    iget-object v1, v0, Lcom/jjoe64/graphview/a/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public final a(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/a/e;->a()V

    .line 1378
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    const/4 v4, 0x0

    .line 201
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->b(Z)D

    move-result-wide v5

    .line 2378
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 202
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v7

    if-eqz p3, :cond_0

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jjoe64/graphview/h;->c()D

    move-result-wide v9

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->f()Lcom/jjoe64/graphview/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jjoe64/graphview/h;->b()D

    move-result-wide v11

    goto :goto_0

    .line 3378
    :cond_0
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 210
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->d(Z)D

    move-result-wide v9

    .line 4378
    iget-object v3, v1, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 211
    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v11

    .line 214
    :goto_0
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/jjoe64/graphview/a/e;->a(DD)Ljava/util/Iterator;

    move-result-object v3

    .line 221
    iget-object v13, v0, Lcom/jjoe64/graphview/a/e;->i:Landroid/graphics/Paint;

    iget-object v14, v0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 5042
    iget v14, v14, Lcom/jjoe64/graphview/a/e$a;->a:I

    int-to-float v14, v14

    .line 221
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 222
    iget-object v13, v0, Lcom/jjoe64/graphview/a/e;->i:Landroid/graphics/Paint;

    .line 5274
    iget v14, v0, Lcom/jjoe64/graphview/a/b;->c:I

    .line 222
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v13, v0, Lcom/jjoe64/graphview/a/e;->j:Landroid/graphics/Paint;

    iget-object v14, v0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 6042
    iget v14, v14, Lcom/jjoe64/graphview/a/e$a;->e:I

    .line 223
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v13, v0, Lcom/jjoe64/graphview/a/e;->m:Landroid/graphics/Paint;

    if-eqz v13, :cond_1

    goto :goto_1

    .line 229
    :cond_1
    iget-object v13, v0, Lcom/jjoe64/graphview/a/e;->i:Landroid/graphics/Paint;

    .line 232
    :goto_1
    iget-object v14, v0, Lcom/jjoe64/graphview/a/e;->l:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 234
    iget-object v14, v0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 7042
    iget-boolean v14, v14, Lcom/jjoe64/graphview/a/e$a;->b:Z

    if-eqz v14, :cond_2

    .line 235
    iget-object v14, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    :cond_2
    sub-double/2addr v9, v11

    sub-double/2addr v5, v7

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v14

    int-to-float v14, v14

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v15

    int-to-float v15, v15

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v4

    int-to-float v4, v4

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    int-to-float v1, v1

    const/high16 v17, 0x7fc00000    # Float.NaN

    const/16 v18, 0x0

    const/high16 v19, -0x40800000    # -1.0f

    const-wide/16 v20, 0x0

    move v2, v4

    move-wide/from16 v25, v20

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, -0x40800000    # -1.0f

    const/high16 v33, -0x40800000    # -1.0f

    const/16 v34, 0x0

    .line 262
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_28

    .line 263
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 p3, v3

    move-object/from16 v3, v35

    check-cast v3, Lcom/jjoe64/graphview/a/d;

    .line 265
    invoke-interface {v3}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v35

    sub-double v35, v35, v11

    div-double v35, v35, v9

    move-wide/from16 v37, v9

    float-to-double v9, v14

    mul-double v35, v35, v9

    move-wide/from16 v39, v11

    .line 269
    invoke-interface {v3}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v11

    sub-double v41, v11, v7

    div-double v41, v41, v5

    move-wide/from16 v43, v5

    float-to-double v5, v15

    move-wide/from16 v45, v7

    mul-double v7, v5, v41

    const-wide/high16 v41, 0x3ff0000000000000L    # 1.0

    const v47, 0x43a68000    # 333.0f

    const-wide/16 v48, 0x0

    const/high16 v50, 0x3f800000    # 1.0f

    if-lez v18, :cond_21

    const/16 v29, 0x1

    cmpl-double v30, v7, v5

    if-lez v30, :cond_3

    sub-double v30, v5, v25

    sub-double v51, v35, v27

    mul-double v30, v30, v51

    sub-double v51, v7, v25

    div-double v30, v30, v51

    add-double v30, v27, v30

    move-wide/from16 v31, v30

    const/16 v30, 0x1

    goto :goto_3

    :cond_3
    move-wide v5, v7

    move-wide/from16 v31, v35

    const/16 v30, 0x0

    :goto_3
    cmpg-double v51, v31, v20

    if-gez v51, :cond_5

    cmpg-double v30, v27, v20

    if-gez v30, :cond_4

    const/16 v30, 0x1

    goto :goto_4

    :cond_4
    sub-double v51, v20, v27

    sub-double v5, v5, v25

    mul-double v51, v51, v5

    sub-double v31, v31, v27

    div-double v51, v51, v31

    add-double v5, v25, v51

    const/16 v30, 0x0

    :goto_4
    move-wide/from16 v51, v20

    const/16 v31, 0x1

    const/16 v32, 0x1

    goto :goto_5

    :cond_5
    move-wide/from16 v51, v31

    const/16 v31, 0x0

    move/from16 v32, v30

    const/16 v30, 0x0

    :goto_5
    cmpl-double v53, v51, v9

    if-lez v53, :cond_7

    cmpl-double v31, v27, v9

    if-lez v31, :cond_6

    const/16 v30, 0x1

    goto :goto_6

    :cond_6
    sub-double v31, v9, v27

    sub-double v5, v5, v25

    mul-double v31, v31, v5

    sub-double v51, v51, v27

    div-double v31, v31, v51

    add-double v5, v25, v31

    :goto_6
    move-wide/from16 v51, v9

    const/16 v31, 0x1

    const/16 v32, 0x1

    :cond_7
    cmpg-double v53, v25, v20

    if-gez v53, :cond_8

    sub-double v53, v20, v5

    sub-double v27, v51, v27

    mul-double v53, v53, v27

    sub-double v25, v25, v5

    div-double v53, v53, v25

    sub-double v27, v51, v53

    move-wide/from16 v53, v7

    move/from16 v25, v15

    move-wide/from16 v7, v20

    goto :goto_7

    :cond_8
    move-wide/from16 v53, v7

    move-wide/from16 v7, v25

    move/from16 v25, v15

    :goto_7
    double-to-float v15, v7

    add-float v50, v4, v50

    add-float v15, v15, v50

    cmpg-double v26, v27, v20

    if-gez v26, :cond_a

    if-nez v30, :cond_9

    sub-double v55, v20, v51

    sub-double v7, v5, v7

    mul-double v55, v55, v7

    sub-double v27, v27, v51

    div-double v55, v55, v27

    sub-double v7, v5, v55

    :cond_9
    move-wide/from16 v27, v20

    const/16 v31, 0x1

    :cond_a
    cmpl-double v26, v27, v9

    if-lez v26, :cond_c

    if-nez v30, :cond_b

    sub-double v55, v9, v51

    sub-double v7, v5, v7

    mul-double v55, v55, v7

    sub-double v27, v27, v51

    div-double v55, v55, v27

    sub-double v7, v5, v55

    :cond_b
    const/16 v31, 0x1

    goto :goto_8

    :cond_c
    move-wide/from16 v9, v27

    :goto_8
    double-to-float v7, v7

    add-float v7, v7, v50

    move-object/from16 v26, v3

    move v8, v4

    float-to-double v3, v1

    sub-double v9, v3, v9

    double-to-float v9, v9

    add-float/2addr v9, v14

    double-to-float v5, v5

    add-float v5, v5, v50

    sub-double v3, v3, v51

    double-to-float v3, v3

    add-float/2addr v3, v14

    cmpg-float v4, v5, v7

    if-gez v4, :cond_d

    const/16 v30, 0x1

    :cond_d
    if-nez v30, :cond_1c

    .line 351
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 353
    iget-boolean v4, v0, Lcom/jjoe64/graphview/a/e;->g:Z

    if-eqz v4, :cond_13

    move v4, v14

    move v6, v15

    .line 354
    iget-wide v14, v0, Lcom/jjoe64/graphview/a/e;->n:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_f

    iget-wide v14, v0, Lcom/jjoe64/graphview/a/e;->n:D

    cmpg-double v10, v14, v11

    if-gez v10, :cond_e

    goto :goto_9

    :cond_e
    move v2, v5

    move v10, v8

    move/from16 v27, v9

    move v8, v2

    goto :goto_c

    .line 355
    :cond_f
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move v10, v8

    move/from16 v27, v9

    .line 356
    iget-wide v8, v0, Lcom/jjoe64/graphview/a/e;->o:J

    cmp-long v28, v8, v48

    if-nez v28, :cond_10

    .line 358
    iput-wide v14, v0, Lcom/jjoe64/graphview/a/e;->o:J

    const/4 v8, 0x0

    .line 359
    iput v8, v0, Lcom/jjoe64/graphview/a/e;->q:I

    goto :goto_a

    .line 362
    :cond_10
    iget v8, v0, Lcom/jjoe64/graphview/a/e;->q:I

    const/16 v9, 0xf

    if-ge v8, v9, :cond_11

    .line 364
    iput-wide v14, v0, Lcom/jjoe64/graphview/a/e;->o:J

    add-int/lit8 v8, v8, 0x1

    .line 365
    iput v8, v0, Lcom/jjoe64/graphview/a/e;->q:I

    .line 368
    :cond_11
    :goto_a
    iget-wide v8, v0, Lcom/jjoe64/graphview/a/e;->o:J

    sub-long/2addr v14, v8

    long-to-float v8, v14

    div-float v8, v8, v47

    .line 369
    iget-object v9, v0, Lcom/jjoe64/graphview/a/e;->p:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v9, v8}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v9

    float-to-double v14, v8

    cmpg-double v8, v14, v41

    if-gtz v8, :cond_12

    sub-float/2addr v7, v2

    mul-float v7, v7, v9

    add-float/2addr v7, v2

    .line 372
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float v8, v5, v2

    mul-float v8, v8, v9

    add-float/2addr v8, v2

    .line 374
    invoke-static/range {p1 .. p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    goto :goto_c

    .line 377
    :cond_12
    iput-wide v11, v0, Lcom/jjoe64/graphview/a/e;->n:D

    goto :goto_b

    :cond_13
    move v10, v8

    move/from16 v27, v9

    move v4, v14

    move v6, v15

    :goto_b
    move v8, v5

    :goto_c
    if-nez v32, :cond_15

    .line 386
    iget-object v9, v0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 8042
    iget-boolean v9, v9, Lcom/jjoe64/graphview/a/e$a;->c:Z

    if-eqz v9, :cond_14

    .line 388
    invoke-virtual {v13}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    .line 389
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 390
    iget-object v11, v0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 9042
    iget v11, v11, Lcom/jjoe64/graphview/a/e$a;->d:F

    move-object/from16 v14, p2

    .line 390
    invoke-virtual {v14, v8, v3, v11, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 391
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_d

    :cond_14
    move-object/from16 v14, p2

    :goto_d
    move-object/from16 v9, v26

    .line 393
    invoke-virtual {v0, v5, v3, v9}, Lcom/jjoe64/graphview/a/e;->a(FFLcom/jjoe64/graphview/a/d;)V

    goto :goto_e

    :cond_15
    move-object/from16 v14, p2

    .line 396
    :goto_e
    iget-boolean v9, v0, Lcom/jjoe64/graphview/a/e;->r:Z

    if-eqz v9, :cond_16

    .line 397
    iget-object v9, v0, Lcom/jjoe64/graphview/a/e;->l:Landroid/graphics/Path;

    move/from16 v11, v27

    invoke-virtual {v9, v7, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_f

    :cond_16
    move/from16 v11, v27

    .line 400
    :goto_f
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_19

    sub-float v9, v5, v17

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v12, 0x3e99999a    # 0.3f

    cmpl-float v9, v9, v12

    if-lez v9, :cond_17

    goto :goto_10

    :cond_17
    if-eqz v34, :cond_18

    move/from16 v15, v22

    .line 416
    invoke-static {v15, v3}, Ljava/lang/Math;->min(FF)F

    move-result v22

    move/from16 v9, v23

    .line 417
    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v23

    move v5, v8

    const/16 v16, 0x0

    goto/16 :goto_13

    .line 421
    :cond_18
    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 422
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v23

    move v5, v8

    const/16 v16, 0x0

    const/16 v34, 0x1

    goto :goto_13

    :cond_19
    :goto_10
    move/from16 v15, v22

    move/from16 v9, v23

    .line 401
    iget-boolean v12, v0, Lcom/jjoe64/graphview/a/e;->r:Z

    if-eqz v12, :cond_1a

    .line 402
    iget-object v12, v0, Lcom/jjoe64/graphview/a/e;->l:Landroid/graphics/Path;

    invoke-virtual {v12, v8, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v26, v2

    const/16 v16, 0x0

    goto :goto_12

    :cond_1a
    const/16 v22, 0x2

    const/4 v12, 0x4

    move/from16 v26, v2

    if-eqz v34, :cond_1b

    new-array v2, v12, [F

    const/16 v16, 0x0

    aput v17, v2, v16

    aput v15, v2, v29

    aput v17, v2, v22

    const/16 v17, 0x3

    aput v9, v2, v17

    .line 407
    invoke-static {v14, v2, v13}, Lcom/jjoe64/graphview/a/e;->a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V

    const/16 v34, 0x0

    goto :goto_11

    :cond_1b
    const/16 v16, 0x0

    const/16 v17, 0x3

    :goto_11
    new-array v2, v12, [F

    aput v7, v2, v16

    aput v11, v2, v29

    aput v8, v2, v22

    aput v3, v2, v17

    .line 409
    invoke-static {v14, v2, v13}, Lcom/jjoe64/graphview/a/e;->a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V

    :goto_12
    move/from16 v17, v5

    move v5, v8

    move/from16 v23, v9

    move/from16 v22, v15

    move/from16 v2, v26

    goto :goto_13

    :cond_1c
    move v10, v8

    move v11, v9

    move v4, v14

    move v6, v15

    move/from16 v15, v22

    move/from16 v9, v23

    const/16 v16, 0x0

    move-object/from16 v14, p2

    move/from16 v23, v9

    move/from16 v22, v15

    .line 428
    :goto_13
    iget-object v8, v0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 10042
    iget-boolean v8, v8, Lcom/jjoe64/graphview/a/e$a;->b:Z

    if-eqz v8, :cond_20

    move/from16 v8, v24

    if-eqz v31, :cond_1e

    cmpl-float v9, v8, v19

    if-nez v9, :cond_1d

    .line 434
    iget-object v8, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    invoke-virtual {v8, v6, v11}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v24, v6

    move/from16 v33, v11

    goto :goto_14

    :cond_1d
    move/from16 v24, v8

    .line 437
    :goto_14
    iget-object v6, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1e
    cmpl-float v6, v24, v19

    if-nez v6, :cond_1f

    .line 442
    iget-object v6, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v11}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v24, v7

    move/from16 v33, v11

    .line 444
    :cond_1f
    iget-object v6, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 445
    iget-object v6, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_15

    :cond_20
    move/from16 v8, v24

    :goto_15
    float-to-double v5, v5

    float-to-double v7, v3

    move-wide/from16 v31, v5

    move-wide/from16 v29, v7

    move v6, v4

    goto/16 :goto_18

    :cond_21
    move-object v9, v3

    move v10, v4

    move-wide/from16 v53, v7

    move v4, v14

    move/from16 v25, v15

    move/from16 v15, v22

    move/from16 v3, v23

    move/from16 v8, v24

    const/16 v16, 0x0

    move-object/from16 v14, p2

    .line 450
    iget-object v5, v0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 11042
    iget-boolean v5, v5, Lcom/jjoe64/graphview/a/e$a;->c:Z

    if-eqz v5, :cond_27

    move-wide/from16 v5, v53

    double-to-float v7, v5

    add-float v22, v10, v50

    add-float v7, v7, v22

    float-to-double v5, v1

    sub-double v5, v5, v35

    double-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v6, v7, v10

    if-ltz v6, :cond_27

    add-float v6, v1, v4

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_27

    .line 456
    iget-boolean v6, v0, Lcom/jjoe64/graphview/a/e;->g:Z

    move/from16 v22, v3

    if-eqz v6, :cond_25

    move v6, v4

    iget-wide v3, v0, Lcom/jjoe64/graphview/a/e;->n:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_22

    iget-wide v3, v0, Lcom/jjoe64/graphview/a/e;->n:D

    cmpg-double v23, v3, v11

    if-gez v23, :cond_26

    .line 457
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move/from16 v23, v8

    move-object/from16 v26, v9

    .line 458
    iget-wide v8, v0, Lcom/jjoe64/graphview/a/e;->o:J

    cmp-long v24, v8, v48

    if-nez v24, :cond_23

    .line 460
    iput-wide v3, v0, Lcom/jjoe64/graphview/a/e;->o:J

    .line 462
    :cond_23
    iget-wide v8, v0, Lcom/jjoe64/graphview/a/e;->o:J

    sub-long/2addr v3, v8

    long-to-float v3, v3

    div-float v3, v3, v47

    .line 463
    iget-object v4, v0, Lcom/jjoe64/graphview/a/e;->p:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v4

    float-to-double v8, v3

    cmpg-double v3, v8, v41

    if-gtz v3, :cond_24

    sub-float/2addr v7, v2

    mul-float v7, v7, v4

    add-float/2addr v7, v2

    .line 466
    invoke-static/range {p1 .. p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    goto :goto_16

    .line 469
    :cond_24
    iput-wide v11, v0, Lcom/jjoe64/graphview/a/e;->n:D

    goto :goto_16

    :cond_25
    move v6, v4

    :cond_26
    move/from16 v23, v8

    move-object/from16 v26, v9

    .line 474
    :goto_16
    invoke-virtual {v13}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    .line 475
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 476
    iget-object v4, v0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 12042
    iget v4, v4, Lcom/jjoe64/graphview/a/e$a;->d:F

    .line 476
    invoke-virtual {v14, v7, v5, v4, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 477
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v3, v26

    .line 478
    invoke-virtual {v0, v7, v5, v3}, Lcom/jjoe64/graphview/a/e;->a(FFLcom/jjoe64/graphview/a/d;)V

    goto :goto_17

    :cond_27
    move/from16 v22, v3

    move v6, v4

    move/from16 v23, v8

    :goto_17
    move/from16 v24, v23

    move/from16 v23, v22

    move/from16 v22, v15

    :goto_18
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v3, p3

    move v14, v6

    move v4, v10

    move/from16 v15, v25

    move-wide/from16 v27, v35

    move-wide/from16 v9, v37

    move-wide/from16 v11, v39

    move-wide/from16 v5, v43

    move-wide/from16 v7, v45

    move-wide/from16 v25, v53

    goto/16 :goto_2

    :cond_28
    move v6, v14

    move/from16 v23, v24

    move-object/from16 v14, p2

    .line 486
    iget-boolean v2, v0, Lcom/jjoe64/graphview/a/e;->r:Z

    if-eqz v2, :cond_29

    .line 488
    iget-object v2, v0, Lcom/jjoe64/graphview/a/e;->l:Landroid/graphics/Path;

    invoke-virtual {v14, v2, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 491
    :cond_29
    iget-object v2, v0, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 13042
    iget-boolean v2, v2, Lcom/jjoe64/graphview/a/e$a;->b:Z

    if-eqz v2, :cond_2c

    cmpl-float v2, v23, v19

    if-eqz v2, :cond_2c

    add-float/2addr v1, v6

    float-to-double v2, v1

    cmpl-double v4, v29, v2

    if-eqz v4, :cond_2a

    .line 495
    iget-object v2, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    move-wide/from16 v3, v31

    double-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    :cond_2a
    iget-object v2, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    move/from16 v3, v23

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v2, v33

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_2b

    .line 500
    iget-object v1, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 503
    :cond_2b
    iget-object v1, v0, Lcom/jjoe64/graphview/a/e;->k:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/jjoe64/graphview/a/e;->j:Landroid/graphics/Paint;

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2c
    return-void
.end method

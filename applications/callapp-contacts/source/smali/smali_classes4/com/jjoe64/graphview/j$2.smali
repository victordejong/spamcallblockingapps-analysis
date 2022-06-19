.class final Lcom/jjoe64/graphview/j$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jjoe64/graphview/j;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/j;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 298
    iget-object p1, p0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 1049
    iget-object p1, p1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1656
    iget-boolean p1, p1, Lcom/jjoe64/graphview/GraphView;->e:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 2049
    iget-boolean p1, p1, Lcom/jjoe64/graphview/j;->k:Z

    if-eqz p1, :cond_2

    .line 302
    iget-object p1, p0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-boolean p1, p1, Lcom/jjoe64/graphview/j;->j:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 3927
    iget-object v1, p1, Lcom/jjoe64/graphview/j;->s:Landroidx/core/widget/d;

    invoke-virtual {v1}, Landroidx/core/widget/d;->a()Z

    .line 3928
    iget-object v1, p1, Lcom/jjoe64/graphview/j;->t:Landroidx/core/widget/d;

    invoke-virtual {v1}, Landroidx/core/widget/d;->a()Z

    .line 3929
    iget-object v1, p1, Lcom/jjoe64/graphview/j;->q:Landroidx/core/widget/d;

    invoke-virtual {v1}, Landroidx/core/widget/d;->a()Z

    .line 3930
    iget-object p1, p1, Lcom/jjoe64/graphview/j;->r:Landroidx/core/widget/d;

    invoke-virtual {p1}, Landroidx/core/widget/d;->a()Z

    .line 307
    iget-object p1, p0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object p1, p1, Lcom/jjoe64/graphview/j;->p:Landroid/widget/OverScroller;

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 308
    iget-object p1, p0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 4049
    iget-object p1, p1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 308
    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 28

    move-object/from16 v0, p0

    .line 315
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 5049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 5656
    iget-boolean v1, v1, Lcom/jjoe64/graphview/GraphView;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 318
    :cond_0
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 6049
    iget-boolean v1, v1, Lcom/jjoe64/graphview/j;->k:Z

    if-eqz v1, :cond_18

    .line 318
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-boolean v1, v1, Lcom/jjoe64/graphview/j;->j:Z

    if-eqz v1, :cond_1

    goto/16 :goto_b

    :cond_1
    move/from16 v1, p3

    float-to-double v4, v1

    .line 328
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/g;->a()D

    move-result-wide v6

    mul-double v4, v4, v6

    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 7049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 328
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v4, v6

    move/from16 v1, p4

    float-to-double v6, v1

    .line 329
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/g;->b()D

    move-result-wide v8

    mul-double v8, v8, v6

    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 8049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 329
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v8, v10

    .line 332
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v10, v1, Lcom/jjoe64/graphview/g;->a:D

    .line 333
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 9049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 333
    iget-wide v12, v1, Lcom/jjoe64/graphview/g;->a:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 10049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 334
    iget-wide v12, v1, Lcom/jjoe64/graphview/g;->a:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 336
    :cond_2
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v12, v1, Lcom/jjoe64/graphview/g;->b:D

    .line 337
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 11049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 337
    iget-wide v14, v1, Lcom/jjoe64/graphview/g;->b:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    .line 338
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 12049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 338
    iget-wide v14, v1, Lcom/jjoe64/graphview/g;->b:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    :cond_3
    sub-double v14, v12, v10

    .line 342
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v2, v1, Lcom/jjoe64/graphview/g;->d:D

    .line 343
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 13049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    move-wide/from16 p3, v6

    .line 343
    iget-wide v6, v1, Lcom/jjoe64/graphview/g;->d:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4

    .line 344
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 14049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 344
    iget-wide v6, v1, Lcom/jjoe64/graphview/g;->d:D

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 346
    :cond_4
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v6, v1, Lcom/jjoe64/graphview/g;->c:D

    .line 347
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 15049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    move-wide/from16 v16, v12

    .line 347
    iget-wide v12, v1, Lcom/jjoe64/graphview/g;->c:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_5

    .line 348
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 16049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 348
    iget-wide v12, v1, Lcom/jjoe64/graphview/g;->c:D

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    :cond_5
    sub-double v12, v6, v2

    .line 352
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/g;->a()D

    move-result-wide v18

    div-double v18, v14, v18

    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 17049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 352
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v1

    move-wide/from16 v20, v6

    int-to-double v6, v1

    mul-double v6, v6, v18

    double-to-int v1, v6

    .line 353
    iget-object v6, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v6, v6, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v6}, Lcom/jjoe64/graphview/g;->b()D

    move-result-wide v6

    div-double v6, v12, v6

    move-wide/from16 v18, v12

    iget-object v12, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 18049
    iget-object v12, v12, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 353
    invoke-virtual {v12}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v12

    int-to-double v12, v12

    mul-double v6, v6, v12

    double-to-int v6, v6

    int-to-double v12, v1

    .line 355
    iget-object v7, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v7, v7, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    move-wide/from16 v22, v2

    move v3, v1

    iget-wide v1, v7, Lcom/jjoe64/graphview/g;->a:D

    add-double/2addr v1, v4

    sub-double/2addr v1, v10

    mul-double v12, v12, v1

    div-double/2addr v12, v14

    double-to-int v1, v12

    int-to-double v12, v6

    .line 359
    iget-object v2, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v2, v2, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v14, v2, Lcom/jjoe64/graphview/g;->d:D

    add-double/2addr v14, v8

    sub-double v14, v14, v22

    mul-double v12, v12, v14

    div-double v12, v12, v18

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    mul-double v12, v12, v14

    double-to-int v2, v12

    .line 362
    iget-object v7, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v7, v7, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v12, v7, Lcom/jjoe64/graphview/g;->a:D

    cmpl-double v7, v12, v10

    if-gtz v7, :cond_7

    iget-object v7, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v7, v7, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v12, v7, Lcom/jjoe64/graphview/g;->b:D

    cmpg-double v7, v12, v16

    if-gez v7, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v7, 0x1

    .line 364
    :goto_1
    iget-object v12, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v12, v12, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v12, v12, Lcom/jjoe64/graphview/g;->d:D

    cmpl-double v14, v12, v22

    if-gtz v14, :cond_9

    iget-object v12, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v12, v12, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v12, v12, Lcom/jjoe64/graphview/g;->c:D

    cmpg-double v14, v12, v20

    if-gez v14, :cond_8

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v12, 0x1

    .line 367
    :goto_3
    iget-object v13, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 19049
    iget-object v13, v13, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 367
    iget-object v13, v13, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_d

    .line 372
    iget-object v14, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 20049
    iget-object v14, v14, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 372
    iget-object v14, v14, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v14, v14, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    invoke-virtual {v14}, Lcom/jjoe64/graphview/g;->b()D

    move-result-wide v14

    move-wide/from16 v24, p3

    mul-double v14, v14, v24

    move/from16 v24, v6

    iget-object v6, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 21049
    iget-object v6, v6, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 372
    invoke-virtual {v6}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v6

    move/from16 v25, v2

    move/from16 p3, v3

    int-to-double v2, v6

    div-double v2, v14, v2

    .line 373
    iget-object v6, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 22049
    iget-object v6, v6, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 373
    iget-object v6, v6, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v6, v6, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v14, v6, Lcom/jjoe64/graphview/g;->d:D

    iget-object v6, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 23049
    iget-object v6, v6, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 373
    iget-object v6, v6, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v6, v6, Lcom/jjoe64/graphview/h;->d:Lcom/jjoe64/graphview/g;

    move-wide/from16 v26, v2

    iget-wide v2, v6, Lcom/jjoe64/graphview/g;->d:D

    cmpl-double v6, v14, v2

    if-gtz v6, :cond_c

    iget-object v2, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 24049
    iget-object v2, v2, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 374
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v2, v2, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v2, v2, Lcom/jjoe64/graphview/g;->c:D

    iget-object v6, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 25049
    iget-object v6, v6, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 374
    iget-object v6, v6, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v6, v6, Lcom/jjoe64/graphview/h;->d:Lcom/jjoe64/graphview/g;

    iget-wide v14, v6, Lcom/jjoe64/graphview/g;->c:D

    cmpg-double v6, v2, v14

    if-gez v6, :cond_b

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v2, 0x1

    :goto_6
    or-int/2addr v12, v2

    move-wide/from16 v2, v26

    goto :goto_7

    :cond_d
    move/from16 v25, v2

    move/from16 p3, v3

    move/from16 v24, v6

    const-wide/16 v2, 0x0

    .line 377
    :goto_7
    iget-object v6, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 26049
    iget-boolean v6, v6, Lcom/jjoe64/graphview/j;->m:Z

    and-int/2addr v6, v12

    if-eqz v7, :cond_10

    const-wide/16 v14, 0x0

    cmpg-double v12, v4, v14

    if-gez v12, :cond_e

    .line 381
    iget-object v12, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v12, v12, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v14, v12, Lcom/jjoe64/graphview/g;->a:D

    add-double/2addr v14, v4

    sub-double/2addr v14, v10

    const-wide/16 v10, 0x0

    cmpg-double v12, v14, v10

    if-gez v12, :cond_f

    goto :goto_8

    :cond_e
    move-wide v10, v14

    .line 386
    iget-object v12, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v12, v12, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v14, v12, Lcom/jjoe64/graphview/g;->b:D

    add-double/2addr v14, v4

    sub-double v14, v14, v16

    cmpl-double v12, v14, v10

    if-lez v12, :cond_f

    :goto_8
    sub-double/2addr v4, v14

    .line 392
    :cond_f
    iget-object v10, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v10, v10, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v11, v10, Lcom/jjoe64/graphview/g;->a:D

    add-double/2addr v11, v4

    iput-wide v11, v10, Lcom/jjoe64/graphview/g;->a:D

    .line 393
    iget-object v10, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v10, v10, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v11, v10, Lcom/jjoe64/graphview/g;->b:D

    add-double/2addr v11, v4

    iput-wide v11, v10, Lcom/jjoe64/graphview/g;->b:D

    .line 396
    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v4, v4, Lcom/jjoe64/graphview/j;->w:Lcom/jjoe64/graphview/j$b;

    if-eqz v4, :cond_10

    .line 397
    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jjoe64/graphview/j;->a(Z)D

    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    invoke-virtual {v4, v5}, Lcom/jjoe64/graphview/j;->b(Z)D

    sget v4, Lcom/jjoe64/graphview/j$b$a;->a:I

    :cond_10
    if-eqz v6, :cond_13

    if-nez v13, :cond_12

    const-wide/16 v4, 0x0

    cmpg-double v10, v8, v4

    if-gez v10, :cond_11

    .line 404
    iget-object v10, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v10, v10, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v10, v10, Lcom/jjoe64/graphview/g;->d:D

    add-double/2addr v10, v8

    sub-double v10, v10, v22

    cmpg-double v12, v10, v4

    if-gez v12, :cond_12

    goto :goto_9

    .line 409
    :cond_11
    iget-object v10, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v10, v10, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v10, v10, Lcom/jjoe64/graphview/g;->c:D

    add-double/2addr v10, v8

    sub-double v10, v10, v20

    cmpl-double v12, v10, v4

    if-lez v12, :cond_12

    :goto_9
    sub-double/2addr v8, v10

    .line 416
    :cond_12
    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v4, v4, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v10, v4, Lcom/jjoe64/graphview/g;->c:D

    add-double/2addr v10, v8

    iput-wide v10, v4, Lcom/jjoe64/graphview/g;->c:D

    .line 417
    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    iget-object v4, v4, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v10, v4, Lcom/jjoe64/graphview/g;->d:D

    add-double/2addr v10, v8

    iput-wide v10, v4, Lcom/jjoe64/graphview/g;->d:D

    if-eqz v13, :cond_13

    .line 421
    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 27049
    iget-object v4, v4, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 421
    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v4, v4, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v8, v4, Lcom/jjoe64/graphview/g;->c:D

    add-double/2addr v8, v2

    iput-wide v8, v4, Lcom/jjoe64/graphview/g;->c:D

    .line 422
    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 28049
    iget-object v4, v4, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 422
    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v4, v4, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v8, v4, Lcom/jjoe64/graphview/g;->d:D

    add-double/2addr v8, v2

    iput-wide v8, v4, Lcom/jjoe64/graphview/g;->d:D

    :cond_13
    if-eqz v7, :cond_14

    if-gez v1, :cond_14

    .line 427
    iget-object v2, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 29049
    iget-object v2, v2, Lcom/jjoe64/graphview/j;->s:Landroidx/core/widget/d;

    int-to-float v3, v1

    .line 427
    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 30049
    iget-object v4, v4, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 427
    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/core/widget/d;->a(F)Z

    :cond_14
    if-nez v13, :cond_15

    if-eqz v6, :cond_15

    if-gez v25, :cond_15

    .line 430
    iget-object v2, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 31049
    iget-object v2, v2, Lcom/jjoe64/graphview/j;->r:Landroidx/core/widget/d;

    move/from16 v3, v25

    int-to-float v4, v3

    .line 430
    iget-object v5, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 32049
    iget-object v5, v5, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 430
    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroidx/core/widget/d;->a(F)Z

    goto :goto_a

    :cond_15
    move/from16 v3, v25

    :goto_a
    if-eqz v7, :cond_16

    .line 432
    iget-object v2, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 33049
    iget-object v2, v2, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 432
    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v2

    sub-int v2, p3, v2

    if-le v1, v2, :cond_16

    .line 433
    iget-object v2, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 34049
    iget-object v2, v2, Lcom/jjoe64/graphview/j;->t:Landroidx/core/widget/d;

    sub-int v1, v1, p3

    .line 433
    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 35049
    iget-object v4, v4, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 433
    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 36049
    iget-object v4, v4, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 434
    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 433
    invoke-virtual {v2, v1}, Landroidx/core/widget/d;->a(F)Z

    :cond_16
    if-nez v13, :cond_17

    if-eqz v6, :cond_17

    .line 436
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 37049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 436
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v1

    sub-int v6, v24, v1

    if-le v3, v6, :cond_17

    .line 437
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 38049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->q:Landroidx/core/widget/d;

    sub-int v2, v3, v24

    .line 437
    iget-object v3, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 39049
    iget-object v3, v3, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 437
    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 40049
    iget-object v3, v3, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 438
    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 437
    invoke-virtual {v1, v2}, Landroidx/core/widget/d;->a(F)Z

    .line 442
    :cond_17
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 41049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    const/4 v2, 0x1

    .line 442
    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/GraphView;->a(Z)V

    .line 444
    iget-object v1, v0, Lcom/jjoe64/graphview/j$2;->a:Lcom/jjoe64/graphview/j;

    .line 42049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 444
    invoke-static {v1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return v2

    :cond_18
    :goto_b
    const/4 v1, 0x0

    return v1
.end method

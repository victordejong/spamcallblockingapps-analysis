.class public final Landroidx/constraintlayout/a/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroidx/constraintlayout/a/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    sput-object v0, Landroidx/constraintlayout/a/a/a/h;->a:Landroidx/constraintlayout/a/a/a/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;)V
    .locals 6

    .line 40020
    iget v0, p1, Landroidx/constraintlayout/a/a/e;->ai:F

    .line 535
    iget-object v1, p1, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v1

    .line 536
    iget-object v2, p1, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    .line 537
    iget-object v3, p1, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    .line 538
    iget-object v4, p1, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 544
    :goto_0
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_2

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    .line 556
    :cond_2
    invoke-virtual {p1, v4, v5}, Landroidx/constraintlayout/a/a/e;->b(II)V

    .line 557
    invoke-static {p1, p0}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;Z)V
    .locals 6

    .line 40010
    iget v0, p1, Landroidx/constraintlayout/a/a/e;->ah:F

    .line 500
    iget-object v1, p1, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v1

    .line 501
    iget-object v2, p1, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    .line 502
    iget-object v3, p1, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    .line 503
    iget-object v4, p1, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 509
    :goto_0
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_2

    sub-int v4, v0, v3

    .line 521
    :cond_2
    invoke-virtual {p1, v0, v4}, Landroidx/constraintlayout/a/a/e;->a(II)V

    .line 522
    invoke-static {p1, p0, p2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/a;Landroidx/constraintlayout/a/a/a/b$b;IZ)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 213
    invoke-static {p0, p1, p3}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    return-void

    .line 215
    :cond_0
    invoke-static {p0, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    :cond_1
    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V
    .locals 13

    .line 353
    instance-of v0, p0, Landroidx/constraintlayout/a/a/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    .line 355
    sget v1, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {p0, p1, v0, v1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    .line 358
    :cond_0
    sget-object v0, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v0

    .line 359
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    .line 360
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    .line 361
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v3

    .line 23048
    iget-object v4, v0, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_b

    .line 23086
    iget-boolean v4, v0, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v4, :cond_b

    .line 24048
    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 364
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/d;

    .line 365
    iget-object v9, v4, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    .line 368
    invoke-static {v9}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;)Z

    move-result v10

    .line 369
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    .line 370
    new-instance v11, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v11}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    .line 371
    sget v12, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {v9, p1, v11, v12}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    .line 24975
    :cond_2
    iget-object v11, v9, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v11, v11, v8

    .line 374
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v11, v12, :cond_8

    if-eqz v10, :cond_3

    goto :goto_2

    .line 25975
    :cond_3
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v10, v10, v8

    .line 400
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v10, v11, :cond_1

    iget v10, v9, Landroidx/constraintlayout/a/a/e;->v:I

    if-ltz v10, :cond_1

    iget v10, v9, Landroidx/constraintlayout/a/a/e;->u:I

    if-ltz v10, :cond_1

    .line 26714
    iget v10, v9, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v10, v6, :cond_4

    .line 402
    iget v10, v9, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez v10, :cond_1

    .line 27302
    iget v10, v9, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v10, v10, v5

    if-nez v10, :cond_1

    .line 403
    :cond_4
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v10

    if-nez v10, :cond_1

    .line 28248
    iget-boolean v10, v9, Landroidx/constraintlayout/a/a/e;->E:Z

    if-nez v10, :cond_1

    .line 404
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v10, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 29086
    iget-boolean v10, v10, Landroidx/constraintlayout/a/a/d;->c:Z

    if-nez v10, :cond_6

    .line 404
    :cond_5
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_7

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v4, :cond_7

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 30086
    iget-boolean v4, v4, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v4, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 406
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    invoke-static {p0, p1, v9}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;)V

    goto/16 :goto_0

    .line 376
    :cond_8
    :goto_2
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v10

    if-nez v10, :cond_1

    .line 383
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_9

    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v10, :cond_9

    .line 384
    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    add-int/2addr v4, v2

    .line 385
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v10

    add-int/2addr v10, v4

    .line 386
    invoke-virtual {v9, v4, v10}, Landroidx/constraintlayout/a/a/e;->b(II)V

    .line 387
    invoke-static {v9, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    goto/16 :goto_0

    .line 388
    :cond_9
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_a

    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v10, :cond_a

    .line 389
    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    .line 390
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v10

    sub-int v10, v4, v10

    .line 391
    invoke-virtual {v9, v10, v4}, Landroidx/constraintlayout/a/a/e;->b(II)V

    .line 392
    invoke-static {v9, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    goto/16 :goto_0

    .line 393
    :cond_a
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_1

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v4, :cond_1

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 25086
    iget-boolean v4, v4, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v4, :cond_1

    .line 395
    invoke-static {p1, v9}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;)V

    goto/16 :goto_0

    .line 412
    :cond_b
    instance-of v0, p0, Landroidx/constraintlayout/a/a/h;

    if-eqz v0, :cond_c

    return-void

    .line 31048
    :cond_c
    iget-object v0, v1, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_17

    .line 31086
    iget-boolean v0, v1, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v0, :cond_17

    .line 32048
    iget-object v0, v1, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 416
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/d;

    .line 417
    iget-object v2, v1, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    .line 418
    invoke-static {v2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;)Z

    move-result v4

    .line 419
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v4, :cond_e

    .line 420
    new-instance v9, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v9}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    .line 421
    sget v10, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {v2, p1, v9, v10}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    .line 426
    :cond_e
    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    if-ne v1, v9, :cond_f

    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v9, :cond_f

    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 32086
    iget-boolean v9, v9, Landroidx/constraintlayout/a/a/d;->c:Z

    if-nez v9, :cond_10

    .line 426
    :cond_f
    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    if-ne v1, v9, :cond_11

    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v9, :cond_11

    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 33086
    iget-boolean v9, v9, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v9, :cond_11

    :cond_10
    const/4 v9, 0x1

    goto :goto_4

    :cond_11
    const/4 v9, 0x0

    .line 33975
    :goto_4
    iget-object v10, v2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v10, v10, v8

    .line 428
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v10, v11, :cond_14

    if-eqz v4, :cond_12

    goto :goto_5

    .line 34975
    :cond_12
    iget-object v1, v2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v1, v1, v8

    .line 450
    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v1, v4, :cond_d

    iget v1, v2, Landroidx/constraintlayout/a/a/e;->v:I

    if-ltz v1, :cond_d

    iget v1, v2, Landroidx/constraintlayout/a/a/e;->u:I

    if-ltz v1, :cond_d

    .line 35714
    iget v1, v2, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v1, v6, :cond_13

    .line 452
    iget v1, v2, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez v1, :cond_d

    .line 36302
    iget v1, v2, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_d

    .line 453
    :cond_13
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v1

    if-nez v1, :cond_d

    .line 37248
    iget-boolean v1, v2, Landroidx/constraintlayout/a/a/e;->E:Z

    if-nez v1, :cond_d

    if-eqz v9, :cond_d

    .line 454
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v1

    if-nez v1, :cond_d

    .line 455
    invoke-static {p0, p1, v2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;)V

    goto/16 :goto_3

    .line 430
    :cond_14
    :goto_5
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v4

    if-nez v4, :cond_d

    .line 437
    iget-object v4, v2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    if-ne v1, v4, :cond_15

    iget-object v4, v2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v4, :cond_15

    .line 438
    iget-object v1, v2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    add-int/2addr v1, v3

    .line 439
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v4

    add-int/2addr v4, v1

    .line 440
    invoke-virtual {v2, v1, v4}, Landroidx/constraintlayout/a/a/e;->b(II)V

    .line 441
    invoke-static {v2, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    goto/16 :goto_3

    .line 442
    :cond_15
    iget-object v4, v2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    if-ne v1, v4, :cond_16

    iget-object v1, v2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v1, :cond_16

    .line 443
    iget-object v1, v2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    sub-int v1, v3, v1

    .line 444
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v4

    sub-int v4, v1, v4

    .line 445
    invoke-virtual {v2, v4, v1}, Landroidx/constraintlayout/a/a/e;->b(II)V

    .line 446
    invoke-static {v2, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    goto/16 :goto_3

    :cond_16
    if-eqz v9, :cond_d

    .line 447
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v1

    if-nez v1, :cond_d

    .line 448
    invoke-static {p1, v2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;)V

    goto/16 :goto_3

    .line 461
    :cond_17
    sget-object v0, Landroidx/constraintlayout/a/a/d$a;->BASELINE:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object p0

    .line 38048
    iget-object v0, p0, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_1b

    .line 38086
    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v0, :cond_1b

    .line 463
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v0

    .line 39048
    iget-object p0, p0, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 464
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/d;

    .line 465
    iget-object v2, v1, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    .line 466
    invoke-static {v2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;)Z

    move-result v3

    .line 467
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v3, :cond_19

    .line 468
    new-instance v4, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v4}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    .line 469
    sget v5, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {v2, p1, v4, v5}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    .line 39975
    :cond_19
    iget-object v4, v2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v4, v4, v8

    .line 471
    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, v5, :cond_1a

    if-eqz v3, :cond_18

    .line 473
    :cond_1a
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v3

    if-nez v3, :cond_18

    .line 480
    iget-object v3, v2, Landroidx/constraintlayout/a/a/e;->L:Landroidx/constraintlayout/a/a/d;

    if-ne v1, v3, :cond_18

    .line 481
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/a/a/e;->b(I)V

    .line 482
    :try_start_0
    invoke-static {v2, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_1b
    return-void

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;)V
    .locals 7

    .line 43020
    iget v0, p2, Landroidx/constraintlayout/a/a/e;->ai:F

    .line 610
    iget-object v1, p2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    .line 611
    iget-object v2, p2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    iget-object v3, p2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    .line 613
    invoke-virtual {p2}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v3

    .line 43714
    iget v4, p2, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 615
    iget v4, p2, Landroidx/constraintlayout/a/a/e;->p:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 617
    instance-of v3, p0, Landroidx/constraintlayout/a/a/f;

    if-eqz v3, :cond_0

    .line 618
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result p0

    goto :goto_0

    .line 44620
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 620
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result p0

    :goto_0
    mul-float v3, v0, v6

    int-to-float p0, p0

    mul-float v3, v3, p0

    float-to-int v3, v3

    goto :goto_1

    .line 623
    :cond_1
    iget p0, p2, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez p0, :cond_2

    sub-int v3, v2, v1

    .line 626
    :cond_2
    :goto_1
    iget p0, p2, Landroidx/constraintlayout/a/a/e;->u:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 627
    iget p0, p2, Landroidx/constraintlayout/a/a/e;->v:I

    if-lez p0, :cond_3

    .line 628
    iget p0, p2, Landroidx/constraintlayout/a/a/e;->v:I

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p0, v2

    mul-float v0, v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v3, v1

    .line 635
    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/a/a/e;->b(II)V

    .line 636
    invoke-static {p2, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    :cond_4
    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;Z)V
    .locals 7

    .line 41010
    iget v0, p2, Landroidx/constraintlayout/a/a/e;->ah:F

    .line 570
    iget-object v1, p2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    .line 571
    iget-object v2, p2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    iget-object v3, p2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    .line 573
    invoke-virtual {p2}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v3

    .line 41714
    iget v4, p2, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 575
    iget v4, p2, Landroidx/constraintlayout/a/a/e;->o:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 577
    instance-of v3, p0, Landroidx/constraintlayout/a/a/f;

    if-eqz v3, :cond_0

    .line 578
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result p0

    goto :goto_0

    .line 42620
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 580
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result p0

    .line 43010
    :goto_0
    iget v3, p2, Landroidx/constraintlayout/a/a/e;->ah:F

    mul-float v3, v3, v6

    int-to-float p0, p0

    mul-float v3, v3, p0

    float-to-int v3, v3

    goto :goto_1

    .line 583
    :cond_1
    iget p0, p2, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez p0, :cond_2

    sub-int v3, v2, v1

    .line 586
    :cond_2
    :goto_1
    iget p0, p2, Landroidx/constraintlayout/a/a/e;->r:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 587
    iget p0, p2, Landroidx/constraintlayout/a/a/e;->s:I

    if-lez p0, :cond_3

    .line 588
    iget p0, p2, Landroidx/constraintlayout/a/a/e;->s:I

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p0, v2

    mul-float v0, v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v3, v1

    .line 595
    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/a/a/e;->a(II)V

    .line 596
    invoke-static {p2, p1, p3}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    :cond_4
    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V
    .locals 13

    .line 232
    instance-of v0, p0, Landroidx/constraintlayout/a/a/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    .line 234
    sget v1, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {p0, p1, v0, v1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    .line 237
    :cond_0
    sget-object v0, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v0

    .line 238
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    .line 239
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v2

    .line 240
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v3

    .line 8048
    iget-object v4, v0, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_b

    .line 8086
    iget-boolean v4, v0, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v4, :cond_b

    .line 9048
    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 243
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/d;

    .line 244
    iget-object v9, v4, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    .line 247
    invoke-static {v9}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;)Z

    move-result v10

    .line 248
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    .line 249
    new-instance v11, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v11}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    .line 250
    sget v12, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {v9, p1, v11, v12}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    .line 9966
    :cond_2
    iget-object v11, v9, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v11, v11, v8

    .line 253
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v11, v12, :cond_8

    if-eqz v10, :cond_3

    goto :goto_2

    .line 10966
    :cond_3
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v10, v10, v8

    .line 279
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v10, v11, :cond_1

    iget v10, v9, Landroidx/constraintlayout/a/a/e;->s:I

    if-ltz v10, :cond_1

    iget v10, v9, Landroidx/constraintlayout/a/a/e;->r:I

    if-ltz v10, :cond_1

    .line 11714
    iget v10, v9, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v10, v6, :cond_4

    .line 281
    iget v10, v9, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v10, :cond_1

    .line 12302
    iget v10, v9, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v10, v10, v5

    if-nez v10, :cond_1

    .line 282
    :cond_4
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v10

    if-nez v10, :cond_1

    .line 13248
    iget-boolean v10, v9, Landroidx/constraintlayout/a/a/e;->E:Z

    if-nez v10, :cond_1

    .line 283
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v10, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 14086
    iget-boolean v10, v10, Landroidx/constraintlayout/a/a/d;->c:Z

    if-nez v10, :cond_6

    .line 283
    :cond_5
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_7

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v4, :cond_7

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 15086
    iget-boolean v4, v4, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v4, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    invoke-static {p0, p1, v9, p2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;Z)V

    goto/16 :goto_0

    .line 255
    :cond_8
    :goto_2
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v10

    if-nez v10, :cond_1

    .line 262
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_9

    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v10, :cond_9

    .line 263
    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    add-int/2addr v4, v2

    .line 264
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v10

    add-int/2addr v10, v4

    .line 265
    invoke-virtual {v9, v4, v10}, Landroidx/constraintlayout/a/a/e;->a(II)V

    .line 266
    invoke-static {v9, p1, p2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    goto/16 :goto_0

    .line 267
    :cond_9
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_a

    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v10, v10, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v10, :cond_a

    .line 268
    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    .line 269
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v10

    sub-int v10, v4, v10

    .line 270
    invoke-virtual {v9, v10, v4}, Landroidx/constraintlayout/a/a/e;->a(II)V

    .line 271
    invoke-static {v9, p1, p2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    goto/16 :goto_0

    .line 272
    :cond_a
    iget-object v10, v9, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    if-ne v4, v10, :cond_1

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v4, :cond_1

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 10086
    iget-boolean v4, v4, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v4, :cond_1

    .line 273
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    invoke-static {p1, v9, p2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;Z)V

    goto/16 :goto_0

    .line 291
    :cond_b
    instance-of v0, p0, Landroidx/constraintlayout/a/a/h;

    if-eqz v0, :cond_c

    return-void

    .line 16048
    :cond_c
    iget-object v0, v1, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_17

    .line 16086
    iget-boolean v0, v1, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v0, :cond_17

    .line 17048
    iget-object v0, v1, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 295
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/d;

    .line 296
    iget-object v2, v1, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    .line 297
    invoke-static {v2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;)Z

    move-result v4

    .line 298
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v4, :cond_e

    .line 299
    new-instance v9, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v9}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    .line 300
    sget v10, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {v2, p1, v9, v10}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    .line 305
    :cond_e
    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    if-ne v1, v9, :cond_f

    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v9, :cond_f

    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 17086
    iget-boolean v9, v9, Landroidx/constraintlayout/a/a/d;->c:Z

    if-nez v9, :cond_10

    .line 305
    :cond_f
    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    if-ne v1, v9, :cond_11

    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v9, :cond_11

    iget-object v9, v2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 18086
    iget-boolean v9, v9, Landroidx/constraintlayout/a/a/d;->c:Z

    if-eqz v9, :cond_11

    :cond_10
    const/4 v9, 0x1

    goto :goto_4

    :cond_11
    const/4 v9, 0x0

    .line 18966
    :goto_4
    iget-object v10, v2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v10, v10, v8

    .line 307
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v10, v11, :cond_14

    if-eqz v4, :cond_12

    goto :goto_5

    .line 19966
    :cond_12
    iget-object v1, v2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v1, v1, v8

    .line 329
    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v1, v4, :cond_d

    iget v1, v2, Landroidx/constraintlayout/a/a/e;->s:I

    if-ltz v1, :cond_d

    iget v1, v2, Landroidx/constraintlayout/a/a/e;->r:I

    if-ltz v1, :cond_d

    .line 20714
    iget v1, v2, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v1, v6, :cond_13

    .line 331
    iget v1, v2, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v1, :cond_d

    .line 21302
    iget v1, v2, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_d

    .line 332
    :cond_13
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v1

    if-nez v1, :cond_d

    .line 22248
    iget-boolean v1, v2, Landroidx/constraintlayout/a/a/e;->E:Z

    if-nez v1, :cond_d

    if-eqz v9, :cond_d

    .line 333
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v1

    if-nez v1, :cond_d

    .line 334
    invoke-static {p0, p1, v2, p2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;Z)V

    goto/16 :goto_3

    .line 309
    :cond_14
    :goto_5
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v4

    if-nez v4, :cond_d

    .line 316
    iget-object v4, v2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    if-ne v1, v4, :cond_15

    iget-object v4, v2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v4, :cond_15

    .line 317
    iget-object v1, v2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    add-int/2addr v1, v3

    .line 318
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v4

    add-int/2addr v4, v1

    .line 319
    invoke-virtual {v2, v1, v4}, Landroidx/constraintlayout/a/a/e;->a(II)V

    .line 320
    invoke-static {v2, p1, p2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    goto/16 :goto_3

    .line 321
    :cond_15
    iget-object v4, v2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    if-ne v1, v4, :cond_16

    iget-object v1, v2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v1, :cond_16

    .line 322
    iget-object v1, v2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    sub-int v1, v3, v1

    .line 323
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v4

    sub-int v4, v1, v4

    .line 324
    invoke-virtual {v2, v4, v1}, Landroidx/constraintlayout/a/a/e;->a(II)V

    .line 325
    invoke-static {v2, p1, p2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    goto/16 :goto_3

    :cond_16
    if-eqz v9, :cond_d

    .line 326
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v1

    if-nez v1, :cond_d

    .line 327
    invoke-static {p1, v2, p2}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;Z)V

    goto/16 :goto_3

    :cond_17
    return-void
.end method

.method public static a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/a/b$b;)V
    .locals 13

    .line 2966
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2975
    iget-object v2, p0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 59
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->i()V

    .line 3108
    iget-object v4, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 63
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/a/a/e;

    .line 64
    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/e;->i()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3473
    :cond_0
    iget-boolean v6, p0, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 74
    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v7, :cond_1

    .line 75
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/a/a/f;->a(II)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->g()V

    :goto_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, -0x1

    if-ge v0, v5, :cond_7

    .line 84
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/a/a/e;

    .line 85
    instance-of v12, v11, Landroidx/constraintlayout/a/a/h;

    if-eqz v12, :cond_5

    .line 86
    check-cast v11, Landroidx/constraintlayout/a/a/h;

    .line 4116
    iget v12, v11, Landroidx/constraintlayout/a/a/h;->aI:I

    if-ne v12, v3, :cond_6

    .line 88
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/h;->e()I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 89
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/h;->e()I

    move-result v7

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/a/a/h;->r(I)V

    goto :goto_3

    .line 90
    :cond_2
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/h;->f()I

    move-result v7

    if-eq v7, v10, :cond_3

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v7

    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/h;->f()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/a/a/h;->r(I)V

    goto :goto_3

    .line 92
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/h;->d()F

    move-result v7

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v10

    int-to-float v10, v10

    mul-float v7, v7, v10

    add-float/2addr v7, v9

    float-to-int v7, v7

    .line 94
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/a/a/h;->r(I)V

    :cond_4
    :goto_3
    const/4 v7, 0x1

    goto :goto_4

    .line 98
    :cond_5
    instance-of v9, v11, Landroidx/constraintlayout/a/a/a;

    if-eqz v9, :cond_6

    .line 99
    check-cast v11, Landroidx/constraintlayout/a/a/a;

    .line 100
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/a;->e()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v8, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_9

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_9

    .line 107
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/a/a/e;

    .line 108
    instance-of v11, v7, Landroidx/constraintlayout/a/a/h;

    if-eqz v11, :cond_8

    .line 109
    check-cast v7, Landroidx/constraintlayout/a/a/h;

    .line 5116
    iget v11, v7, Landroidx/constraintlayout/a/a/h;->aI:I

    if-ne v11, v3, :cond_8

    .line 111
    invoke-static {v7, p1, v6}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 118
    :cond_9
    invoke-static {p0, p1, v6}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    if-eqz v8, :cond_b

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v5, :cond_b

    .line 123
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/a/a/e;

    .line 124
    instance-of v8, v7, Landroidx/constraintlayout/a/a/a;

    if-eqz v8, :cond_a

    .line 125
    check-cast v7, Landroidx/constraintlayout/a/a/a;

    .line 126
    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/a;->e()I

    move-result v8

    if-nez v8, :cond_a

    .line 127
    invoke-static {v7, p1, v1, v6}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/a;Landroidx/constraintlayout/a/a/a/b$b;IZ)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 134
    :cond_b
    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, v0, :cond_c

    .line 135
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/a/a/f;->b(II)V

    goto :goto_7

    .line 137
    :cond_c
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->g_()V

    :goto_7
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v0, v5, :cond_12

    .line 144
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/a/a/e;

    .line 145
    instance-of v11, v8, Landroidx/constraintlayout/a/a/h;

    if-eqz v11, :cond_10

    .line 146
    check-cast v8, Landroidx/constraintlayout/a/a/h;

    .line 6116
    iget v11, v8, Landroidx/constraintlayout/a/a/h;->aI:I

    if-nez v11, :cond_11

    .line 148
    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/h;->e()I

    move-result v2

    if-eq v2, v10, :cond_d

    .line 149
    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/h;->e()I

    move-result v2

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/a/a/h;->r(I)V

    goto :goto_9

    .line 150
    :cond_d
    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/h;->f()I

    move-result v2

    if-eq v2, v10, :cond_e

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 151
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v2

    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/h;->f()I

    move-result v11

    sub-int/2addr v2, v11

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/a/a/h;->r(I)V

    goto :goto_9

    .line 152
    :cond_e
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->c()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 153
    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/h;->d()F

    move-result v2

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v11

    int-to-float v11, v11

    mul-float v2, v2, v11

    add-float/2addr v2, v9

    float-to-int v2, v2

    .line 154
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/a/a/h;->r(I)V

    :cond_f
    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    .line 158
    :cond_10
    instance-of v11, v8, Landroidx/constraintlayout/a/a/a;

    if-eqz v11, :cond_11

    .line 159
    check-cast v8, Landroidx/constraintlayout/a/a/a;

    .line 160
    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/a;->e()I

    move-result v8

    if-ne v8, v3, :cond_11

    const/4 v7, 0x1

    :cond_11
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    if-eqz v2, :cond_14

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v5, :cond_14

    .line 167
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    .line 168
    instance-of v8, v2, Landroidx/constraintlayout/a/a/h;

    if-eqz v8, :cond_13

    .line 169
    check-cast v2, Landroidx/constraintlayout/a/a/h;

    .line 7116
    iget v8, v2, Landroidx/constraintlayout/a/a/h;->aI:I

    if-nez v8, :cond_13

    .line 171
    invoke-static {v2, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 178
    :cond_14
    invoke-static {p0, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    if-eqz v7, :cond_16

    const/4 p0, 0x0

    :goto_c
    if-ge p0, v5, :cond_16

    .line 183
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/e;

    .line 184
    instance-of v2, v0, Landroidx/constraintlayout/a/a/a;

    if-eqz v2, :cond_15

    .line 185
    check-cast v0, Landroidx/constraintlayout/a/a/a;

    .line 186
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/a;->e()I

    move-result v2

    if-ne v2, v3, :cond_15

    .line 187
    invoke-static {v0, p1, v3, v6}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/a;Landroidx/constraintlayout/a/a/a/b$b;IZ)V

    :cond_15
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_16
    :goto_d
    if-ge v1, v5, :cond_18

    .line 195
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/a/a/e;

    .line 196
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 197
    sget-object v0, Landroidx/constraintlayout/a/a/a/h;->a:Landroidx/constraintlayout/a/a/a/b$a;

    sget v2, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {p0, p1, v0, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    .line 198
    invoke-static {p0, p1, v6}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Z)V

    .line 199
    invoke-static {p0, p1}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;)V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/e;)Z
    .locals 6

    .line 44966
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 44975
    iget-object v2, p0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 45620
    iget-object v4, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v4, :cond_0

    .line 46620
    iget-object v4, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 649
    check-cast v4, Landroidx/constraintlayout/a/a/f;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 650
    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    :cond_1
    if-eqz v4, :cond_2

    .line 651
    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 652
    :cond_2
    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    const/4 v5, 0x0

    if-eq v0, v4, :cond_5

    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v0, v4, :cond_5

    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v4, :cond_3

    iget v0, p0, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    .line 658
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/a/a/e;->c(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 659
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 660
    :goto_2
    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-eq v2, v4, :cond_8

    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v2, v4, :cond_8

    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, v4, :cond_6

    iget v2, p0, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez v2, :cond_6

    iget v2, p0, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_6

    .line 666
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/a/a/e;->c(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 667
    :cond_6
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, 0x1

    .line 668
    :goto_4
    iget p0, p0, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float p0, p0, v5

    if-lez p0, :cond_a

    if-nez v0, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    return v3

    :cond_a
    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    return v3

    :cond_b
    return v1
.end method

.class public Lm6;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:La6;

.field public b:Z

.field public c:Z

.field public d:La6;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx6;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lj6$b;

.field public g:Lj6$a;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm6;->b:Z

    iput-boolean v0, p0, Lm6;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm6;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm6;->f:Lj6$b;

    new-instance v0, Lj6$a;

    invoke-direct {v0}, Lj6$a;-><init>()V

    iput-object v0, p0, Lm6;->g:Lj6$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm6;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lm6;->a:La6;

    iput-object p1, p0, Lm6;->d:La6;

    return-void
.end method


# virtual methods
.method public final a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6;",
            "II",
            "Ln6;",
            "Ljava/util/ArrayList<",
            "Lu6;",
            ">;",
            "Lu6;",
            ")V"
        }
    .end annotation

    iget-object p1, p1, Ln6;->d:Lx6;

    iget-object v0, p1, Lx6;->c:Lu6;

    if-nez v0, :cond_c

    iget-object v0, p0, Lm6;->a:La6;

    iget-object v1, v0, Lz5;->d:Lt6;

    if-eq p1, v1, :cond_c

    iget-object v0, v0, Lz5;->e:Lv6;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p6, :cond_1

    new-instance p6, Lu6;

    invoke-direct {p6, p1, p3}, Lu6;-><init>(Lx6;I)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p6, p1, Lx6;->c:Lu6;

    invoke-virtual {p6, p1}, Lu6;->a(Lx6;)V

    iget-object p3, p1, Lx6;->h:Ln6;

    iget-object p3, p3, Ln6;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6;

    instance-of v1, v0, Ln6;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ln6;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_0

    :cond_3
    iget-object p3, p1, Lx6;->i:Ln6;

    iget-object p3, p3, Ln6;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6;

    instance-of v1, v0, Ln6;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ln6;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    instance-of v0, p1, Lv6;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lv6;

    iget-object v0, v0, Lv6;->k:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6;

    instance-of v1, v0, Ln6;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ln6;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ln6;

    if-ne v1, p4, :cond_8

    iput-boolean p3, p6, Lu6;->a:Z

    :cond_8
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_3

    :cond_9
    iget-object v0, p1, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ln6;

    if-ne v1, p4, :cond_a

    iput-boolean p3, p6, Lu6;->a:Z

    :cond_a
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_4

    :cond_b
    if-ne p2, p3, :cond_c

    instance-of p3, p1, Lv6;

    if-eqz p3, :cond_c

    check-cast p1, Lv6;

    iget-object p1, p1, Lv6;->k:Ln6;

    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ln6;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_c
    :goto_6
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final b(La6;)Z
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Lh6;->K0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz5;

    iget-object v4, v2, Lz5;->S:[Lz5$b;

    aget-object v5, v4, v3

    const/4 v10, 0x1

    aget-object v4, v4, v10

    invoke-virtual {v2}, Lz5;->T()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    :goto_1
    iput-boolean v10, v2, Lz5;->a:Z

    goto :goto_0

    :cond_1
    iget v6, v2, Lz5;->s:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    cmpg-float v6, v6, v11

    if-gez v6, :cond_2

    sget-object v6, Lz5$b;->c:Lz5$b;

    if-ne v5, v6, :cond_2

    iput v7, v2, Lz5;->n:I

    :cond_2
    iget v6, v2, Lz5;->v:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_3

    sget-object v6, Lz5$b;->c:Lz5$b;

    if-ne v4, v6, :cond_3

    iput v7, v2, Lz5;->o:I

    :cond_3
    invoke-virtual {v2}, Lz5;->w()F

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x3

    cmpl-float v6, v6, v8

    if-lez v6, :cond_9

    sget-object v6, Lz5$b;->c:Lz5$b;

    if-ne v5, v6, :cond_5

    sget-object v8, Lz5$b;->b:Lz5$b;

    if-eq v4, v8, :cond_4

    sget-object v8, Lz5$b;->a:Lz5$b;

    if-ne v4, v8, :cond_5

    :cond_4
    iput v9, v2, Lz5;->n:I

    goto :goto_3

    :cond_5
    if-ne v4, v6, :cond_7

    sget-object v8, Lz5$b;->b:Lz5$b;

    if-eq v5, v8, :cond_6

    sget-object v8, Lz5$b;->a:Lz5$b;

    if-ne v5, v8, :cond_7

    :cond_6
    :goto_2
    iput v9, v2, Lz5;->o:I

    goto :goto_3

    :cond_7
    if-ne v5, v6, :cond_9

    if-ne v4, v6, :cond_9

    iget v6, v2, Lz5;->n:I

    if-nez v6, :cond_8

    iput v9, v2, Lz5;->n:I

    :cond_8
    iget v6, v2, Lz5;->o:I

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    sget-object v6, Lz5$b;->c:Lz5$b;

    if-ne v5, v6, :cond_b

    iget v8, v2, Lz5;->n:I

    if-ne v8, v10, :cond_b

    iget-object v8, v2, Lz5;->H:Ly5;

    iget-object v8, v8, Ly5;->f:Ly5;

    if-eqz v8, :cond_a

    iget-object v8, v2, Lz5;->J:Ly5;

    iget-object v8, v8, Ly5;->f:Ly5;

    if-nez v8, :cond_b

    :cond_a
    sget-object v5, Lz5$b;->b:Lz5$b;

    :cond_b
    move-object v8, v5

    if-ne v4, v6, :cond_d

    iget v5, v2, Lz5;->o:I

    if-ne v5, v10, :cond_d

    iget-object v5, v2, Lz5;->I:Ly5;

    iget-object v5, v5, Ly5;->f:Ly5;

    if-eqz v5, :cond_c

    iget-object v5, v2, Lz5;->K:Ly5;

    iget-object v5, v5, Ly5;->f:Ly5;

    if-nez v5, :cond_d

    :cond_c
    sget-object v4, Lz5$b;->b:Lz5$b;

    :cond_d
    move-object v12, v4

    iget-object v4, v2, Lz5;->d:Lt6;

    iput-object v8, v4, Lx6;->d:Lz5$b;

    iget v5, v2, Lz5;->n:I

    iput v5, v4, Lx6;->a:I

    iget-object v4, v2, Lz5;->e:Lv6;

    iput-object v12, v4, Lx6;->d:Lz5$b;

    iget v13, v2, Lz5;->o:I

    iput v13, v4, Lx6;->a:I

    sget-object v4, Lz5$b;->d:Lz5$b;

    if-eq v8, v4, :cond_e

    sget-object v14, Lz5$b;->a:Lz5$b;

    if-eq v8, v14, :cond_e

    sget-object v14, Lz5$b;->b:Lz5$b;

    if-ne v8, v14, :cond_f

    :cond_e
    if-eq v12, v4, :cond_25

    sget-object v14, Lz5$b;->a:Lz5$b;

    if-eq v12, v14, :cond_25

    sget-object v14, Lz5$b;->b:Lz5$b;

    if-ne v12, v14, :cond_f

    goto/16 :goto_a

    :cond_f
    const/high16 v14, 0x3f000000    # 0.5f

    if-ne v8, v6, :cond_17

    sget-object v15, Lz5$b;->b:Lz5$b;

    if-eq v12, v15, :cond_10

    sget-object v11, Lz5$b;->a:Lz5$b;

    if-ne v12, v11, :cond_17

    :cond_10
    if-ne v5, v9, :cond_12

    if-ne v12, v15, :cond_11

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v15

    invoke-virtual/range {v4 .. v9}, Lm6;->l(Lz5;Lz5$b;ILz5$b;I)V

    :cond_11
    invoke-virtual {v2}, Lz5;->y()I

    move-result v9

    int-to-float v3, v9

    iget v4, v2, Lz5;->W:F

    mul-float v3, v3, v4

    add-float/2addr v3, v14

    float-to-int v7, v3

    :goto_4
    sget-object v8, Lz5$b;->a:Lz5$b;

    :goto_5
    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    goto/16 :goto_d

    :cond_12
    if-ne v5, v10, :cond_13

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v12

    invoke-virtual/range {v4 .. v9}, Lm6;->l(Lz5;Lz5$b;ILz5$b;I)V

    iget-object v3, v2, Lz5;->d:Lt6;

    iget-object v3, v3, Lx6;->e:Lo6;

    invoke-virtual {v2}, Lz5;->U()I

    move-result v2

    :goto_6
    iput v2, v3, Lo6;->m:I

    goto/16 :goto_0

    :cond_13
    if-ne v5, v7, :cond_15

    iget-object v11, v0, Lz5;->S:[Lz5$b;

    aget-object v15, v11, v3

    sget-object v7, Lz5$b;->a:Lz5$b;

    if-eq v15, v7, :cond_14

    aget-object v11, v11, v3

    if-ne v11, v4, :cond_17

    :cond_14
    iget v3, v2, Lz5;->s:F

    invoke-virtual/range {p1 .. p1}, Lz5;->U()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v3, v14

    float-to-int v3, v3

    invoke-virtual {v2}, Lz5;->y()I

    move-result v9

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v7

    move v7, v3

    goto :goto_7

    :cond_15
    iget-object v7, v2, Lz5;->P:[Ly5;

    aget-object v11, v7, v3

    iget-object v11, v11, Ly5;->f:Ly5;

    if-eqz v11, :cond_16

    aget-object v7, v7, v10

    iget-object v7, v7, Ly5;->f:Ly5;

    if-nez v7, :cond_17

    :cond_16
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    :goto_7
    move-object v8, v12

    goto/16 :goto_d

    :cond_17
    if-ne v12, v6, :cond_20

    sget-object v11, Lz5$b;->b:Lz5$b;

    if-eq v8, v11, :cond_18

    sget-object v7, Lz5$b;->a:Lz5$b;

    if-ne v8, v7, :cond_20

    :cond_18
    if-ne v13, v9, :cond_1b

    if-ne v8, v11, :cond_19

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v11

    move-object v8, v11

    invoke-virtual/range {v4 .. v9}, Lm6;->l(Lz5;Lz5$b;ILz5$b;I)V

    :cond_19
    invoke-virtual {v2}, Lz5;->U()I

    move-result v7

    iget v3, v2, Lz5;->W:F

    invoke-virtual {v2}, Lz5;->x()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_1a
    int-to-float v4, v7

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v9, v4

    goto/16 :goto_4

    :cond_1b
    if-ne v13, v10, :cond_1c

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    move-object v8, v11

    invoke-virtual/range {v4 .. v9}, Lm6;->l(Lz5;Lz5$b;ILz5$b;I)V

    goto/16 :goto_9

    :cond_1c
    const/4 v7, 0x2

    if-ne v13, v7, :cond_1e

    iget-object v7, v0, Lz5;->S:[Lz5$b;

    aget-object v9, v7, v10

    sget-object v11, Lz5$b;->a:Lz5$b;

    if-eq v9, v11, :cond_1d

    aget-object v7, v7, v10

    if-ne v7, v4, :cond_20

    :cond_1d
    iget v3, v2, Lz5;->v:F

    invoke-virtual {v2}, Lz5;->U()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lz5;->y()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v3, v14

    float-to-int v9, v3

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    move-object v8, v11

    goto/16 :goto_d

    :cond_1e
    iget-object v4, v2, Lz5;->P:[Ly5;

    const/4 v7, 0x2

    aget-object v15, v4, v7

    iget-object v7, v15, Ly5;->f:Ly5;

    if-eqz v7, :cond_1f

    aget-object v4, v4, v9

    iget-object v4, v4, Ly5;->f:Ly5;

    if-nez v4, :cond_20

    :cond_1f
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v11

    goto :goto_7

    :cond_20
    if-ne v8, v6, :cond_0

    if-ne v12, v6, :cond_0

    if-eq v5, v10, :cond_24

    if-ne v13, v10, :cond_21

    goto :goto_8

    :cond_21
    const/4 v4, 0x2

    if-ne v13, v4, :cond_0

    if-ne v5, v4, :cond_0

    iget-object v4, v0, Lz5;->S:[Lz5$b;

    aget-object v5, v4, v3

    sget-object v8, Lz5$b;->a:Lz5$b;

    if-eq v5, v8, :cond_22

    aget-object v3, v4, v3

    if-ne v3, v8, :cond_0

    :cond_22
    aget-object v3, v4, v10

    if-eq v3, v8, :cond_23

    aget-object v3, v4, v10

    if-ne v3, v8, :cond_0

    :cond_23
    iget v3, v2, Lz5;->s:F

    iget v4, v2, Lz5;->v:F

    invoke-virtual/range {p1 .. p1}, Lz5;->U()I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v3, v5

    add-float/2addr v3, v14

    float-to-int v7, v3

    invoke-virtual/range {p1 .. p1}, Lz5;->y()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v9, v4

    goto/16 :goto_5

    :cond_24
    :goto_8
    sget-object v8, Lz5$b;->b:Lz5$b;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-virtual/range {v4 .. v9}, Lm6;->l(Lz5;Lz5$b;ILz5$b;I)V

    iget-object v3, v2, Lz5;->d:Lt6;

    iget-object v3, v3, Lx6;->e:Lo6;

    invoke-virtual {v2}, Lz5;->U()I

    move-result v4

    iput v4, v3, Lo6;->m:I

    :goto_9
    iget-object v3, v2, Lz5;->e:Lv6;

    iget-object v3, v3, Lx6;->e:Lo6;

    invoke-virtual {v2}, Lz5;->y()I

    move-result v2

    goto/16 :goto_6

    :cond_25
    :goto_a
    invoke-virtual {v2}, Lz5;->U()I

    move-result v3

    if-ne v8, v4, :cond_26

    invoke-virtual/range {p1 .. p1}, Lz5;->U()I

    move-result v3

    iget-object v5, v2, Lz5;->H:Ly5;

    iget v5, v5, Ly5;->g:I

    sub-int/2addr v3, v5

    iget-object v5, v2, Lz5;->J:Ly5;

    iget v5, v5, Ly5;->g:I

    sub-int/2addr v3, v5

    sget-object v5, Lz5$b;->a:Lz5$b;

    move v7, v3

    move-object v6, v5

    goto :goto_b

    :cond_26
    move v7, v3

    move-object v6, v8

    :goto_b
    invoke-virtual {v2}, Lz5;->y()I

    move-result v3

    if-ne v12, v4, :cond_27

    invoke-virtual/range {p1 .. p1}, Lz5;->y()I

    move-result v3

    iget-object v4, v2, Lz5;->I:Ly5;

    iget v4, v4, Ly5;->g:I

    sub-int/2addr v3, v4

    iget-object v4, v2, Lz5;->K:Ly5;

    iget v4, v4, Ly5;->g:I

    sub-int/2addr v3, v4

    sget-object v4, Lz5$b;->a:Lz5$b;

    move v9, v3

    move-object v8, v4

    goto :goto_c

    :cond_27
    move v9, v3

    move-object v8, v12

    :goto_c
    move-object/from16 v4, p0

    move-object v5, v2

    :goto_d
    invoke-virtual/range {v4 .. v9}, Lm6;->l(Lz5;Lz5$b;ILz5$b;I)V

    iget-object v3, v2, Lz5;->d:Lt6;

    iget-object v3, v3, Lx6;->e:Lo6;

    invoke-virtual {v2}, Lz5;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lo6;->d(I)V

    iget-object v3, v2, Lz5;->e:Lv6;

    iget-object v3, v3, Lx6;->e:Lo6;

    invoke-virtual {v2}, Lz5;->y()I

    move-result v4

    invoke-virtual {v3, v4}, Lo6;->d(I)V

    goto/16 :goto_1

    :cond_28
    return v3
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lm6;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lm6;->d(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lm6;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput v0, Lu6;->d:I

    iget-object v1, p0, Lm6;->a:La6;

    iget-object v1, v1, Lz5;->d:Lt6;

    iget-object v2, p0, Lm6;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0, v2}, Lm6;->i(Lx6;ILjava/util/ArrayList;)V

    iget-object v1, p0, Lm6;->a:La6;

    iget-object v1, v1, Lz5;->e:Lv6;

    iget-object v2, p0, Lm6;->h:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lm6;->i(Lx6;ILjava/util/ArrayList;)V

    iput-boolean v0, p0, Lm6;->b:Z

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lx6;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lm6;->d:La6;

    iget-object v0, v0, Lz5;->d:Lt6;

    invoke-virtual {v0}, Lt6;->f()V

    iget-object v0, p0, Lm6;->d:La6;

    iget-object v0, v0, Lz5;->e:Lv6;

    invoke-virtual {v0}, Lv6;->f()V

    iget-object v0, p0, Lm6;->d:La6;

    iget-object v0, v0, Lz5;->d:Lt6;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lm6;->d:La6;

    iget-object v0, v0, Lz5;->e:Lv6;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lm6;->d:La6;

    iget-object v0, v0, Lh6;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz5;

    instance-of v3, v2, Lc6;

    if-eqz v3, :cond_1

    new-instance v3, Lr6;

    invoke-direct {v3, v2}, Lr6;-><init>(Lz5;)V

    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lz5;->c0()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lz5;->b:Lk6;

    if-nez v3, :cond_2

    new-instance v3, Lk6;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lk6;-><init>(Lz5;I)V

    iput-object v3, v2, Lz5;->b:Lk6;

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v3, v2, Lz5;->b:Lk6;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lz5;->d:Lt6;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v2}, Lz5;->e0()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lz5;->c:Lk6;

    if-nez v3, :cond_5

    new-instance v3, Lk6;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lk6;-><init>(Lz5;I)V

    iput-object v3, v2, Lz5;->c:Lk6;

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v3, v2, Lz5;->c:Lk6;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object v3, v2, Lz5;->e:Lv6;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    instance-of v3, v2, Le6;

    if-eqz v3, :cond_0

    new-instance v3, Ls6;

    invoke-direct {v3, v2}, Ls6;-><init>(Lz5;)V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx6;

    invoke-virtual {v1}, Lx6;->f()V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx6;

    iget-object v1, v0, Lx6;->b:Lz5;

    iget-object v2, p0, Lm6;->d:La6;

    if-ne v1, v2, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Lx6;->d()V

    goto :goto_5

    :cond_c
    return-void
.end method

.method public final e(La6;I)I
    .locals 6

    iget-object v0, p0, Lm6;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lm6;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu6;

    invoke-virtual {v4, p1, p2}, Lu6;->b(La6;I)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    long-to-int p1, v1

    return p1
.end method

.method public f(Z)Z
    .locals 9

    const/4 v0, 0x1

    and-int/2addr p1, v0

    iget-boolean v1, p0, Lm6;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lm6;->c:Z

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lm6;->a:La6;

    iget-object v1, v1, Lh6;->K0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz5;

    invoke-virtual {v3}, Lz5;->o()V

    iput-boolean v2, v3, Lz5;->a:Z

    iget-object v4, v3, Lz5;->d:Lt6;

    invoke-virtual {v4}, Lt6;->r()V

    iget-object v3, v3, Lz5;->e:Lv6;

    invoke-virtual {v3}, Lv6;->q()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lm6;->a:La6;

    invoke-virtual {v1}, Lz5;->o()V

    iget-object v1, p0, Lm6;->a:La6;

    iput-boolean v2, v1, Lz5;->a:Z

    iget-object v1, v1, Lz5;->d:Lt6;

    invoke-virtual {v1}, Lt6;->r()V

    iget-object v1, p0, Lm6;->a:La6;

    iget-object v1, v1, Lz5;->e:Lv6;

    invoke-virtual {v1}, Lv6;->q()V

    iput-boolean v2, p0, Lm6;->c:Z

    :cond_2
    iget-object v1, p0, Lm6;->d:La6;

    invoke-virtual {p0, v1}, Lm6;->b(La6;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lm6;->a:La6;

    invoke-virtual {v1, v2}, Lz5;->Z0(I)V

    iget-object v1, p0, Lm6;->a:La6;

    invoke-virtual {v1, v2}, Lz5;->a1(I)V

    iget-object v1, p0, Lm6;->a:La6;

    invoke-virtual {v1, v2}, Lz5;->v(I)Lz5$b;

    move-result-object v1

    iget-object v3, p0, Lm6;->a:La6;

    invoke-virtual {v3, v0}, Lz5;->v(I)Lz5$b;

    move-result-object v3

    iget-boolean v4, p0, Lm6;->b:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lm6;->c()V

    :cond_4
    iget-object v4, p0, Lm6;->a:La6;

    invoke-virtual {v4}, Lz5;->V()I

    move-result v4

    iget-object v5, p0, Lm6;->a:La6;

    invoke-virtual {v5}, Lz5;->W()I

    move-result v5

    iget-object v6, p0, Lm6;->a:La6;

    iget-object v6, v6, Lz5;->d:Lt6;

    iget-object v6, v6, Lx6;->h:Ln6;

    invoke-virtual {v6, v4}, Ln6;->d(I)V

    iget-object v6, p0, Lm6;->a:La6;

    iget-object v6, v6, Lz5;->e:Lv6;

    iget-object v6, v6, Lx6;->h:Ln6;

    invoke-virtual {v6, v5}, Ln6;->d(I)V

    invoke-virtual {p0}, Lm6;->m()V

    sget-object v6, Lz5$b;->b:Lz5$b;

    if-eq v1, v6, :cond_5

    if-ne v3, v6, :cond_9

    :cond_5
    if-eqz p1, :cond_7

    iget-object v6, p0, Lm6;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx6;

    invoke-virtual {v7}, Lx6;->m()Z

    move-result v7

    if-nez v7, :cond_6

    const/4 p1, 0x0

    :cond_7
    if-eqz p1, :cond_8

    sget-object v6, Lz5$b;->b:Lz5$b;

    if-ne v1, v6, :cond_8

    iget-object v6, p0, Lm6;->a:La6;

    sget-object v7, Lz5$b;->a:Lz5$b;

    invoke-virtual {v6, v7}, Lz5;->D0(Lz5$b;)V

    iget-object v6, p0, Lm6;->a:La6;

    invoke-virtual {p0, v6, v2}, Lm6;->e(La6;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lz5;->Y0(I)V

    iget-object v6, p0, Lm6;->a:La6;

    iget-object v7, v6, Lz5;->d:Lt6;

    iget-object v7, v7, Lx6;->e:Lo6;

    invoke-virtual {v6}, Lz5;->U()I

    move-result v6

    invoke-virtual {v7, v6}, Lo6;->d(I)V

    :cond_8
    if-eqz p1, :cond_9

    sget-object p1, Lz5$b;->b:Lz5$b;

    if-ne v3, p1, :cond_9

    iget-object p1, p0, Lm6;->a:La6;

    sget-object v6, Lz5$b;->a:Lz5$b;

    invoke-virtual {p1, v6}, Lz5;->U0(Lz5$b;)V

    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p0, p1, v0}, Lm6;->e(La6;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lz5;->z0(I)V

    iget-object p1, p0, Lm6;->a:La6;

    iget-object v6, p1, Lz5;->e:Lv6;

    iget-object v6, v6, Lx6;->e:Lo6;

    invoke-virtual {p1}, Lz5;->y()I

    move-result p1

    invoke-virtual {v6, p1}, Lo6;->d(I)V

    :cond_9
    iget-object p1, p0, Lm6;->a:La6;

    iget-object v6, p1, Lz5;->S:[Lz5$b;

    aget-object v7, v6, v2

    sget-object v8, Lz5$b;->a:Lz5$b;

    if-eq v7, v8, :cond_b

    aget-object v6, v6, v2

    sget-object v7, Lz5$b;->d:Lz5$b;

    if-ne v6, v7, :cond_a

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    goto :goto_2

    :cond_b
    :goto_1
    invoke-virtual {p1}, Lz5;->U()I

    move-result p1

    add-int/2addr p1, v4

    iget-object v6, p0, Lm6;->a:La6;

    iget-object v6, v6, Lz5;->d:Lt6;

    iget-object v6, v6, Lx6;->i:Ln6;

    invoke-virtual {v6, p1}, Ln6;->d(I)V

    iget-object v6, p0, Lm6;->a:La6;

    iget-object v6, v6, Lz5;->d:Lt6;

    iget-object v6, v6, Lx6;->e:Lo6;

    sub-int/2addr p1, v4

    invoke-virtual {v6, p1}, Lo6;->d(I)V

    invoke-virtual {p0}, Lm6;->m()V

    iget-object p1, p0, Lm6;->a:La6;

    iget-object v4, p1, Lz5;->S:[Lz5$b;

    aget-object v6, v4, v0

    if-eq v6, v8, :cond_c

    aget-object v4, v4, v0

    sget-object v6, Lz5$b;->d:Lz5$b;

    if-ne v4, v6, :cond_d

    :cond_c
    invoke-virtual {p1}, Lz5;->y()I

    move-result p1

    add-int/2addr p1, v5

    iget-object v4, p0, Lm6;->a:La6;

    iget-object v4, v4, Lz5;->e:Lv6;

    iget-object v4, v4, Lx6;->i:Ln6;

    invoke-virtual {v4, p1}, Ln6;->d(I)V

    iget-object v4, p0, Lm6;->a:La6;

    iget-object v4, v4, Lz5;->e:Lv6;

    iget-object v4, v4, Lx6;->e:Lo6;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lo6;->d(I)V

    :cond_d
    invoke-virtual {p0}, Lm6;->m()V

    const/4 p1, 0x1

    :goto_2
    iget-object v4, p0, Lm6;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx6;

    iget-object v6, v5, Lx6;->b:Lz5;

    iget-object v7, p0, Lm6;->a:La6;

    if-ne v6, v7, :cond_e

    iget-boolean v6, v5, Lx6;->g:Z

    if-nez v6, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v5}, Lx6;->e()V

    goto :goto_3

    :cond_f
    iget-object v4, p0, Lm6;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx6;

    if-nez p1, :cond_11

    iget-object v6, v5, Lx6;->b:Lz5;

    iget-object v7, p0, Lm6;->a:La6;

    if-ne v6, v7, :cond_11

    goto :goto_4

    :cond_11
    iget-object v6, v5, Lx6;->h:Ln6;

    iget-boolean v6, v6, Ln6;->j:Z

    if-nez v6, :cond_12

    :goto_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_12
    iget-object v6, v5, Lx6;->i:Ln6;

    iget-boolean v6, v6, Ln6;->j:Z

    if-nez v6, :cond_13

    instance-of v6, v5, Lr6;

    if-nez v6, :cond_13

    goto :goto_5

    :cond_13
    iget-object v6, v5, Lx6;->e:Lo6;

    iget-boolean v6, v6, Ln6;->j:Z

    if-nez v6, :cond_10

    instance-of v6, v5, Lk6;

    if-nez v6, :cond_10

    instance-of v5, v5, Lr6;

    if-nez v5, :cond_10

    goto :goto_5

    :cond_14
    :goto_6
    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p1, v1}, Lz5;->D0(Lz5$b;)V

    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p1, v3}, Lz5;->U0(Lz5$b;)V

    return v0
.end method

.method public g(Z)Z
    .locals 4

    iget-boolean p1, p0, Lm6;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lm6;->a:La6;

    iget-object p1, p1, Lh6;->K0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz5;

    invoke-virtual {v1}, Lz5;->o()V

    iput-boolean v0, v1, Lz5;->a:Z

    iget-object v2, v1, Lz5;->d:Lt6;

    iget-object v3, v2, Lx6;->e:Lo6;

    iput-boolean v0, v3, Ln6;->j:Z

    iput-boolean v0, v2, Lx6;->g:Z

    invoke-virtual {v2}, Lt6;->r()V

    iget-object v1, v1, Lz5;->e:Lv6;

    iget-object v2, v1, Lx6;->e:Lo6;

    iput-boolean v0, v2, Ln6;->j:Z

    iput-boolean v0, v1, Lx6;->g:Z

    invoke-virtual {v1}, Lv6;->q()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p1}, Lz5;->o()V

    iget-object p1, p0, Lm6;->a:La6;

    iput-boolean v0, p1, Lz5;->a:Z

    iget-object p1, p1, Lz5;->d:Lt6;

    iget-object v1, p1, Lx6;->e:Lo6;

    iput-boolean v0, v1, Ln6;->j:Z

    iput-boolean v0, p1, Lx6;->g:Z

    invoke-virtual {p1}, Lt6;->r()V

    iget-object p1, p0, Lm6;->a:La6;

    iget-object p1, p1, Lz5;->e:Lv6;

    iget-object v1, p1, Lx6;->e:Lo6;

    iput-boolean v0, v1, Ln6;->j:Z

    iput-boolean v0, p1, Lx6;->g:Z

    invoke-virtual {p1}, Lv6;->q()V

    invoke-virtual {p0}, Lm6;->c()V

    :cond_1
    iget-object p1, p0, Lm6;->d:La6;

    invoke-virtual {p0, p1}, Lm6;->b(La6;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p1, v0}, Lz5;->Z0(I)V

    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p1, v0}, Lz5;->a1(I)V

    iget-object p1, p0, Lm6;->a:La6;

    iget-object p1, p1, Lz5;->d:Lt6;

    iget-object p1, p1, Lx6;->h:Ln6;

    invoke-virtual {p1, v0}, Ln6;->d(I)V

    iget-object p1, p0, Lm6;->a:La6;

    iget-object p1, p1, Lz5;->e:Lv6;

    iget-object p1, p1, Lx6;->h:Ln6;

    invoke-virtual {p1, v0}, Ln6;->d(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public h(ZI)Z
    .locals 9

    const/4 v0, 0x1

    and-int/2addr p1, v0

    iget-object v1, p0, Lm6;->a:La6;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lz5;->v(I)Lz5$b;

    move-result-object v1

    iget-object v3, p0, Lm6;->a:La6;

    invoke-virtual {v3, v0}, Lz5;->v(I)Lz5$b;

    move-result-object v3

    iget-object v4, p0, Lm6;->a:La6;

    invoke-virtual {v4}, Lz5;->V()I

    move-result v4

    iget-object v5, p0, Lm6;->a:La6;

    invoke-virtual {v5}, Lz5;->W()I

    move-result v5

    if-eqz p1, :cond_4

    sget-object v6, Lz5$b;->b:Lz5$b;

    if-eq v1, v6, :cond_0

    if-ne v3, v6, :cond_4

    :cond_0
    iget-object v6, p0, Lm6;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx6;

    iget v8, v7, Lx6;->f:I

    if-ne v8, p2, :cond_1

    invoke-virtual {v7}, Lx6;->m()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 p1, 0x0

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    sget-object p1, Lz5$b;->b:Lz5$b;

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lm6;->a:La6;

    sget-object v6, Lz5$b;->a:Lz5$b;

    invoke-virtual {p1, v6}, Lz5;->D0(Lz5$b;)V

    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p0, p1, v2}, Lm6;->e(La6;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lz5;->Y0(I)V

    iget-object p1, p0, Lm6;->a:La6;

    iget-object v6, p1, Lz5;->d:Lt6;

    iget-object v6, v6, Lx6;->e:Lo6;

    invoke-virtual {p1}, Lz5;->U()I

    move-result p1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sget-object p1, Lz5$b;->b:Lz5$b;

    if-ne v3, p1, :cond_4

    iget-object p1, p0, Lm6;->a:La6;

    sget-object v6, Lz5$b;->a:Lz5$b;

    invoke-virtual {p1, v6}, Lz5;->U0(Lz5$b;)V

    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p0, p1, v0}, Lm6;->e(La6;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lz5;->z0(I)V

    iget-object p1, p0, Lm6;->a:La6;

    iget-object v6, p1, Lz5;->e:Lv6;

    iget-object v6, v6, Lx6;->e:Lo6;

    invoke-virtual {p1}, Lz5;->y()I

    move-result p1

    :goto_0
    invoke-virtual {v6, p1}, Lo6;->d(I)V

    :cond_4
    iget-object p1, p0, Lm6;->a:La6;

    if-nez p2, :cond_6

    iget-object v5, p1, Lz5;->S:[Lz5$b;

    aget-object v6, v5, v2

    sget-object v7, Lz5$b;->a:Lz5$b;

    if-eq v6, v7, :cond_5

    aget-object v5, v5, v2

    sget-object v6, Lz5$b;->d:Lz5$b;

    if-ne v5, v6, :cond_7

    :cond_5
    invoke-virtual {p1}, Lz5;->U()I

    move-result p1

    add-int/2addr p1, v4

    iget-object v5, p0, Lm6;->a:La6;

    iget-object v5, v5, Lz5;->d:Lt6;

    iget-object v5, v5, Lx6;->i:Ln6;

    invoke-virtual {v5, p1}, Ln6;->d(I)V

    iget-object v5, p0, Lm6;->a:La6;

    iget-object v5, v5, Lz5;->d:Lt6;

    iget-object v5, v5, Lx6;->e:Lo6;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Lo6;->d(I)V

    goto :goto_2

    :cond_6
    iget-object v4, p1, Lz5;->S:[Lz5$b;

    aget-object v6, v4, v0

    sget-object v7, Lz5$b;->a:Lz5$b;

    if-eq v6, v7, :cond_8

    aget-object v4, v4, v0

    sget-object v6, Lz5$b;->d:Lz5$b;

    if-ne v4, v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {p1}, Lz5;->y()I

    move-result p1

    add-int/2addr p1, v5

    iget-object v4, p0, Lm6;->a:La6;

    iget-object v4, v4, Lz5;->e:Lv6;

    iget-object v4, v4, Lx6;->i:Ln6;

    invoke-virtual {v4, p1}, Ln6;->d(I)V

    iget-object v4, p0, Lm6;->a:La6;

    iget-object v4, v4, Lz5;->e:Lv6;

    iget-object v4, v4, Lx6;->e:Lo6;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lo6;->d(I)V

    :goto_2
    const/4 p1, 0x1

    :goto_3
    invoke-virtual {p0}, Lm6;->m()V

    iget-object v4, p0, Lm6;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx6;

    iget v6, v5, Lx6;->f:I

    if-eq v6, p2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, Lx6;->b:Lz5;

    iget-object v7, p0, Lm6;->a:La6;

    if-ne v6, v7, :cond_a

    iget-boolean v6, v5, Lx6;->g:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Lx6;->e()V

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lm6;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx6;

    iget v6, v5, Lx6;->f:I

    if-eq v6, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    iget-object v6, v5, Lx6;->b:Lz5;

    iget-object v7, p0, Lm6;->a:La6;

    if-ne v6, v7, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, Lx6;->h:Ln6;

    iget-boolean v6, v6, Ln6;->j:Z

    if-nez v6, :cond_f

    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    iget-object v6, v5, Lx6;->i:Ln6;

    iget-boolean v6, v6, Ln6;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, Lk6;

    if-nez v6, :cond_c

    iget-object v5, v5, Lx6;->e:Lo6;

    iget-boolean v5, v5, Ln6;->j:Z

    if-nez v5, :cond_c

    goto :goto_6

    :cond_11
    :goto_7
    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p1, v1}, Lz5;->D0(Lz5$b;)V

    iget-object p1, p0, Lm6;->a:La6;

    invoke-virtual {p1, v3}, Lz5;->U0(Lz5$b;)V

    return v0
.end method

.method public final i(Lx6;ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6;",
            "I",
            "Ljava/util/ArrayList<",
            "Lu6;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll6;

    instance-of v2, v1, Ln6;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Ln6;

    const/4 v6, 0x0

    iget-object v7, p1, Lx6;->i:Ln6;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lx6;

    if-eqz v2, :cond_0

    check-cast v1, Lx6;

    iget-object v3, v1, Lx6;->h:Ln6;

    const/4 v5, 0x0

    iget-object v6, p1, Lx6;->i:Ln6;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll6;

    instance-of v2, v1, Ln6;

    if-eqz v2, :cond_4

    move-object v4, v1

    check-cast v4, Ln6;

    const/4 v6, 0x1

    iget-object v7, p1, Lx6;->h:Ln6;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lx6;

    if-eqz v2, :cond_3

    check-cast v1, Lx6;

    iget-object v3, v1, Lx6;->i:Ln6;

    const/4 v5, 0x1

    iget-object v6, p1, Lx6;->h:Ln6;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Lv6;

    iget-object p1, p1, Lv6;->k:Ln6;

    iget-object p1, p1, Ln6;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6;

    instance-of v1, v0, Ln6;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, Ln6;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lm6;->a(Ln6;IILn6;Ljava/util/ArrayList;Lu6;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm6;->b:Z

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm6;->c:Z

    return-void
.end method

.method public final l(Lz5;Lz5$b;ILz5$b;I)V
    .locals 1

    iget-object v0, p0, Lm6;->g:Lj6$a;

    iput-object p2, v0, Lj6$a;->a:Lz5$b;

    iput-object p4, v0, Lj6$a;->b:Lz5$b;

    iput p3, v0, Lj6$a;->c:I

    iput p5, v0, Lj6$a;->d:I

    iget-object p2, p0, Lm6;->f:Lj6$b;

    invoke-interface {p2, p1, v0}, Lj6$b;->b(Lz5;Lj6$a;)V

    iget-object p2, p0, Lm6;->g:Lj6$a;

    iget p2, p2, Lj6$a;->e:I

    invoke-virtual {p1, p2}, Lz5;->Y0(I)V

    iget-object p2, p0, Lm6;->g:Lj6$a;

    iget p2, p2, Lj6$a;->f:I

    invoke-virtual {p1, p2}, Lz5;->z0(I)V

    iget-object p2, p0, Lm6;->g:Lj6$a;

    iget-boolean p2, p2, Lj6$a;->h:Z

    invoke-virtual {p1, p2}, Lz5;->y0(Z)V

    iget-object p2, p0, Lm6;->g:Lj6$a;

    iget p2, p2, Lj6$a;->g:I

    invoke-virtual {p1, p2}, Lz5;->o0(I)V

    return-void
.end method

.method public m()V
    .locals 12

    iget-object v0, p0, Lm6;->a:La6;

    iget-object v0, v0, Lh6;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz5;

    iget-boolean v2, v1, Lz5;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lz5;->S:[Lz5$b;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget-object v10, v2, v9

    iget v2, v1, Lz5;->n:I

    iget v4, v1, Lz5;->o:I

    sget-object v6, Lz5$b;->b:Lz5$b;

    if-eq v8, v6, :cond_3

    sget-object v5, Lz5$b;->c:Lz5$b;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eq v10, v6, :cond_4

    sget-object v5, Lz5$b;->c:Lz5$b;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    iget-object v4, v1, Lz5;->d:Lt6;

    iget-object v4, v4, Lx6;->e:Lo6;

    iget-boolean v5, v4, Ln6;->j:Z

    iget-object v7, v1, Lz5;->e:Lv6;

    iget-object v7, v7, Lx6;->e:Lo6;

    iget-boolean v11, v7, Ln6;->j:Z

    if-eqz v5, :cond_6

    if-eqz v11, :cond_6

    sget-object v6, Lz5$b;->a:Lz5$b;

    iget v5, v4, Ln6;->g:I

    iget v7, v7, Ln6;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    invoke-virtual/range {v2 .. v7}, Lm6;->l(Lz5;Lz5$b;ILz5$b;I)V

    :goto_3
    iput-boolean v9, v1, Lz5;->a:Z

    goto :goto_6

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    sget-object v5, Lz5$b;->a:Lz5$b;

    iget v8, v4, Ln6;->g:I

    iget v7, v7, Ln6;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v5

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lm6;->l(Lz5;Lz5$b;ILz5$b;I)V

    sget-object v2, Lz5$b;->c:Lz5$b;

    if-ne v10, v2, :cond_7

    iget-object v2, v1, Lz5;->e:Lv6;

    iget-object v2, v2, Lx6;->e:Lo6;

    invoke-virtual {v1}, Lz5;->y()I

    move-result v3

    :goto_4
    iput v3, v2, Lo6;->m:I

    goto :goto_6

    :cond_7
    iget-object v2, v1, Lz5;->e:Lv6;

    iget-object v2, v2, Lx6;->e:Lo6;

    invoke-virtual {v1}, Lz5;->y()I

    move-result v3

    :goto_5
    invoke-virtual {v2, v3}, Lo6;->d(I)V

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_a

    if-eqz v2, :cond_a

    iget v5, v4, Ln6;->g:I

    sget-object v10, Lz5$b;->a:Lz5$b;

    iget v7, v7, Ln6;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lm6;->l(Lz5;Lz5$b;ILz5$b;I)V

    sget-object v2, Lz5$b;->c:Lz5$b;

    if-ne v8, v2, :cond_9

    iget-object v2, v1, Lz5;->d:Lt6;

    iget-object v2, v2, Lx6;->e:Lo6;

    invoke-virtual {v1}, Lz5;->U()I

    move-result v3

    goto :goto_4

    :cond_9
    iget-object v2, v1, Lz5;->d:Lt6;

    iget-object v2, v2, Lx6;->e:Lo6;

    invoke-virtual {v1}, Lz5;->U()I

    move-result v3

    goto :goto_5

    :cond_a
    :goto_6
    iget-boolean v2, v1, Lz5;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lz5;->e:Lv6;

    iget-object v2, v2, Lv6;->l:Lo6;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lz5;->q()I

    move-result v1

    invoke-virtual {v2, v1}, Lo6;->d(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public n(Lj6$b;)V
    .locals 0

    iput-object p1, p0, Lm6;->f:Lj6$b;

    return-void
.end method

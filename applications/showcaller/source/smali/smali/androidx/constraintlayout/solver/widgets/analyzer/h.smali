.class public Landroidx/constraintlayout/solver/widgets/analyzer/h;
.super Ljava/lang/Object;
.source "Grouping.java"


# direct methods
.method public static a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/n;",
            ">;",
            "Landroidx/constraintlayout/solver/widgets/analyzer/n;",
            ")",
            "Landroidx/constraintlayout/solver/widgets/analyzer/n;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L0:I

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M0:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    .line 3
    iget v3, p3, Landroidx/constraintlayout/solver/widgets/analyzer/n;->c:I

    if-eq v0, v3, :cond_4

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 5
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    .line 6
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->c()I

    move-result v5

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p3, p1, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->g(ILandroidx/constraintlayout/solver/widgets/analyzer/n;)V

    .line 8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    if-nez p3, :cond_9

    .line 9
    instance-of v0, p0, Landroidx/constraintlayout/solver/widgets/h;

    if-eqz v0, :cond_7

    .line 10
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/h;

    .line 11
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/h;->f1(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    const/4 v2, 0x0

    .line 12
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 13
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    .line 14
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->c()I

    move-result v4

    if-ne v4, v0, :cond_6

    move-object p3, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-nez p3, :cond_8

    .line 15
    new-instance p3, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    invoke-direct {p3, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/n;-><init>(I)V

    .line 16
    :cond_8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_9
    invoke-virtual {p3, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 18
    instance-of v0, p0, Landroidx/constraintlayout/solver/widgets/f;

    if-eqz v0, :cond_b

    .line 19
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/f;

    .line 20
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/f;->e1()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/f;->f1()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {v2, v1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)V

    :cond_b
    if-nez p1, :cond_c

    .line 21
    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->c()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L0:I

    .line 22
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)V

    .line 23
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)V

    goto :goto_5

    .line 24
    :cond_c
    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->c()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M0:I

    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)V

    .line 26
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)V

    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)V

    .line 28
    :goto_5
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)V

    :cond_d
    return-object p3
.end method

.method private static b(Ljava/util/ArrayList;I)Landroidx/constraintlayout/solver/widgets/analyzer/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/n;",
            ">;I)",
            "Landroidx/constraintlayout/solver/widgets/analyzer/n;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    .line 3
    iget v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/n;->c:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroidx/constraintlayout/solver/widgets/d;Landroidx/constraintlayout/solver/widgets/analyzer/b$b;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/k;->e1()Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    .line 5
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    .line 6
    invoke-static {v6, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v6

    if-nez v6, :cond_0

    return v3

    .line 7
    :cond_0
    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/e;

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/d;->S0:Landroidx/constraintlayout/solver/e;

    if-nez v4, :cond_2f

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v4, v2, :cond_13

    .line 9
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    .line 11
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    .line 12
    invoke-static {v14, v15, v3, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 13
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/d;->q1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    sget v5, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->a:I

    move-object/from16 v14, p1

    invoke-static {v13, v14, v3, v5}, Landroidx/constraintlayout/solver/widgets/d;->F1(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/b$b;Landroidx/constraintlayout/solver/widgets/analyzer/b$a;I)Z

    goto :goto_2

    :cond_3
    move-object/from16 v14, p1

    .line 14
    :goto_2
    instance-of v3, v13, Landroidx/constraintlayout/solver/widgets/f;

    if-eqz v3, :cond_7

    .line 15
    move-object v5, v13

    check-cast v5, Landroidx/constraintlayout/solver/widgets/f;

    .line 16
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/f;->f1()I

    move-result v15

    if-nez v15, :cond_5

    if-nez v8, :cond_4

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :cond_4
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_5
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/f;->f1()I

    move-result v15

    if-ne v15, v12, :cond_7

    if-nez v6, :cond_6

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :cond_6
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_7
    instance-of v5, v13, Landroidx/constraintlayout/solver/widgets/h;

    if-eqz v5, :cond_e

    .line 23
    instance-of v5, v13, Landroidx/constraintlayout/solver/widgets/a;

    if-eqz v5, :cond_b

    .line 24
    move-object v5, v13

    check-cast v5, Landroidx/constraintlayout/solver/widgets/a;

    .line 25
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/a;->k1()I

    move-result v15

    if-nez v15, :cond_9

    if-nez v7, :cond_8

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :cond_8
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_9
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/a;->k1()I

    move-result v15

    if-ne v15, v12, :cond_e

    if-nez v9, :cond_a

    .line 29
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :cond_a
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_b
    move-object v5, v13

    check-cast v5, Landroidx/constraintlayout/solver/widgets/h;

    if-nez v7, :cond_c

    .line 32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :cond_c
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_d

    .line 34
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :cond_d
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_e
    :goto_3
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_10

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_10

    if-nez v3, :cond_10

    instance-of v5, v13, Landroidx/constraintlayout/solver/widgets/a;

    if-nez v5, :cond_10

    if-nez v10, :cond_f

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v5

    .line 38
    :cond_f
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_10
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_12

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_12

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_12

    if-nez v3, :cond_12

    instance-of v3, v13, Landroidx/constraintlayout/solver/widgets/a;

    if-nez v3, :cond_12

    if-nez v11, :cond_11

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 41
    :cond_11
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 42
    :cond_13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_14

    .line 43
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/f;

    const/4 v6, 0x0

    const/4 v13, 0x0

    .line 44
    invoke-static {v5, v6, v3, v13}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_4

    :cond_14
    const/4 v6, 0x0

    const/4 v13, 0x0

    if-eqz v7, :cond_15

    .line 45
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/h;

    .line 46
    invoke-static {v5, v6, v3, v13}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    move-result-object v7

    .line 47
    invoke-virtual {v5, v3, v6, v7}, Landroidx/constraintlayout/solver/widgets/h;->e1(Ljava/util/ArrayList;ILandroidx/constraintlayout/solver/widgets/analyzer/n;)V

    .line 48
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->b(Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_5

    .line 49
    :cond_15
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 51
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 52
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_6

    .line 53
    :cond_16
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 55
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 56
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_7

    .line 57
    :cond_17
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 59
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 60
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_8

    :cond_18
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v10, :cond_19

    .line 61
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 62
    invoke-static {v5, v6, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_9

    :cond_19
    if-eqz v8, :cond_1a

    .line 63
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/f;

    .line 64
    invoke-static {v5, v12, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_a

    :cond_1a
    if-eqz v9, :cond_1b

    .line 65
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/h;

    .line 66
    invoke-static {v5, v12, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    move-result-object v6

    .line 67
    invoke-virtual {v5, v3, v12, v6}, Landroidx/constraintlayout/solver/widgets/h;->e1(Ljava/util/ArrayList;ILandroidx/constraintlayout/solver/widgets/analyzer/n;)V

    .line 68
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->b(Ljava/util/ArrayList;)V

    const/4 v7, 0x0

    goto :goto_b

    .line 69
    :cond_1b
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 71
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 72
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_c

    .line 73
    :cond_1c
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 75
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 76
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_d

    .line 77
    :cond_1d
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 79
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 80
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_e

    .line 81
    :cond_1e
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 82
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 83
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 84
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_f

    :cond_1f
    const/4 v6, 0x0

    if-eqz v11, :cond_20

    .line 85
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 86
    invoke-static {v5, v12, v3, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/n;)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_10

    :cond_20
    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_22

    .line 87
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 88
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j0()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 89
    iget v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L0:I

    invoke-static {v3, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->b(Ljava/util/ArrayList;I)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    move-result-object v6

    .line 90
    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M0:I

    invoke-static {v3, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->b(Ljava/util/ArrayList;I)Landroidx/constraintlayout/solver/widgets/analyzer/n;

    move-result-object v5

    if-eqz v6, :cond_21

    if-eqz v5, :cond_21

    const/4 v7, 0x0

    .line 91
    invoke-virtual {v6, v7, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->g(ILandroidx/constraintlayout/solver/widgets/analyzer/n;)V

    const/4 v7, 0x2

    .line 92
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->i(I)V

    .line 93
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 94
    :cond_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v12, :cond_23

    const/4 v1, 0x0

    return v1

    .line 95
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_27

    .line 96
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v13, 0x0

    :cond_24
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    .line 97
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->d()I

    move-result v4

    if-ne v4, v12, :cond_25

    goto :goto_12

    :cond_25
    const/4 v4, 0x0

    .line 98
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->h(Z)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/d;->x1()Landroidx/constraintlayout/solver/d;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->f(Landroidx/constraintlayout/solver/d;I)I

    move-result v5

    if-le v5, v6, :cond_24

    move-object v13, v2

    move v6, v5

    goto :goto_12

    :cond_26
    if-eqz v13, :cond_27

    .line 100
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D0(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 101
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y0(I)V

    .line 102
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->h(Z)V

    goto :goto_13

    :cond_27
    const/4 v13, 0x0

    .line 103
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2b

    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    :cond_28
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    .line 105
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->d()I

    move-result v4

    if-nez v4, :cond_29

    goto :goto_14

    :cond_29
    const/4 v4, 0x0

    .line 106
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->h(Z)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/d;->x1()Landroidx/constraintlayout/solver/d;

    move-result-object v5

    invoke-virtual {v3, v5, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->f(Landroidx/constraintlayout/solver/d;I)I

    move-result v5

    if-le v5, v6, :cond_28

    move-object v2, v3

    move v6, v5

    goto :goto_14

    :cond_2a
    const/4 v4, 0x0

    if-eqz v2, :cond_2c

    .line 108
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U0(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 109
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z0(I)V

    .line 110
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->h(Z)V

    move-object v5, v2

    goto :goto_15

    :cond_2b
    const/4 v4, 0x0

    :cond_2c
    const/4 v5, 0x0

    :goto_15
    if-nez v13, :cond_2e

    if-eqz v5, :cond_2d

    goto :goto_16

    :cond_2d
    const/4 v3, 0x0

    goto :goto_17

    :cond_2e
    :goto_16
    const/4 v3, 0x1

    :goto_17
    return v3

    :cond_2f
    const/4 v0, 0x0

    .line 111
    throw v0
.end method

.method public static d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_1

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v3, :cond_1

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v4, :cond_0

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eq p3, v0, :cond_3

    .line 2
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p3, p2, :cond_3

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p3, v0, :cond_2

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v1

    :cond_5
    :goto_4
    return v2
.end method

.class public Lw/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lv/e;

.field public b:Z

.field public c:Z

.field public d:Lv/e;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw/p;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lw/b$b;

.field public g:Lw/b$a;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lw/e;->b:Z

    .line 3
    iput-boolean v0, p0, Lw/e;->c:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/e;->e:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lw/e;->f:Lw/b$b;

    .line 7
    new-instance v0, Lw/b$a;

    invoke-direct {v0}, Lw/b$a;-><init>()V

    iput-object v0, p0, Lw/e;->g:Lw/b$a;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/e;->h:Ljava/util/ArrayList;

    .line 9
    iput-object p1, p0, Lw/e;->a:Lv/e;

    .line 10
    iput-object p1, p0, Lw/e;->d:Lv/e;

    return-void
.end method


# virtual methods
.method public final a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw/f;",
            "II",
            "Lw/f;",
            "Ljava/util/ArrayList<",
            "Lw/m;",
            ">;",
            "Lw/m;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lw/f;->d:Lw/p;

    .line 2
    iget-object v0, p1, Lw/p;->c:Lw/m;

    if-nez v0, :cond_a

    iget-object v0, p0, Lw/e;->a:Lv/e;

    iget-object v1, v0, Lv/d;->d:Lw/l;

    if-eq p1, v1, :cond_a

    iget-object v0, v0, Lv/d;->e:Lw/n;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p6, :cond_1

    .line 3
    new-instance p6, Lw/m;

    invoke-direct {p6, p1, p3}, Lw/m;-><init>(Lw/p;I)V

    .line 4
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iput-object p6, p1, Lw/p;->c:Lw/m;

    .line 6
    iget-object p3, p6, Lw/m;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p3, p1, Lw/p;->h:Lw/f;

    iget-object p3, p3, Lw/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/d;

    .line 8
    instance-of v1, v0, Lw/f;

    if-eqz v1, :cond_2

    .line 9
    move-object v1, v0

    check-cast v1, Lw/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p3, p1, Lw/p;->i:Lw/f;

    iget-object p3, p3, Lw/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/d;

    .line 11
    instance-of v1, v0, Lw/f;

    if-eqz v1, :cond_4

    .line 12
    move-object v1, v0

    check-cast v1, Lw/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    .line 13
    instance-of v0, p1, Lw/n;

    if-eqz v0, :cond_7

    .line 14
    move-object v0, p1

    check-cast v0, Lw/n;

    iget-object v0, v0, Lw/n;->k:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/d;

    .line 15
    instance-of v1, v0, Lw/f;

    if-eqz v1, :cond_6

    .line 16
    move-object v1, v0

    check-cast v1, Lw/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_2

    .line 17
    :cond_7
    iget-object v0, p1, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lw/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 18
    invoke-virtual/range {v0 .. v6}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_3

    .line 19
    :cond_8
    iget-object v0, p1, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lw/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 20
    invoke-virtual/range {v0 .. v6}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_4

    :cond_9
    if-ne p2, p3, :cond_a

    .line 21
    instance-of p3, p1, Lw/n;

    if-eqz p3, :cond_a

    .line 22
    check-cast p1, Lw/n;

    iget-object p1, p1, Lw/n;->k:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lw/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 23
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_a
    :goto_6
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final b(Lv/e;)Z
    .locals 16

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lv/j;->r0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/d;

    .line 2
    iget-object v4, v2, Lv/d;->U:[I

    aget v5, v4, v3

    const/4 v10, 0x1

    .line 3
    aget v4, v4, v10

    .line 4
    iget v6, v2, Lv/d;->i0:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 5
    iput-boolean v10, v2, Lv/d;->a:Z

    goto :goto_0

    .line 6
    :cond_1
    iget v6, v2, Lv/d;->w:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x3

    const/4 v8, 0x2

    cmpg-float v9, v6, v11

    if-gez v9, :cond_2

    if-ne v5, v7, :cond_2

    .line 7
    iput v8, v2, Lv/d;->r:I

    .line 8
    :cond_2
    iget v9, v2, Lv/d;->z:F

    cmpg-float v12, v9, v11

    if-gez v12, :cond_3

    if-ne v4, v7, :cond_3

    .line 9
    iput v8, v2, Lv/d;->s:I

    .line 10
    :cond_3
    iget v12, v2, Lv/d;->Y:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    if-ne v5, v7, :cond_5

    if-eq v4, v8, :cond_4

    if-ne v4, v10, :cond_5

    .line 11
    :cond_4
    iput v7, v2, Lv/d;->r:I

    goto :goto_1

    :cond_5
    if-ne v4, v7, :cond_7

    if-eq v5, v8, :cond_6

    if-ne v5, v10, :cond_7

    .line 12
    :cond_6
    iput v7, v2, Lv/d;->s:I

    goto :goto_1

    :cond_7
    if-ne v5, v7, :cond_9

    if-ne v4, v7, :cond_9

    .line 13
    iget v12, v2, Lv/d;->r:I

    if-nez v12, :cond_8

    .line 14
    iput v7, v2, Lv/d;->r:I

    .line 15
    :cond_8
    iget v12, v2, Lv/d;->s:I

    if-nez v12, :cond_9

    .line 16
    iput v7, v2, Lv/d;->s:I

    :cond_9
    :goto_1
    if-ne v5, v7, :cond_b

    .line 17
    iget v12, v2, Lv/d;->r:I

    if-ne v12, v10, :cond_b

    .line 18
    iget-object v12, v2, Lv/d;->J:Lv/c;

    iget-object v12, v12, Lv/c;->f:Lv/c;

    if-eqz v12, :cond_a

    iget-object v12, v2, Lv/d;->L:Lv/c;

    iget-object v12, v12, Lv/c;->f:Lv/c;

    if-nez v12, :cond_b

    :cond_a
    const/4 v12, 0x2

    goto :goto_2

    :cond_b
    move v12, v5

    :goto_2
    if-ne v4, v7, :cond_d

    .line 19
    iget v5, v2, Lv/d;->s:I

    if-ne v5, v10, :cond_d

    .line 20
    iget-object v5, v2, Lv/d;->K:Lv/c;

    iget-object v5, v5, Lv/c;->f:Lv/c;

    if-eqz v5, :cond_c

    iget-object v5, v2, Lv/d;->M:Lv/c;

    iget-object v5, v5, Lv/c;->f:Lv/c;

    if-nez v5, :cond_d

    :cond_c
    const/4 v13, 0x2

    goto :goto_3

    :cond_d
    move v13, v4

    .line 21
    :goto_3
    iget-object v4, v2, Lv/d;->d:Lw/l;

    iput v12, v4, Lw/p;->d:I

    .line 22
    iget v5, v2, Lv/d;->r:I

    iput v5, v4, Lw/p;->a:I

    .line 23
    iget-object v4, v2, Lv/d;->e:Lw/n;

    iput v13, v4, Lw/p;->d:I

    .line 24
    iget v14, v2, Lv/d;->s:I

    iput v14, v4, Lw/p;->a:I

    const/4 v4, 0x4

    if-eq v12, v4, :cond_e

    if-eq v12, v10, :cond_e

    if-ne v12, v8, :cond_f

    :cond_e
    if-eq v13, v4, :cond_23

    if-eq v13, v10, :cond_23

    if-ne v13, v8, :cond_f

    goto/16 :goto_5

    :cond_f
    const/high16 v15, 0x3f000000    # 0.5f

    if-ne v12, v7, :cond_17

    if-eq v13, v8, :cond_10

    if-ne v13, v10, :cond_17

    :cond_10
    if-ne v5, v7, :cond_12

    if-ne v13, v8, :cond_11

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v8

    .line 25
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 26
    :cond_11
    invoke-virtual {v2}, Lv/d;->l()I

    move-result v9

    int-to-float v3, v9

    .line 27
    iget v4, v2, Lv/d;->Y:F

    mul-float v3, v3, v4

    add-float/2addr v3, v15

    float-to-int v7, v3

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v8

    .line 28
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 29
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 30
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 31
    iput-boolean v10, v2, Lv/d;->a:Z

    goto/16 :goto_0

    :cond_12
    if-ne v5, v10, :cond_13

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x2

    move-object/from16 v4, p0

    move-object v5, v2

    move v8, v13

    .line 32
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 33
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v2

    iput v2, v3, Lw/g;->m:I

    goto/16 :goto_0

    :cond_13
    if-ne v5, v8, :cond_15

    .line 34
    iget-object v11, v0, Lv/d;->U:[I

    aget v8, v11, v3

    if-eq v8, v10, :cond_14

    aget v8, v11, v3

    if-ne v8, v4, :cond_17

    .line 35
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lv/d;->u()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v6, v3

    add-float/2addr v6, v15

    float-to-int v7, v6

    .line 36
    invoke-virtual {v2}, Lv/d;->l()I

    move-result v9

    const/4 v6, 0x1

    move-object/from16 v4, p0

    move-object v5, v2

    move v8, v13

    .line 37
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 38
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 39
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 40
    iput-boolean v10, v2, Lv/d;->a:Z

    goto/16 :goto_0

    .line 41
    :cond_15
    iget-object v8, v2, Lv/d;->R:[Lv/c;

    aget-object v11, v8, v3

    iget-object v11, v11, Lv/c;->f:Lv/c;

    if-eqz v11, :cond_16

    aget-object v8, v8, v10

    iget-object v8, v8, Lv/c;->f:Lv/c;

    if-nez v8, :cond_17

    :cond_16
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x2

    move-object/from16 v4, p0

    move-object v5, v2

    move v8, v13

    .line 42
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 43
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 44
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 45
    iput-boolean v10, v2, Lv/d;->a:Z

    goto/16 :goto_0

    :cond_17
    if-ne v13, v7, :cond_20

    const/4 v8, 0x2

    if-eq v12, v8, :cond_18

    if-ne v12, v10, :cond_20

    :cond_18
    if-ne v14, v7, :cond_1b

    if-ne v12, v8, :cond_19

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v8

    .line 46
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 47
    :cond_19
    invoke-virtual {v2}, Lv/d;->u()I

    move-result v7

    .line 48
    iget v3, v2, Lv/d;->Y:F

    .line 49
    iget v4, v2, Lv/d;->Z:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_1a
    int-to-float v4, v7

    mul-float v4, v4, v3

    add-float/2addr v4, v15

    float-to-int v9, v4

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v8

    .line 50
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 51
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 52
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 53
    iput-boolean v10, v2, Lv/d;->a:Z

    goto/16 :goto_0

    :cond_1b
    if-ne v14, v10, :cond_1c

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v12

    .line 54
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 55
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v2

    iput v2, v3, Lw/g;->m:I

    goto/16 :goto_0

    :cond_1c
    const/4 v8, 0x2

    if-ne v14, v8, :cond_1e

    .line 56
    iget-object v8, v0, Lv/d;->U:[I

    aget v11, v8, v10

    if-eq v11, v10, :cond_1d

    aget v8, v8, v10

    if-ne v8, v4, :cond_20

    .line 57
    :cond_1d
    invoke-virtual {v2}, Lv/d;->u()I

    move-result v7

    .line 58
    invoke-virtual/range {p1 .. p1}, Lv/d;->l()I

    move-result v3

    int-to-float v3, v3

    mul-float v9, v9, v3

    add-float/2addr v9, v15

    float-to-int v9, v9

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v12

    .line 59
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 60
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 61
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 62
    iput-boolean v10, v2, Lv/d;->a:Z

    goto/16 :goto_0

    .line 63
    :cond_1e
    iget-object v4, v2, Lv/d;->R:[Lv/c;

    const/4 v8, 0x2

    aget-object v11, v4, v8

    iget-object v8, v11, Lv/c;->f:Lv/c;

    if-eqz v8, :cond_1f

    aget-object v4, v4, v7

    iget-object v4, v4, Lv/c;->f:Lv/c;

    if-nez v4, :cond_20

    :cond_1f
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x2

    move-object/from16 v4, p0

    move-object v5, v2

    move v8, v13

    .line 64
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 65
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 66
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 67
    iput-boolean v10, v2, Lv/d;->a:Z

    goto/16 :goto_0

    :cond_20
    if-ne v12, v7, :cond_0

    if-ne v13, v7, :cond_0

    if-eq v5, v10, :cond_22

    if-ne v14, v10, :cond_21

    goto :goto_4

    :cond_21
    const/4 v4, 0x2

    if-ne v14, v4, :cond_0

    if-ne v5, v4, :cond_0

    .line 68
    iget-object v4, v0, Lv/d;->U:[I

    aget v3, v4, v3

    if-ne v3, v10, :cond_0

    aget v3, v4, v10

    if-ne v3, v10, :cond_0

    .line 69
    invoke-virtual/range {p1 .. p1}, Lv/d;->u()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v6, v3

    add-float/2addr v6, v15

    float-to-int v7, v6

    .line 70
    invoke-virtual/range {p1 .. p1}, Lv/d;->l()I

    move-result v3

    int-to-float v3, v3

    mul-float v9, v9, v3

    add-float/2addr v9, v15

    float-to-int v9, v9

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v8

    .line 71
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 72
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 73
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 74
    iput-boolean v10, v2, Lv/d;->a:Z

    goto/16 :goto_0

    :cond_22
    :goto_4
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v8

    .line 75
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 76
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v4

    iput v4, v3, Lw/g;->m:I

    .line 77
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v2

    iput v2, v3, Lw/g;->m:I

    goto/16 :goto_0

    .line 78
    :cond_23
    :goto_5
    invoke-virtual {v2}, Lv/d;->u()I

    move-result v3

    if-ne v12, v4, :cond_24

    .line 79
    invoke-virtual/range {p1 .. p1}, Lv/d;->u()I

    move-result v3

    iget-object v5, v2, Lv/d;->J:Lv/c;

    iget v5, v5, Lv/c;->g:I

    sub-int/2addr v3, v5

    iget-object v5, v2, Lv/d;->L:Lv/c;

    iget v5, v5, Lv/c;->g:I

    sub-int/2addr v3, v5

    move v7, v3

    const/4 v6, 0x1

    goto :goto_6

    :cond_24
    move v7, v3

    move v6, v12

    .line 80
    :goto_6
    invoke-virtual {v2}, Lv/d;->l()I

    move-result v3

    if-ne v13, v4, :cond_25

    .line 81
    invoke-virtual/range {p1 .. p1}, Lv/d;->l()I

    move-result v3

    iget-object v4, v2, Lv/d;->K:Lv/c;

    iget v4, v4, Lv/c;->g:I

    sub-int/2addr v3, v4

    iget-object v4, v2, Lv/d;->M:Lv/c;

    iget v4, v4, Lv/c;->g:I

    sub-int/2addr v3, v4

    move v9, v3

    const/4 v8, 0x1

    goto :goto_7

    :cond_25
    move v9, v3

    move v8, v13

    :goto_7
    move-object/from16 v4, p0

    move-object v5, v2

    .line 82
    invoke-virtual/range {v4 .. v9}, Lw/e;->f(Lv/d;IIII)V

    .line 83
    iget-object v3, v2, Lv/d;->d:Lw/l;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 84
    iget-object v3, v2, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->e:Lw/g;

    invoke-virtual {v2}, Lv/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lw/g;->c(I)V

    .line 85
    iput-boolean v10, v2, Lv/d;->a:Z

    goto/16 :goto_0

    :cond_26
    return v3
.end method

.method public c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lw/e;->e:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v1, p0, Lw/e;->d:Lv/e;

    iget-object v1, v1, Lv/d;->d:Lw/l;

    invoke-virtual {v1}, Lw/l;->f()V

    .line 4
    iget-object v1, p0, Lw/e;->d:Lv/e;

    iget-object v1, v1, Lv/d;->e:Lw/n;

    invoke-virtual {v1}, Lw/n;->f()V

    .line 5
    iget-object v1, p0, Lw/e;->d:Lv/e;

    iget-object v1, v1, Lv/d;->d:Lw/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lw/e;->d:Lv/e;

    iget-object v1, v1, Lv/d;->e:Lw/n;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lw/e;->d:Lv/e;

    iget-object v1, v1, Lv/j;->r0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/d;

    .line 8
    instance-of v6, v3, Lv/f;

    if-eqz v6, :cond_1

    .line 9
    new-instance v4, Lw/j;

    invoke-direct {v4, v3}, Lw/j;-><init>(Lv/d;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3}, Lv/d;->A()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11
    iget-object v6, v3, Lv/d;->b:Lw/c;

    if-nez v6, :cond_2

    .line 12
    new-instance v6, Lw/c;

    invoke-direct {v6, v3, v5}, Lw/c;-><init>(Lv/d;I)V

    iput-object v6, v3, Lv/d;->b:Lw/c;

    :cond_2
    if-nez v2, :cond_3

    .line 13
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14
    :cond_3
    iget-object v5, v3, Lv/d;->b:Lw/c;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    iget-object v5, v3, Lv/d;->d:Lw/l;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_1
    invoke-virtual {v3}, Lv/d;->B()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 17
    iget-object v5, v3, Lv/d;->c:Lw/c;

    if-nez v5, :cond_5

    .line 18
    new-instance v5, Lw/c;

    invoke-direct {v5, v3, v4}, Lw/c;-><init>(Lv/d;I)V

    iput-object v5, v3, Lv/d;->c:Lw/c;

    :cond_5
    if-nez v2, :cond_6

    .line 19
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 20
    :cond_6
    iget-object v4, v3, Lv/d;->c:Lw/c;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_7
    iget-object v4, v3, Lv/d;->e:Lw/n;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_2
    instance-of v4, v3, Lv/h;

    if-eqz v4, :cond_0

    .line 23
    new-instance v4, Lw/k;

    invoke-direct {v4, v3}, Lw/k;-><init>(Lv/d;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/p;

    .line 26
    invoke-virtual {v2}, Lw/p;->f()V

    goto :goto_3

    .line 27
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/p;

    .line 28
    iget-object v2, v1, Lw/p;->b:Lv/d;

    iget-object v3, p0, Lw/e;->d:Lv/e;

    if-ne v2, v3, :cond_b

    goto :goto_4

    .line 29
    :cond_b
    invoke-virtual {v1}, Lw/p;->d()V

    goto :goto_4

    .line 30
    :cond_c
    iget-object v0, p0, Lw/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    sput v5, Lw/m;->c:I

    .line 32
    iget-object v0, p0, Lw/e;->a:Lv/e;

    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v1, p0, Lw/e;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v5, v1}, Lw/e;->e(Lw/p;ILjava/util/ArrayList;)V

    .line 33
    iget-object v0, p0, Lw/e;->a:Lv/e;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v1, p0, Lw/e;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v4, v1}, Lw/e;->e(Lw/p;ILjava/util/ArrayList;)V

    .line 34
    iput-boolean v5, p0, Lw/e;->b:Z

    return-void
.end method

.method public final d(Lv/e;I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lw/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v6, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_d

    .line 2
    iget-object v9, v0, Lw/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw/m;

    .line 3
    iget-object v10, v9, Lw/m;->a:Lw/p;

    instance-of v11, v10, Lw/c;

    if-eqz v11, :cond_0

    .line 4
    move-object v11, v10

    check-cast v11, Lw/c;

    .line 5
    iget v11, v11, Lw/p;->f:I

    if-eq v11, v2, :cond_2

    goto/16 :goto_5

    :cond_0
    if-nez v2, :cond_1

    .line 6
    instance-of v11, v10, Lw/l;

    if-nez v11, :cond_2

    goto/16 :goto_5

    .line 7
    :cond_1
    instance-of v11, v10, Lw/n;

    if-nez v11, :cond_2

    goto/16 :goto_5

    :cond_2
    if-nez v2, :cond_3

    .line 8
    iget-object v11, v1, Lv/d;->d:Lw/l;

    goto :goto_1

    :cond_3
    iget-object v11, v1, Lv/d;->e:Lw/n;

    :goto_1
    iget-object v11, v11, Lw/p;->h:Lw/f;

    if-nez v2, :cond_4

    .line 9
    iget-object v12, v1, Lv/d;->d:Lw/l;

    goto :goto_2

    :cond_4
    iget-object v12, v1, Lv/d;->e:Lw/n;

    :goto_2
    iget-object v12, v12, Lw/p;->i:Lw/f;

    .line 10
    iget-object v10, v10, Lw/p;->h:Lw/f;

    iget-object v10, v10, Lw/f;->l:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 11
    iget-object v11, v9, Lw/m;->a:Lw/p;

    iget-object v11, v11, Lw/p;->i:Lw/f;

    iget-object v11, v11, Lw/f;->l:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 12
    iget-object v12, v9, Lw/m;->a:Lw/p;

    invoke-virtual {v12}, Lw/p;->j()J

    move-result-wide v12

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    .line 13
    iget-object v10, v9, Lw/m;->a:Lw/p;

    iget-object v10, v10, Lw/p;->h:Lw/f;

    invoke-virtual {v9, v10, v6, v7}, Lw/m;->b(Lw/f;J)J

    move-result-wide v10

    .line 14
    iget-object v14, v9, Lw/m;->a:Lw/p;

    iget-object v14, v14, Lw/p;->i:Lw/f;

    invoke-virtual {v9, v14, v6, v7}, Lw/m;->a(Lw/f;J)J

    move-result-wide v6

    sub-long/2addr v10, v12

    .line 15
    iget-object v14, v9, Lw/m;->a:Lw/p;

    iget-object v15, v14, Lw/p;->i:Lw/f;

    iget v15, v15, Lw/f;->f:I

    neg-int v0, v15

    int-to-long v0, v0

    cmp-long v16, v10, v0

    if-ltz v16, :cond_5

    int-to-long v0, v15

    add-long/2addr v10, v0

    :cond_5
    neg-long v0, v6

    sub-long/2addr v0, v12

    .line 16
    iget-object v6, v14, Lw/p;->h:Lw/f;

    iget v6, v6, Lw/f;->f:I

    int-to-long v6, v6

    sub-long/2addr v0, v6

    cmp-long v15, v0, v6

    if-ltz v15, :cond_6

    sub-long/2addr v0, v6

    .line 17
    :cond_6
    iget-object v6, v14, Lw/p;->b:Lv/d;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_7

    .line 18
    iget v6, v6, Lv/d;->f0:F

    goto :goto_3

    :cond_7
    const/4 v7, 0x1

    if-ne v2, v7, :cond_8

    .line 19
    iget v6, v6, Lv/d;->g0:F

    goto :goto_3

    :cond_8
    const/high16 v6, -0x40800000    # -1.0f

    :goto_3
    const/4 v7, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_9

    long-to-float v0, v0

    div-float/2addr v0, v6

    long-to-float v1, v10

    sub-float v7, v14, v6

    div-float/2addr v1, v7

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_4

    :cond_9
    const-wide/16 v0, 0x0

    :goto_4
    long-to-float v0, v0

    mul-float v1, v0, v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v1, v7

    float-to-long v10, v1

    invoke-static {v14, v6, v0, v7}, Landroidx/recyclerview/widget/b;->n(FFFF)F

    move-result v0

    float-to-long v0, v0

    add-long/2addr v10, v12

    add-long/2addr v10, v0

    .line 20
    iget-object v0, v9, Lw/m;->a:Lw/p;

    iget-object v1, v0, Lw/p;->h:Lw/f;

    iget v1, v1, Lw/f;->f:I

    int-to-long v6, v1

    add-long/2addr v6, v10

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget v0, v0, Lw/f;->f:I

    int-to-long v0, v0

    sub-long/2addr v6, v0

    goto :goto_5

    :cond_a
    if-eqz v10, :cond_b

    .line 21
    iget-object v0, v9, Lw/m;->a:Lw/p;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    iget v1, v0, Lw/f;->f:I

    int-to-long v6, v1

    invoke-virtual {v9, v0, v6, v7}, Lw/m;->b(Lw/f;J)J

    move-result-wide v0

    .line 22
    iget-object v6, v9, Lw/m;->a:Lw/p;

    iget-object v6, v6, Lw/p;->h:Lw/f;

    iget v6, v6, Lw/f;->f:I

    int-to-long v6, v6

    add-long/2addr v6, v12

    .line 23
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_5

    :cond_b
    if-eqz v11, :cond_c

    .line 24
    iget-object v0, v9, Lw/m;->a:Lw/p;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget v1, v0, Lw/f;->f:I

    int-to-long v6, v1

    invoke-virtual {v9, v0, v6, v7}, Lw/m;->a(Lw/f;J)J

    move-result-wide v0

    .line 25
    iget-object v6, v9, Lw/m;->a:Lw/p;

    iget-object v6, v6, Lw/p;->i:Lw/f;

    iget v6, v6, Lw/f;->f:I

    neg-int v6, v6

    int-to-long v6, v6

    add-long/2addr v6, v12

    neg-long v0, v0

    .line 26
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_5

    .line 27
    :cond_c
    iget-object v0, v9, Lw/m;->a:Lw/p;

    iget-object v1, v0, Lw/p;->h:Lw/f;

    iget v1, v1, Lw/f;->f:I

    int-to-long v6, v1

    invoke-virtual {v0}, Lw/p;->j()J

    move-result-wide v0

    add-long/2addr v0, v6

    iget-object v6, v9, Lw/m;->a:Lw/p;

    iget-object v6, v6, Lw/p;->i:Lw/f;

    iget v6, v6, Lw/f;->f:I

    int-to-long v6, v6

    sub-long v6, v0, v6

    .line 28
    :goto_5
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_d
    long-to-int v0, v4

    return v0
.end method

.method public final e(Lw/p;ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw/p;",
            "I",
            "Ljava/util/ArrayList<",
            "Lw/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/d;

    .line 2
    instance-of v2, v1, Lw/f;

    if-eqz v2, :cond_1

    .line 3
    move-object v4, v1

    check-cast v4, Lw/f;

    const/4 v6, 0x0

    .line 4
    iget-object v7, p1, Lw/p;->i:Lw/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, v1, Lw/p;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lw/p;

    .line 7
    iget-object v3, v1, Lw/p;->h:Lw/f;

    const/4 v5, 0x0

    iget-object v6, p1, Lw/p;->i:Lw/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p1, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/d;

    .line 9
    instance-of v2, v1, Lw/f;

    if-eqz v2, :cond_4

    .line 10
    move-object v4, v1

    check-cast v4, Lw/f;

    const/4 v6, 0x1

    .line 11
    iget-object v7, p1, Lw/p;->h:Lw/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_1

    .line 12
    :cond_4
    instance-of v2, v1, Lw/p;

    if-eqz v2, :cond_3

    .line 13
    check-cast v1, Lw/p;

    .line 14
    iget-object v3, v1, Lw/p;->i:Lw/f;

    const/4 v5, 0x1

    iget-object v6, p1, Lw/p;->h:Lw/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 15
    check-cast p1, Lw/n;

    iget-object p1, p1, Lw/n;->k:Lw/f;

    iget-object p1, p1, Lw/f;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/d;

    .line 16
    instance-of v1, v0, Lw/f;

    if-eqz v1, :cond_6

    .line 17
    move-object v3, v0

    check-cast v3, Lw/f;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    .line 18
    invoke-virtual/range {v2 .. v8}, Lw/e;->a(Lw/f;IILw/f;Ljava/util/ArrayList;Lw/m;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final f(Lv/d;IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/e;->g:Lw/b$a;

    iput p2, v0, Lw/b$a;->a:I

    .line 2
    iput p4, v0, Lw/b$a;->b:I

    .line 3
    iput p3, v0, Lw/b$a;->c:I

    .line 4
    iput p5, v0, Lw/b$a;->d:I

    .line 5
    iget-object p2, p0, Lw/e;->f:Lw/b$b;

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Lv/d;Lw/b$a;)V

    .line 6
    iget-object p2, p0, Lw/e;->g:Lw/b$a;

    iget p2, p2, Lw/b$a;->e:I

    invoke-virtual {p1, p2}, Lv/d;->S(I)V

    .line 7
    iget-object p2, p0, Lw/e;->g:Lw/b$a;

    iget p2, p2, Lw/b$a;->f:I

    invoke-virtual {p1, p2}, Lv/d;->N(I)V

    .line 8
    iget-object p2, p0, Lw/e;->g:Lw/b$a;

    iget-boolean p3, p2, Lw/b$a;->h:Z

    .line 9
    iput-boolean p3, p1, Lv/d;->E:Z

    .line 10
    iget p2, p2, Lw/b$a;->g:I

    invoke-virtual {p1, p2}, Lv/d;->K(I)V

    return-void
.end method

.method public g()V
    .locals 12

    .line 1
    iget-object v0, p0, Lw/e;->a:Lv/e;

    iget-object v0, v0, Lv/j;->r0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/d;

    .line 2
    iget-boolean v2, v1, Lv/d;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, v1, Lv/d;->U:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    const/4 v9, 0x1

    .line 4
    aget v10, v2, v9

    .line 5
    iget v2, v1, Lv/d;->r:I

    .line 6
    iget v4, v1, Lv/d;->s:I

    const/4 v5, 0x2

    const/4 v11, 0x3

    if-eq v8, v5, :cond_3

    if-ne v8, v11, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eq v10, v5, :cond_4

    if-ne v10, v11, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    const/4 v3, 0x1

    .line 7
    :cond_5
    iget-object v4, v1, Lv/d;->d:Lw/l;

    iget-object v4, v4, Lw/p;->e:Lw/g;

    iget-boolean v5, v4, Lw/f;->j:Z

    .line 8
    iget-object v6, v1, Lv/d;->e:Lw/n;

    iget-object v6, v6, Lw/p;->e:Lw/g;

    iget-boolean v7, v6, Lw/f;->j:Z

    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 9
    iget v5, v4, Lw/f;->g:I

    iget v7, v6, Lw/f;->g:I

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Lw/e;->f(Lv/d;IIII)V

    .line 10
    iput-boolean v9, v1, Lv/d;->a:Z

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    .line 11
    iget v5, v4, Lw/f;->g:I

    iget v7, v6, Lw/f;->g:I

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lw/e;->f(Lv/d;IIII)V

    if-ne v10, v11, :cond_7

    .line 12
    iget-object v2, v1, Lv/d;->e:Lw/n;

    iget-object v2, v2, Lw/p;->e:Lw/g;

    invoke-virtual {v1}, Lv/d;->l()I

    move-result v3

    iput v3, v2, Lw/g;->m:I

    goto :goto_3

    .line 13
    :cond_7
    iget-object v2, v1, Lv/d;->e:Lw/n;

    iget-object v2, v2, Lw/p;->e:Lw/g;

    invoke-virtual {v1}, Lv/d;->l()I

    move-result v3

    invoke-virtual {v2, v3}, Lw/g;->c(I)V

    .line 14
    iput-boolean v9, v1, Lv/d;->a:Z

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_a

    if-eqz v2, :cond_a

    .line 15
    iget v5, v4, Lw/f;->g:I

    iget v7, v6, Lw/f;->g:I

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lw/e;->f(Lv/d;IIII)V

    if-ne v8, v11, :cond_9

    .line 16
    iget-object v2, v1, Lv/d;->d:Lw/l;

    iget-object v2, v2, Lw/p;->e:Lw/g;

    invoke-virtual {v1}, Lv/d;->u()I

    move-result v3

    iput v3, v2, Lw/g;->m:I

    goto :goto_3

    .line 17
    :cond_9
    iget-object v2, v1, Lv/d;->d:Lw/l;

    iget-object v2, v2, Lw/p;->e:Lw/g;

    invoke-virtual {v1}, Lv/d;->u()I

    move-result v3

    invoke-virtual {v2, v3}, Lw/g;->c(I)V

    .line 18
    iput-boolean v9, v1, Lv/d;->a:Z

    .line 19
    :cond_a
    :goto_3
    iget-boolean v2, v1, Lv/d;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lv/d;->e:Lw/n;

    iget-object v2, v2, Lw/n;->l:Lw/g;

    if-eqz v2, :cond_0

    .line 20
    iget v1, v1, Lv/d;->c0:I

    .line 21
    invoke-virtual {v2, v1}, Lw/g;->c(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

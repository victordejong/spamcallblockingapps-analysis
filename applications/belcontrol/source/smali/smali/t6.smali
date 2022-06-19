.class public Lt6;
.super Lx6;
.source ""


# static fields
.field public static k:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lt6;->k:[I

    return-void
.end method

.method public constructor <init>(Lz5;)V
    .locals 1

    invoke-direct {p0, p1}, Lx6;-><init>(Lz5;)V

    iget-object p1, p0, Lx6;->h:Ln6;

    sget-object v0, Ln6$a;->d:Ln6$a;

    iput-object v0, p1, Ln6;->e:Ln6$a;

    iget-object p1, p0, Lx6;->i:Ln6;

    sget-object v0, Ln6$a;->f:Ln6$a;

    iput-object v0, p1, Ln6;->e:Ln6$a;

    const/4 p1, 0x0

    iput p1, p0, Lx6;->f:I

    return-void
.end method


# virtual methods
.method public a(Ll6;)V
    .locals 16

    move-object/from16 v8, p0

    sget-object v0, Lt6$a;->a:[I

    iget-object v1, v8, Lx6;->j:Lx6$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lx6;->b:Lz5;

    iget-object v1, v0, Lz5;->H:Ly5;

    iget-object v0, v0, Lz5;->J:Ly5;

    move-object/from16 v3, p1

    invoke-virtual {v8, v3, v1, v0, v10}, Lx6;->n(Ll6;Ly5;Ly5;I)V

    return-void

    :cond_1
    move-object/from16 v3, p1

    invoke-virtual/range {p0 .. p1}, Lx6;->o(Ll6;)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, p1

    invoke-virtual/range {p0 .. p1}, Lx6;->p(Ll6;)V

    :goto_0
    iget-object v0, v8, Lx6;->e:Lo6;

    iget-boolean v0, v0, Ln6;->j:Z

    const/high16 v11, 0x3f000000    # 0.5f

    if-nez v0, :cond_21

    iget-object v0, v8, Lx6;->d:Lz5$b;

    sget-object v3, Lz5$b;->c:Lz5$b;

    if-ne v0, v3, :cond_21

    iget-object v0, v8, Lx6;->b:Lz5;

    iget v3, v0, Lz5;->n:I

    if-eq v3, v1, :cond_20

    if-eq v3, v2, :cond_3

    goto/16 :goto_11

    :cond_3
    iget v1, v0, Lz5;->o:I

    const/4 v3, -0x1

    if-eqz v1, :cond_7

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lz5;->x()I

    move-result v0

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_5

    if-eq v0, v9, :cond_6

    const/4 v0, 0x0

    goto/16 :goto_10

    :cond_5
    iget-object v0, v8, Lx6;->b:Lz5;

    iget-object v1, v0, Lz5;->e:Lv6;

    iget-object v1, v1, Lx6;->e:Lo6;

    iget v1, v1, Ln6;->g:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lz5;->w()F

    move-result v0

    div-float/2addr v1, v0

    goto :goto_1

    :cond_6
    iget-object v0, v8, Lx6;->b:Lz5;

    iget-object v1, v0, Lz5;->e:Lv6;

    iget-object v1, v1, Lx6;->e:Lo6;

    iget v1, v1, Ln6;->g:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lz5;->w()F

    move-result v0

    mul-float v1, v1, v0

    :goto_1
    add-float/2addr v1, v11

    float-to-int v0, v1

    goto/16 :goto_10

    :cond_7
    :goto_2
    iget-object v1, v0, Lz5;->e:Lv6;

    iget-object v12, v1, Lx6;->h:Ln6;

    iget-object v13, v1, Lx6;->i:Ln6;

    iget-object v1, v0, Lz5;->H:Ly5;

    iget-object v1, v1, Ly5;->f:Ly5;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iget-object v2, v0, Lz5;->I:Ly5;

    iget-object v2, v2, Ly5;->f:Ly5;

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    iget-object v4, v0, Lz5;->J:Ly5;

    iget-object v4, v4, Ly5;->f:Ly5;

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    iget-object v5, v0, Lz5;->K:Ly5;

    iget-object v5, v5, Ly5;->f:Ly5;

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v0}, Lz5;->x()I

    move-result v14

    if-eqz v1, :cond_14

    if-eqz v2, :cond_14

    if-eqz v4, :cond_14

    if-eqz v5, :cond_14

    iget-object v0, v8, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->w()F

    move-result v15

    iget-boolean v0, v12, Ln6;->j:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v13, Ln6;->j:Z

    if-eqz v0, :cond_e

    iget-object v0, v8, Lx6;->h:Ln6;

    iget-boolean v1, v0, Ln6;->c:Z

    if-eqz v1, :cond_d

    iget-object v1, v8, Lx6;->i:Ln6;

    iget-boolean v1, v1, Ln6;->c:Z

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget v0, v0, Ln6;->g:I

    iget-object v1, v8, Lx6;->h:Ln6;

    iget v1, v1, Ln6;->f:I

    add-int v2, v0, v1

    iget-object v0, v8, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget v0, v0, Ln6;->g:I

    iget-object v1, v8, Lx6;->i:Ln6;

    iget v1, v1, Ln6;->f:I

    sub-int v3, v0, v1

    iget v0, v12, Ln6;->g:I

    iget v1, v12, Ln6;->f:I

    add-int v4, v0, v1

    iget v0, v13, Ln6;->g:I

    iget v1, v13, Ln6;->f:I

    sub-int v5, v0, v1

    sget-object v1, Lt6;->k:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lt6;->q([IIIIIFI)V

    iget-object v0, v8, Lx6;->e:Lo6;

    sget-object v1, Lt6;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    iget-object v0, v8, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->e:Lo6;

    sget-object v1, Lt6;->k:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    :cond_d
    :goto_7
    return-void

    :cond_e
    iget-object v0, v8, Lx6;->h:Ln6;

    iget-boolean v1, v0, Ln6;->j:Z

    if-eqz v1, :cond_11

    iget-object v1, v8, Lx6;->i:Ln6;

    iget-boolean v2, v1, Ln6;->j:Z

    if-eqz v2, :cond_11

    iget-boolean v2, v12, Ln6;->c:Z

    if-eqz v2, :cond_10

    iget-boolean v2, v13, Ln6;->c:Z

    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    iget v2, v0, Ln6;->g:I

    iget v0, v0, Ln6;->f:I

    add-int/2addr v2, v0

    iget v0, v1, Ln6;->g:I

    iget v1, v1, Ln6;->f:I

    sub-int v3, v0, v1

    iget-object v0, v12, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget v0, v0, Ln6;->g:I

    iget v1, v12, Ln6;->f:I

    add-int v4, v0, v1

    iget-object v0, v13, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget v0, v0, Ln6;->g:I

    iget v1, v13, Ln6;->f:I

    sub-int v5, v0, v1

    sget-object v1, Lt6;->k:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lt6;->q([IIIIIFI)V

    iget-object v0, v8, Lx6;->e:Lo6;

    sget-object v1, Lt6;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    iget-object v0, v8, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->e:Lo6;

    sget-object v1, Lt6;->k:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    goto :goto_9

    :cond_10
    :goto_8
    return-void

    :cond_11
    :goto_9
    iget-object v0, v8, Lx6;->h:Ln6;

    iget-boolean v1, v0, Ln6;->c:Z

    if-eqz v1, :cond_13

    iget-object v1, v8, Lx6;->i:Ln6;

    iget-boolean v1, v1, Ln6;->c:Z

    if-eqz v1, :cond_13

    iget-boolean v1, v12, Ln6;->c:Z

    if-eqz v1, :cond_13

    iget-boolean v1, v13, Ln6;->c:Z

    if-nez v1, :cond_12

    goto :goto_a

    :cond_12
    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget v0, v0, Ln6;->g:I

    iget-object v1, v8, Lx6;->h:Ln6;

    iget v1, v1, Ln6;->f:I

    add-int v2, v0, v1

    iget-object v0, v8, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget v0, v0, Ln6;->g:I

    iget-object v1, v8, Lx6;->i:Ln6;

    iget v1, v1, Ln6;->f:I

    sub-int v3, v0, v1

    iget-object v0, v12, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget v0, v0, Ln6;->g:I

    iget v1, v12, Ln6;->f:I

    add-int v4, v0, v1

    iget-object v0, v13, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget v0, v0, Ln6;->g:I

    iget v1, v13, Ln6;->f:I

    sub-int v5, v0, v1

    sget-object v1, Lt6;->k:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lt6;->q([IIIIIFI)V

    iget-object v0, v8, Lx6;->e:Lo6;

    sget-object v1, Lt6;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    iget-object v0, v8, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->e:Lo6;

    sget-object v1, Lt6;->k:[I

    aget v1, v1, v9

    goto/16 :goto_e

    :cond_13
    :goto_a
    return-void

    :cond_14
    if-eqz v1, :cond_1a

    if-eqz v4, :cond_1a

    iget-object v0, v8, Lx6;->h:Ln6;

    iget-boolean v0, v0, Ln6;->c:Z

    if-eqz v0, :cond_19

    iget-object v0, v8, Lx6;->i:Ln6;

    iget-boolean v0, v0, Ln6;->c:Z

    if-nez v0, :cond_15

    goto :goto_c

    :cond_15
    iget-object v0, v8, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->w()F

    move-result v0

    iget-object v1, v8, Lx6;->h:Ln6;

    iget-object v1, v1, Ln6;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln6;

    iget v1, v1, Ln6;->g:I

    iget-object v2, v8, Lx6;->h:Ln6;

    iget v2, v2, Ln6;->f:I

    add-int/2addr v1, v2

    iget-object v2, v8, Lx6;->i:Ln6;

    iget-object v2, v2, Ln6;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln6;

    iget v2, v2, Ln6;->g:I

    iget-object v4, v8, Lx6;->i:Ln6;

    iget v4, v4, Ln6;->f:I

    sub-int/2addr v2, v4

    if-eq v14, v3, :cond_17

    if-eqz v14, :cond_17

    if-eq v14, v9, :cond_16

    goto/16 :goto_11

    :cond_16
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v10}, Lx6;->g(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v8, v2, v9}, Lx6;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_18

    int-to-float v1, v3

    mul-float v1, v1, v0

    goto :goto_b

    :cond_17
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v10}, Lx6;->g(II)I

    move-result v1

    int-to-float v2, v1

    mul-float v2, v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v8, v2, v9}, Lx6;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_18

    int-to-float v1, v3

    div-float/2addr v1, v0

    :goto_b
    add-float/2addr v1, v11

    float-to-int v1, v1

    :cond_18
    iget-object v0, v8, Lx6;->e:Lo6;

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    iget-object v0, v8, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->e:Lo6;

    invoke-virtual {v0, v3}, Lo6;->d(I)V

    goto/16 :goto_11

    :cond_19
    :goto_c
    return-void

    :cond_1a
    if-eqz v2, :cond_21

    if-eqz v5, :cond_21

    iget-boolean v0, v12, Ln6;->c:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, v13, Ln6;->c:Z

    if-nez v0, :cond_1b

    goto :goto_f

    :cond_1b
    iget-object v0, v8, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->w()F

    move-result v0

    iget-object v1, v12, Ln6;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln6;

    iget v1, v1, Ln6;->g:I

    iget v2, v12, Ln6;->f:I

    add-int/2addr v1, v2

    iget-object v2, v13, Ln6;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln6;

    iget v2, v2, Ln6;->g:I

    iget v4, v13, Ln6;->f:I

    sub-int/2addr v2, v4

    if-eq v14, v3, :cond_1d

    if-eqz v14, :cond_1c

    if-eq v14, v9, :cond_1d

    goto :goto_11

    :cond_1c
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v9}, Lx6;->g(II)I

    move-result v1

    int-to-float v2, v1

    mul-float v2, v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v8, v2, v10}, Lx6;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_1e

    int-to-float v1, v3

    div-float/2addr v1, v0

    goto :goto_d

    :cond_1d
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v9}, Lx6;->g(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v8, v2, v10}, Lx6;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_1e

    int-to-float v1, v3

    mul-float v1, v1, v0

    :goto_d
    add-float/2addr v1, v11

    float-to-int v1, v1

    :cond_1e
    iget-object v0, v8, Lx6;->e:Lo6;

    invoke-virtual {v0, v3}, Lo6;->d(I)V

    iget-object v0, v8, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->e:Lo6;

    :goto_e
    invoke-virtual {v0, v1}, Lo6;->d(I)V

    goto :goto_11

    :cond_1f
    :goto_f
    return-void

    :cond_20
    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->e:Lo6;

    iget-boolean v1, v0, Ln6;->j:Z

    if-eqz v1, :cond_21

    iget-object v1, v8, Lx6;->b:Lz5;

    iget v1, v1, Lz5;->s:F

    iget v0, v0, Ln6;->g:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    add-float/2addr v0, v11

    float-to-int v0, v0

    :goto_10
    iget-object v1, v8, Lx6;->e:Lo6;

    invoke-virtual {v1, v0}, Lo6;->d(I)V

    :cond_21
    :goto_11
    iget-object v0, v8, Lx6;->h:Ln6;

    iget-boolean v1, v0, Ln6;->c:Z

    if-eqz v1, :cond_29

    iget-object v1, v8, Lx6;->i:Ln6;

    iget-boolean v2, v1, Ln6;->c:Z

    if-nez v2, :cond_22

    goto/16 :goto_12

    :cond_22
    iget-boolean v0, v0, Ln6;->j:Z

    if-eqz v0, :cond_23

    iget-boolean v0, v1, Ln6;->j:Z

    if-eqz v0, :cond_23

    iget-object v0, v8, Lx6;->e:Lo6;

    iget-boolean v0, v0, Ln6;->j:Z

    if-eqz v0, :cond_23

    return-void

    :cond_23
    iget-object v0, v8, Lx6;->e:Lo6;

    iget-boolean v0, v0, Ln6;->j:Z

    if-nez v0, :cond_24

    iget-object v0, v8, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->c:Lz5$b;

    if-ne v0, v1, :cond_24

    iget-object v0, v8, Lx6;->b:Lz5;

    iget v1, v0, Lz5;->n:I

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lz5;->c0()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v8, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget-object v1, v8, Lx6;->i:Ln6;

    iget-object v1, v1, Ln6;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln6;

    iget v0, v0, Ln6;->g:I

    iget-object v2, v8, Lx6;->h:Ln6;

    iget v3, v2, Ln6;->f:I

    add-int/2addr v0, v3

    iget v1, v1, Ln6;->g:I

    iget-object v3, v8, Lx6;->i:Ln6;

    iget v3, v3, Ln6;->f:I

    add-int/2addr v1, v3

    sub-int v3, v1, v0

    invoke-virtual {v2, v0}, Ln6;->d(I)V

    iget-object v0, v8, Lx6;->i:Ln6;

    invoke-virtual {v0, v1}, Ln6;->d(I)V

    iget-object v0, v8, Lx6;->e:Lo6;

    invoke-virtual {v0, v3}, Lo6;->d(I)V

    return-void

    :cond_24
    iget-object v0, v8, Lx6;->e:Lo6;

    iget-boolean v0, v0, Ln6;->j:Z

    if-nez v0, :cond_26

    iget-object v0, v8, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->c:Lz5$b;

    if-ne v0, v1, :cond_26

    iget v0, v8, Lx6;->a:I

    if-ne v0, v9, :cond_26

    iget-object v0, v8, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, v8, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, v8, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget-object v1, v8, Lx6;->i:Ln6;

    iget-object v1, v1, Ln6;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln6;

    iget v0, v0, Ln6;->g:I

    iget-object v2, v8, Lx6;->h:Ln6;

    iget v2, v2, Ln6;->f:I

    add-int/2addr v0, v2

    iget v1, v1, Ln6;->g:I

    iget-object v2, v8, Lx6;->i:Ln6;

    iget v2, v2, Ln6;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget-object v0, v8, Lx6;->e:Lo6;

    iget v0, v0, Lo6;->m:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v8, Lx6;->b:Lz5;

    iget v2, v1, Lz5;->r:I

    iget v1, v1, Lz5;->q:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v2, :cond_25

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_25
    iget-object v1, v8, Lx6;->e:Lo6;

    invoke-virtual {v1, v0}, Lo6;->d(I)V

    :cond_26
    iget-object v0, v8, Lx6;->e:Lo6;

    iget-boolean v0, v0, Ln6;->j:Z

    if-nez v0, :cond_27

    return-void

    :cond_27
    iget-object v0, v8, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget-object v1, v8, Lx6;->i:Ln6;

    iget-object v1, v1, Ln6;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln6;

    iget v2, v0, Ln6;->g:I

    iget-object v3, v8, Lx6;->h:Ln6;

    iget v3, v3, Ln6;->f:I

    add-int/2addr v2, v3

    iget v3, v1, Ln6;->g:I

    iget-object v4, v8, Lx6;->i:Ln6;

    iget v4, v4, Ln6;->f:I

    add-int/2addr v3, v4

    iget-object v4, v8, Lx6;->b:Lz5;

    invoke-virtual {v4}, Lz5;->z()F

    move-result v4

    if-ne v0, v1, :cond_28

    iget v2, v0, Ln6;->g:I

    iget v3, v1, Ln6;->g:I

    const/high16 v4, 0x3f000000    # 0.5f

    :cond_28
    sub-int/2addr v3, v2

    iget-object v0, v8, Lx6;->e:Lo6;

    iget v0, v0, Ln6;->g:I

    sub-int/2addr v3, v0

    iget-object v0, v8, Lx6;->h:Ln6;

    int-to-float v1, v2

    add-float/2addr v1, v11

    int-to-float v2, v3

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ln6;->d(I)V

    iget-object v0, v8, Lx6;->i:Ln6;

    iget-object v1, v8, Lx6;->h:Ln6;

    iget v1, v1, Ln6;->g:I

    iget-object v2, v8, Lx6;->e:Lo6;

    iget v2, v2, Ln6;->g:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ln6;->d(I)V

    :cond_29
    :goto_12
    return-void
.end method

.method public d()V
    .locals 6

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-boolean v1, v0, Lz5;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-virtual {v0}, Lz5;->U()I

    move-result v0

    invoke-virtual {v1, v0}, Lo6;->d(I)V

    :cond_0
    iget-object v0, p0, Lx6;->e:Lo6;

    iget-boolean v0, v0, Ln6;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->B()Lz5$b;

    move-result-object v0

    iput-object v0, p0, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->c:Lz5$b;

    if-eq v0, v1, :cond_7

    sget-object v1, Lz5$b;->d:Lz5$b;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz5;->B()Lz5$b;

    move-result-object v2

    sget-object v3, Lz5$b;->a:Lz5$b;

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lz5;->B()Lz5$b;

    move-result-object v2

    if-ne v2, v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Lz5;->U()I

    move-result v1

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->H:Ly5;

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->J:Ly5;

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lx6;->h:Ln6;

    iget-object v3, v0, Lz5;->d:Lt6;

    iget-object v3, v3, Lx6;->h:Ln6;

    iget-object v4, p0, Lx6;->b:Lz5;

    iget-object v4, v4, Lz5;->H:Ly5;

    invoke-virtual {v4}, Ly5;->f()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v2, p0, Lx6;->i:Ln6;

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v3, p0, Lx6;->b:Lz5;

    iget-object v3, v3, Lz5;->J:Ly5;

    invoke-virtual {v3}, Ly5;->f()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->e:Lo6;

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->a:Lz5$b;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v1, p0, Lx6;->b:Lz5;

    invoke-virtual {v1}, Lz5;->U()I

    move-result v1

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->d:Lz5$b;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lz5;->B()Lz5$b;

    move-result-object v2

    sget-object v3, Lz5$b;->a:Lz5$b;

    if-eq v2, v3, :cond_6

    :cond_5
    invoke-virtual {v0}, Lz5;->B()Lz5$b;

    move-result-object v2

    if-ne v2, v1, :cond_7

    :cond_6
    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, v0, Lz5;->d:Lt6;

    iget-object v2, v2, Lx6;->h:Ln6;

    iget-object v3, p0, Lx6;->b:Lz5;

    iget-object v3, v3, Lz5;->H:Ly5;

    invoke-virtual {v3}, Ly5;->f()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->J:Ly5;

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    return-void

    :cond_7
    :goto_0
    iget-object v0, p0, Lx6;->e:Lo6;

    iget-boolean v1, v0, Ln6;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-boolean v4, v1, Lz5;->a:Z

    if-eqz v4, :cond_e

    iget-object v0, v1, Lz5;->P:[Ly5;

    aget-object v4, v0, v2

    iget-object v4, v4, Ly5;->f:Ly5;

    if-eqz v4, :cond_b

    aget-object v4, v0, v3

    iget-object v4, v4, Ly5;->f:Ly5;

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lz5;->c0()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ly5;->f()I

    move-result v1

    iput v1, v0, Ln6;->f:I

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v3

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->P:[Ly5;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v4, p0, Lx6;->b:Lz5;

    iget-object v4, v4, Lz5;->P:[Ly5;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    :cond_9
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->P:[Ly5;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->P:[Ly5;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    :cond_a
    iget-object v0, p0, Lx6;->h:Ln6;

    iput-boolean v3, v0, Ln6;->b:Z

    iget-object v0, p0, Lx6;->i:Ln6;

    iput-boolean v3, v0, Ln6;->b:Z

    goto/16 :goto_9

    :cond_b
    aget-object v4, v0, v2

    iget-object v4, v4, Ly5;->f:Ly5;

    if-eqz v4, :cond_c

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v3, p0, Lx6;->b:Lz5;

    iget-object v3, v3, Lz5;->P:[Ly5;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    goto :goto_1

    :cond_c
    aget-object v2, v0, v3

    iget-object v2, v2, Ly5;->f:Ly5;

    if-eqz v2, :cond_d

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->P:[Ly5;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    iget v2, v2, Ln6;->g:I

    neg-int v2, v2

    goto :goto_2

    :cond_d
    instance-of v0, v1, Ld6;

    if-nez v0, :cond_1a

    invoke-virtual {v1}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lx6;->b:Lz5;

    sget-object v1, Ly5$b;->h:Ly5$b;

    invoke-virtual {v0, v1}, Lz5;->p(Ly5$b;)Ly5;

    move-result-object v0

    iget-object v0, v0, Ly5;->f:Ly5;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    invoke-virtual {v2}, Lz5;->V()I

    move-result v2

    :goto_1
    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    iget v2, v2, Ln6;->g:I

    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Ln6;Ln6;I)V

    goto/16 :goto_9

    :cond_e
    iget-object v1, p0, Lx6;->d:Lz5$b;

    sget-object v4, Lz5$b;->c:Lz5$b;

    if-ne v1, v4, :cond_15

    iget-object v1, p0, Lx6;->b:Lz5;

    iget v4, v1, Lz5;->n:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_13

    const/4 v5, 0x3

    if-eq v4, v5, :cond_f

    goto/16 :goto_6

    :cond_f
    iget v4, v1, Lz5;->o:I

    if-ne v4, v5, :cond_12

    iget-object v4, p0, Lx6;->h:Ln6;

    iput-object p0, v4, Ln6;->a:Ll6;

    iget-object v4, p0, Lx6;->i:Ln6;

    iput-object p0, v4, Ln6;->a:Ll6;

    iget-object v4, v1, Lz5;->e:Lv6;

    iget-object v5, v4, Lx6;->h:Ln6;

    iput-object p0, v5, Ln6;->a:Ll6;

    iget-object v4, v4, Lx6;->i:Ln6;

    iput-object p0, v4, Ln6;->a:Ll6;

    iput-object p0, v0, Ln6;->a:Ll6;

    invoke-virtual {v1}, Lz5;->e0()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->e:Lv6;

    iget-object v1, v1, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v1, v0, Lx6;->e:Lo6;

    iput-object p0, v1, Ln6;->a:Ll6;

    iget-object v1, p0, Lx6;->e:Lo6;

    iget-object v1, v1, Ln6;->l:Ljava/util/List;

    iget-object v0, v0, Lx6;->h:Ln6;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->e:Lv6;

    iget-object v1, v1, Lx6;->i:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->c0()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->e:Lv6;

    iget-object v1, v1, Lx6;->e:Lo6;

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->e:Lo6;

    goto :goto_3

    :cond_12
    iget-object v1, v1, Lz5;->e:Lv6;

    iget-object v1, v1, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iput-boolean v3, v0, Ln6;->b:Z

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->h:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->i:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->i:Ln6;

    :goto_3
    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    :goto_4
    iget-object v1, p0, Lx6;->e:Lo6;

    goto :goto_5

    :cond_13
    invoke-virtual {v1}, Lz5;->L()Lz5;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_6

    :cond_14
    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->e:Lo6;

    iget-object v1, p0, Lx6;->e:Lo6;

    iget-object v1, v1, Ln6;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iput-boolean v3, v0, Ln6;->b:Z

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->h:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->i:Ln6;

    :goto_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_6
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v1, v0, Lz5;->P:[Ly5;

    aget-object v4, v1, v2

    iget-object v4, v4, Ly5;->f:Ly5;

    if-eqz v4, :cond_17

    aget-object v4, v1, v3

    iget-object v4, v4, Ly5;->f:Ly5;

    if-eqz v4, :cond_17

    invoke-virtual {v0}, Lz5;->c0()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ly5;->f()I

    move-result v1

    iput v1, v0, Ln6;->f:I

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v3

    :goto_7
    invoke-virtual {v1}, Ly5;->f()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Ln6;->f:I

    goto/16 :goto_9

    :cond_16
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->P:[Ly5;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Lx6;->h(Ly5;)Ln6;

    move-result-object v1

    invoke-virtual {v0, p0}, Ln6;->b(Ll6;)V

    invoke-virtual {v1, p0}, Ln6;->b(Ll6;)V

    sget-object v0, Lx6$b;->d:Lx6$b;

    iput-object v0, p0, Lx6;->j:Lx6$b;

    goto :goto_9

    :cond_17
    aget-object v4, v1, v2

    iget-object v4, v4, Ly5;->f:Ly5;

    if-eqz v4, :cond_18

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v4, p0, Lx6;->b:Lz5;

    iget-object v4, v4, Lz5;->P:[Ly5;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    goto :goto_8

    :cond_18
    aget-object v2, v1, v3

    iget-object v2, v2, Ly5;->f:Ly5;

    if-eqz v2, :cond_19

    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->P:[Ly5;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->i:Ln6;

    const/4 v2, -0x1

    iget-object v3, p0, Lx6;->e:Lo6;

    invoke-virtual {p0, v0, v1, v2, v3}, Lx6;->c(Ln6;Ln6;ILo6;)V

    goto :goto_9

    :cond_19
    instance-of v1, v0, Ld6;

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    invoke-virtual {v2}, Lz5;->V()I

    move-result v2

    :goto_8
    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    invoke-virtual {p0, v0, v1, v3, v2}, Lx6;->c(Ln6;Ln6;ILo6;)V

    :cond_1a
    :goto_9
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-boolean v1, v0, Ln6;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lx6;->b:Lz5;

    iget v0, v0, Ln6;->g:I

    invoke-virtual {v1, v0}, Lz5;->Z0(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lx6;->c:Lu6;

    iget-object v0, p0, Lx6;->h:Ln6;

    invoke-virtual {v0}, Ln6;->c()V

    iget-object v0, p0, Lx6;->i:Ln6;

    invoke-virtual {v0}, Ln6;->c()V

    iget-object v0, p0, Lx6;->e:Lo6;

    invoke-virtual {v0}, Ln6;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx6;->g:Z

    return-void
.end method

.method public m()Z
    .locals 3

    iget-object v0, p0, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->c:Lz5$b;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lx6;->b:Lz5;

    iget v0, v0, Lz5;->n:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final q([IIIIIFI)V
    .locals 2

    sub-int/2addr p3, p2

    sub-int/2addr p5, p4

    const/4 p2, -0x1

    const/4 p4, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    if-eq p7, p2, :cond_2

    if-eqz p7, :cond_1

    if-eq p7, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p3

    mul-float p2, p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    aput p3, p1, p4

    aput p2, p1, v1

    goto :goto_0

    :cond_1
    int-to-float p2, p5

    mul-float p2, p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    aput p2, p1, p4

    aput p5, p1, v1

    goto :goto_0

    :cond_2
    int-to-float p2, p5

    mul-float p2, p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p7, p3

    div-float/2addr p7, p6

    add-float/2addr p7, v0

    float-to-int p6, p7

    if-gt p2, p3, :cond_3

    if-gt p5, p5, :cond_3

    aput p2, p1, p4

    aput p5, p1, v1

    goto :goto_0

    :cond_3
    if-gt p3, p3, :cond_4

    if-gt p6, p5, :cond_4

    aput p3, p1, p4

    aput p6, p1, v1

    :cond_4
    :goto_0
    return-void
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx6;->g:Z

    iget-object v1, p0, Lx6;->h:Ln6;

    invoke-virtual {v1}, Ln6;->c()V

    iget-object v1, p0, Lx6;->h:Ln6;

    iput-boolean v0, v1, Ln6;->j:Z

    iget-object v1, p0, Lx6;->i:Ln6;

    invoke-virtual {v1}, Ln6;->c()V

    iget-object v1, p0, Lx6;->i:Ln6;

    iput-boolean v0, v1, Ln6;->j:Z

    iget-object v1, p0, Lx6;->e:Lo6;

    iput-boolean v0, v1, Ln6;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HorizontalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx6;->b:Lz5;

    invoke-virtual {v1}, Lz5;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

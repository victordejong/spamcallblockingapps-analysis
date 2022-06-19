.class public final Landroidx/constraintlayout/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/d;Ljava/util/ArrayList;I)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/a/a/f;",
            "Landroidx/constraintlayout/a/d;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    if-nez p3, :cond_0

    .line 52
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->aO:I

    .line 53
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->aR:[Landroidx/constraintlayout/a/a/c;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    .line 56
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->aP:I

    .line 57
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->aQ:[Landroidx/constraintlayout/a/a/c;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_58

    .line 61
    aget-object v1, v15, v9

    .line 1234
    iget-boolean v2, v1, Landroidx/constraintlayout/a/a/c;->t:Z

    if-nez v2, :cond_1

    .line 1235
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/c;->a()V

    :cond_1
    const/4 v2, 0x1

    .line 1237
    iput-boolean v2, v1, Landroidx/constraintlayout/a/a/c;->t:Z

    if-eqz v11, :cond_3

    if-eqz v11, :cond_2

    .line 65
    iget-object v3, v1, Landroidx/constraintlayout/a/a/c;->a:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v12, v9

    move/from16 v27, v14

    move-object/from16 v25, v15

    goto/16 :goto_3b

    .line 2083
    :cond_3
    :goto_2
    iget-object v8, v1, Landroidx/constraintlayout/a/a/c;->a:Landroidx/constraintlayout/a/a/e;

    .line 2084
    iget-object v7, v1, Landroidx/constraintlayout/a/a/c;->c:Landroidx/constraintlayout/a/a/e;

    .line 2085
    iget-object v6, v1, Landroidx/constraintlayout/a/a/c;->b:Landroidx/constraintlayout/a/a/e;

    .line 2086
    iget-object v5, v1, Landroidx/constraintlayout/a/a/c;->d:Landroidx/constraintlayout/a/a/e;

    .line 2087
    iget-object v3, v1, Landroidx/constraintlayout/a/a/c;->e:Landroidx/constraintlayout/a/a/e;

    .line 2093
    iget v4, v1, Landroidx/constraintlayout/a/a/c;->k:F

    .line 2097
    iget-object v13, v0, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v13, v13, p3

    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v13, v12, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    if-nez p3, :cond_8

    .line 2103
    iget v13, v3, Landroidx/constraintlayout/a/a/e;->ax:I

    move/from16 v19, v4

    if-nez v13, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    .line 2104
    :goto_4
    iget v4, v3, Landroidx/constraintlayout/a/a/e;->ax:I

    if-ne v4, v2, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 2105
    :goto_5
    iget v2, v3, Landroidx/constraintlayout/a/a/e;->ax:I

    move/from16 v21, v4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    move/from16 v18, v13

    move/from16 v13, v21

    const/4 v4, 0x0

    move/from16 v21, v9

    move-object v9, v8

    goto :goto_a

    :cond_8
    move/from16 v19, v4

    .line 2107
    iget v2, v3, Landroidx/constraintlayout/a/a/e;->ay:I

    if-nez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 2108
    :goto_7
    iget v4, v3, Landroidx/constraintlayout/a/a/e;->ay:I

    const/4 v13, 0x1

    if-ne v4, v13, :cond_a

    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    .line 2109
    :goto_8
    iget v13, v3, Landroidx/constraintlayout/a/a/e;->ay:I

    move/from16 v21, v9

    const/4 v9, 0x2

    if-ne v13, v9, :cond_b

    const/4 v13, 0x1

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    :goto_9
    move/from16 v18, v2

    move-object v9, v8

    move v2, v13

    move v13, v4

    const/4 v4, 0x0

    :goto_a
    const/16 v24, 0x0

    if-nez v4, :cond_18

    .line 2126
    iget-object v11, v9, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v11, v11, v16

    if-eqz v2, :cond_c

    const/16 v23, 0x1

    goto :goto_b

    :cond_c
    const/16 v23, 0x4

    .line 2132
    :goto_b
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v25

    move/from16 v26, v4

    .line 2133
    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v4, v4, p3

    move/from16 v27, v14

    sget-object v14, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, v14, :cond_d

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->q:[I

    aget v4, v4, p3

    if-nez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_c

    :cond_d
    const/4 v4, 0x0

    .line 2136
    :goto_c
    iget-object v14, v11, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v14, :cond_e

    if-eq v9, v8, :cond_e

    .line 2137
    iget-object v14, v11, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v14

    add-int v25, v25, v14

    :cond_e
    move/from16 v14, v25

    if-eqz v2, :cond_f

    if-eq v9, v8, :cond_f

    if-eq v9, v6, :cond_f

    move-object/from16 v25, v15

    const/16 v23, 0x8

    goto :goto_d

    :cond_f
    move-object/from16 v25, v15

    .line 2144
    :goto_d
    iget-object v15, v11, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v15, :cond_12

    if-ne v9, v6, :cond_10

    .line 2146
    iget-object v15, v11, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    move/from16 v28, v13

    iget-object v13, v11, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v13, v13, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v29, v3

    const/4 v3, 0x6

    invoke-virtual {v10, v15, v13, v14, v3}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_e

    :cond_10
    move-object/from16 v29, v3

    move/from16 v28, v13

    .line 2149
    iget-object v3, v11, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v13, v11, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v13, v13, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    const/16 v15, 0x8

    invoke-virtual {v10, v3, v13, v14, v15}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :goto_e
    if-eqz v4, :cond_11

    if-nez v2, :cond_11

    const/4 v3, 0x5

    goto :goto_f

    :cond_11
    move/from16 v3, v23

    .line 2155
    :goto_f
    iget-object v4, v11, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v10, v4, v11, v14, v3}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    goto :goto_10

    :cond_12
    move-object/from16 v29, v3

    move/from16 v28, v13

    :goto_10
    if-eqz v12, :cond_14

    .line 2714
    iget v3, v9, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_13

    .line 2160
    iget-object v3, v9, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v3, v3, p3

    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v3, v4, :cond_13

    .line 2162
    iget-object v3, v9, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v4, v9, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v4, v4, v16

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    const/4 v11, 0x5

    const/4 v13, 0x0

    invoke-virtual {v10, v3, v4, v13, v11}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_11

    :cond_13
    const/4 v13, 0x0

    .line 2166
    :goto_11
    iget-object v3, v9, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v4, v0, Landroidx/constraintlayout/a/a/f;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v4, v4, v16

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    const/16 v11, 0x8

    invoke-virtual {v10, v3, v4, v13, v11}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 2172
    :cond_14
    iget-object v3, v9, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v3, :cond_16

    .line 2174
    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    .line 2175
    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v4, v4, v16

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v4, :cond_16

    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v4, v4, v16

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    if-eq v4, v9, :cond_15

    goto :goto_12

    :cond_15
    move-object/from16 v24, v3

    :cond_16
    :goto_12
    if-eqz v24, :cond_17

    move-object/from16 v9, v24

    move-object/from16 v15, v25

    move/from16 v4, v26

    move/from16 v14, v27

    move/from16 v13, v28

    move-object/from16 v3, v29

    goto/16 :goto_a

    :cond_17
    move-object/from16 v15, v25

    move/from16 v14, v27

    move/from16 v13, v28

    move-object/from16 v3, v29

    const/4 v4, 0x1

    goto/16 :goto_a

    :cond_18
    move-object/from16 v29, v3

    move/from16 v28, v13

    move/from16 v27, v14

    move-object/from16 v25, v15

    if-eqz v5, :cond_1c

    .line 2189
    iget-object v3, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v3, :cond_1c

    .line 2190
    iget-object v3, v5, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v4

    .line 2191
    iget-object v9, v5, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v9, v9, p3

    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v9, v11, :cond_19

    iget-object v9, v5, Landroidx/constraintlayout/a/a/e;->q:[I

    aget v9, v9, p3

    if-nez v9, :cond_19

    const/4 v9, 0x1

    goto :goto_13

    :cond_19
    const/4 v9, 0x0

    :goto_13
    if-eqz v9, :cond_1a

    if-nez v2, :cond_1a

    .line 2193
    iget-object v9, v3, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    if-ne v9, v0, :cond_1a

    .line 2194
    iget-object v9, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v11, v3, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v13

    neg-int v13, v13

    const/4 v14, 0x5

    invoke-virtual {v10, v9, v11, v13, v14}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    goto :goto_14

    :cond_1a
    if-eqz v2, :cond_1b

    .line 2196
    iget-object v9, v3, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    if-ne v9, v0, :cond_1b

    .line 2197
    iget-object v9, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v11, v3, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v13

    neg-int v13, v13

    const/4 v14, 0x4

    invoke-virtual {v10, v9, v11, v13, v14}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 2200
    :cond_1b
    :goto_14
    iget-object v9, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v11, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v4, v11, v4

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    .line 2201
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    neg-int v3, v3

    const/4 v11, 0x6

    .line 2200
    invoke-virtual {v10, v9, v4, v3, v11}, Landroidx/constraintlayout/a/d;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_1c
    if-eqz v12, :cond_1d

    .line 2207
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v9, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v9, v9, v4

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v11, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v4, v11, v4

    .line 2209
    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    const/16 v11, 0x8

    .line 2207
    invoke-virtual {v10, v3, v9, v4, v11}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 2213
    :cond_1d
    iget-object v3, v1, Landroidx/constraintlayout/a/a/c;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_27

    .line 2215
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x1

    if-le v4, v9, :cond_27

    .line 2220
    iget-boolean v11, v1, Landroidx/constraintlayout/a/a/c;->p:Z

    if-eqz v11, :cond_1e

    iget-boolean v11, v1, Landroidx/constraintlayout/a/a/c;->r:Z

    if-nez v11, :cond_1e

    .line 2221
    iget v11, v1, Landroidx/constraintlayout/a/a/c;->j:I

    int-to-float v11, v11

    move/from16 v19, v11

    :cond_1e
    const/4 v11, 0x0

    move-object/from16 v12, v24

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_15
    if-ge v13, v4, :cond_27

    .line 2225
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/a/a/e;

    .line 2226
    iget-object v9, v15, Landroidx/constraintlayout/a/a/e;->aB:[F

    aget v9, v9, p3

    cmpg-float v22, v9, v11

    if-gez v22, :cond_20

    .line 2229
    iget-boolean v9, v1, Landroidx/constraintlayout/a/a/c;->r:Z

    if-eqz v9, :cond_1f

    .line 2230
    iget-object v0, v15, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v9, v16, 0x1

    aget-object v0, v0, v9

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v9, v15, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v9, v9, v16

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    const/4 v11, 0x0

    const/4 v15, 0x4

    invoke-virtual {v10, v0, v9, v11, v15}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    goto :goto_17

    :cond_1f
    const/4 v11, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_20
    const/4 v11, 0x4

    :goto_16
    const/16 v22, 0x0

    cmpl-float v23, v9, v22

    if-nez v23, :cond_21

    .line 2237
    iget-object v0, v15, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v9, v16, 0x1

    aget-object v0, v0, v9

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v9, v15, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v9, v9, v16

    iget-object v9, v9, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    const/4 v11, 0x0

    const/16 v15, 0x8

    invoke-virtual {v10, v0, v9, v11, v15}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    :goto_17
    move-object/from16 v22, v1

    move-object/from16 v31, v3

    move/from16 v30, v4

    goto/16 :goto_1b

    :cond_21
    const/4 v11, 0x0

    if-eqz v12, :cond_26

    .line 2243
    iget-object v11, v12, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v11, v11, v16

    iget-object v11, v11, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    .line 2244
    iget-object v12, v12, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v30, v16, 0x1

    aget-object v12, v12, v30

    iget-object v12, v12, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    .line 2245
    iget-object v0, v15, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v31, v3

    .line 2246
    iget-object v3, v15, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v30

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    move/from16 v30, v4

    .line 2247
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v4

    move-object/from16 v32, v15

    const/4 v15, 0x0

    .line 3240
    iput v15, v4, Landroidx/constraintlayout/a/b;->b:F

    move-object/from16 v22, v1

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v33, v19, v15

    if-eqz v33, :cond_25

    cmpl-float v33, v14, v9

    if-nez v33, :cond_22

    goto :goto_18

    :cond_22
    cmpl-float v33, v14, v15

    if-nez v33, :cond_23

    .line 3250
    iget-object v0, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v11, v3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3251
    iget-object v0, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, v12, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_19

    :cond_23
    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v23, :cond_24

    .line 3253
    iget-object v11, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v11, v0, v15}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3254
    iget-object v0, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, v3, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_19

    :cond_24
    div-float v14, v14, v19

    div-float v23, v9, v19

    div-float v14, v14, v23

    .line 3262
    iget-object v1, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v1, v11, v15}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3263
    iget-object v1, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 v11, -0x40800000    # -1.0f

    invoke-interface {v1, v12, v11}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3264
    iget-object v1, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v1, v3, v14}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3265
    iget-object v1, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    neg-float v3, v14

    invoke-interface {v1, v0, v3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_19

    :cond_25
    :goto_18
    const/high16 v15, 0x3f800000    # 1.0f

    .line 3244
    iget-object v14, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v14, v11, v15}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3245
    iget-object v11, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v11, v12, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3246
    iget-object v11, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v11, v3, v15}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3247
    iget-object v3, v4, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v3, v0, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 2250
    :goto_19
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    goto :goto_1a

    :cond_26
    move-object/from16 v22, v1

    move-object/from16 v31, v3

    move/from16 v30, v4

    move-object/from16 v32, v15

    :goto_1a
    move v14, v9

    move-object/from16 v12, v32

    :goto_1b
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v4, v30

    move-object/from16 v3, v31

    goto/16 :goto_15

    :cond_27
    move-object/from16 v22, v1

    if-eqz v6, :cond_2d

    if-eq v6, v5, :cond_28

    if-eqz v2, :cond_2d

    .line 2272
    :cond_28
    iget-object v0, v8, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v16

    .line 2273
    iget-object v1, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    .line 2274
    iget-object v3, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v3, :cond_29

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    move-object v3, v0

    goto :goto_1c

    :cond_29
    move-object/from16 v3, v24

    .line 2275
    :goto_1c
    iget-object v0, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v0, :cond_2a

    iget-object v0, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    goto :goto_1d

    :cond_2a
    move-object/from16 v0, v24

    .line 2276
    :goto_1d
    iget-object v1, v6, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v16

    .line 2277
    iget-object v4, v5, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v2, v4, v2

    if-eqz v3, :cond_2c

    if-eqz v0, :cond_2c

    if-nez p3, :cond_2b

    move-object/from16 v4, v29

    .line 2281
    iget v4, v4, Landroidx/constraintlayout/a/a/e;->ah:F

    goto :goto_1e

    :cond_2b
    move-object/from16 v4, v29

    .line 2283
    iget v4, v4, Landroidx/constraintlayout/a/a/e;->ai:F

    :goto_1e
    move v8, v4

    .line 2285
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    .line 2286
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v9

    .line 2287
    iget-object v11, v1, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v12, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    const/4 v13, 0x7

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v11, v5

    move v5, v8

    move-object v14, v6

    move-object v6, v0

    move-object v0, v7

    move-object v7, v12

    move v8, v9

    move/from16 v12, v21

    const/4 v15, 0x2

    move v9, v13

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto/16 :goto_36

    :cond_2c
    move-object v11, v5

    move-object v14, v6

    move-object v0, v7

    move/from16 v12, v21

    const/4 v15, 0x2

    goto/16 :goto_36

    :cond_2d
    move-object v11, v5

    move-object v14, v6

    move-object v0, v7

    move/from16 v12, v21

    const/4 v15, 0x2

    if-eqz v18, :cond_3f

    if-eqz v14, :cond_3f

    move-object/from16 v1, v22

    .line 2294
    iget v2, v1, Landroidx/constraintlayout/a/a/c;->j:I

    if-lez v2, :cond_2e

    iget v2, v1, Landroidx/constraintlayout/a/a/c;->i:I

    iget v1, v1, Landroidx/constraintlayout/a/a/c;->j:I

    if-ne v2, v1, :cond_2e

    const/16 v20, 0x1

    goto :goto_1f

    :cond_2e
    const/16 v20, 0x0

    :goto_1f
    move-object v9, v14

    move-object v13, v9

    :goto_20
    if-eqz v13, :cond_4f

    .line 2296
    iget-object v1, v13, Landroidx/constraintlayout/a/a/e;->aD:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, p3

    move-object v7, v1

    :goto_21
    if-eqz v7, :cond_2f

    .line 3714
    iget v1, v7, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2f

    .line 2298
    iget-object v1, v7, Landroidx/constraintlayout/a/a/e;->aD:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v1, p3

    goto :goto_21

    :cond_2f
    if-nez v7, :cond_31

    if-ne v13, v11, :cond_30

    goto :goto_23

    :cond_30
    move-object v15, v7

    move-object/from16 v34, v8

    :goto_22
    move-object/from16 v17, v9

    goto/16 :goto_2a

    .line 2301
    :cond_31
    :goto_23
    iget-object v1, v13, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v16

    .line 2302
    iget-object v2, v1, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    .line 2303
    iget-object v3, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v3, :cond_32

    iget-object v3, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    goto :goto_24

    :cond_32
    move-object/from16 v3, v24

    :goto_24
    if-eq v9, v13, :cond_33

    .line 2305
    iget-object v3, v9, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    goto :goto_25

    :cond_33
    if-ne v13, v14, :cond_35

    if-ne v9, v13, :cond_35

    .line 2307
    iget-object v3, v8, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v3, :cond_34

    iget-object v3, v8, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    goto :goto_25

    :cond_34
    move-object/from16 v3, v24

    .line 2313
    :cond_35
    :goto_25
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    .line 2314
    iget-object v4, v13, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    if-eqz v7, :cond_36

    .line 2317
    iget-object v6, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v6, v6, v16

    .line 2318
    iget-object v15, v6, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    :goto_26
    move-object/from16 v17, v7

    goto :goto_27

    .line 2321
    :cond_36
    iget-object v6, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v6, v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v6, :cond_37

    .line 2323
    iget-object v15, v6, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    goto :goto_26

    :cond_37
    move-object/from16 v17, v7

    move-object/from16 v15, v24

    .line 2325
    :goto_27
    iget-object v7, v13, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v7, v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    if-eqz v6, :cond_38

    .line 2329
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v6

    add-int/2addr v4, v6

    :cond_38
    if-eqz v9, :cond_39

    .line 2332
    iget-object v6, v9, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v6

    add-int/2addr v1, v6

    :cond_39
    if-eqz v2, :cond_3d

    if-eqz v3, :cond_3d

    if-eqz v15, :cond_3d

    if-eqz v7, :cond_3d

    if-ne v13, v14, :cond_3a

    .line 2337
    iget-object v1, v14, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    :cond_3a
    move v6, v1

    if-ne v13, v11, :cond_3b

    .line 2341
    iget-object v1, v11, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    move/from16 v19, v1

    goto :goto_28

    :cond_3b
    move/from16 v19, v4

    :goto_28
    if-eqz v20, :cond_3c

    const/16 v21, 0x8

    goto :goto_29

    :cond_3c
    const/16 v21, 0x5

    :goto_29
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move v4, v6

    move-object v6, v15

    move-object/from16 v15, v17

    move-object/from16 v34, v8

    move/from16 v8, v19

    move-object/from16 v17, v9

    move/from16 v9, v21

    .line 2347
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_2a

    :cond_3d
    move-object/from16 v34, v8

    move-object/from16 v15, v17

    goto/16 :goto_22

    .line 4714
    :goto_2a
    iget v1, v13, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3e

    move-object v9, v13

    goto :goto_2b

    :cond_3e
    move-object/from16 v9, v17

    :goto_2b
    move-object v13, v15

    move-object/from16 v8, v34

    const/4 v15, 0x2

    goto/16 :goto_20

    :cond_3f
    move-object/from16 v34, v8

    move-object/from16 v1, v22

    if-eqz v28, :cond_4f

    if-eqz v14, :cond_4f

    .line 2361
    iget v2, v1, Landroidx/constraintlayout/a/a/c;->j:I

    if-lez v2, :cond_40

    iget v2, v1, Landroidx/constraintlayout/a/a/c;->i:I

    iget v1, v1, Landroidx/constraintlayout/a/a/c;->j:I

    if-ne v2, v1, :cond_40

    const/16 v20, 0x1

    goto :goto_2c

    :cond_40
    const/16 v20, 0x0

    :goto_2c
    move-object v13, v14

    move-object v15, v13

    :goto_2d
    if-eqz v13, :cond_4c

    .line 2363
    iget-object v1, v13, Landroidx/constraintlayout/a/a/e;->aD:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, p3

    :goto_2e
    if-eqz v1, :cond_41

    .line 5714
    iget v2, v1, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_41

    .line 2365
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->aD:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, p3

    goto :goto_2e

    :cond_41
    if-eq v13, v14, :cond_4a

    if-eq v13, v11, :cond_4a

    if-eqz v1, :cond_4a

    if-ne v1, v11, :cond_42

    move-object/from16 v9, v24

    goto :goto_2f

    :cond_42
    move-object v9, v1

    .line 2371
    :goto_2f
    iget-object v1, v13, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v16

    .line 2372
    iget-object v2, v1, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    .line 2374
    iget-object v3, v15, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    .line 2378
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    .line 2379
    iget-object v5, v13, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v5

    if-eqz v9, :cond_44

    .line 2382
    iget-object v6, v9, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v6, v6, v16

    .line 2383
    iget-object v7, v6, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    .line 2384
    iget-object v8, v6, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v8, :cond_43

    iget-object v8, v6, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v8, v8, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    goto :goto_31

    :cond_43
    move-object/from16 v8, v24

    goto :goto_31

    .line 2386
    :cond_44
    iget-object v6, v11, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v6, v6, v16

    if-eqz v6, :cond_45

    .line 2388
    iget-object v7, v6, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    goto :goto_30

    :cond_45
    move-object/from16 v7, v24

    .line 2390
    :goto_30
    iget-object v8, v13, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v8, v8, v4

    iget-object v8, v8, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    :goto_31
    if-eqz v6, :cond_46

    .line 2394
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v6

    add-int/2addr v5, v6

    :cond_46
    move/from16 v19, v5

    if-eqz v15, :cond_47

    .line 2397
    iget-object v5, v15, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    add-int/2addr v1, v4

    :cond_47
    move v4, v1

    if-eqz v20, :cond_48

    const/16 v21, 0x8

    goto :goto_32

    :cond_48
    const/16 v21, 0x4

    :goto_32
    if-eqz v2, :cond_49

    if-eqz v3, :cond_49

    if-eqz v7, :cond_49

    if-eqz v8, :cond_49

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v6, v7

    move-object v7, v8

    move/from16 v8, v19

    move-object/from16 v19, v9

    move/from16 v9, v21

    .line 2404
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_33

    :cond_49
    move-object/from16 v19, v9

    :goto_33
    move-object/from16 v6, v19

    goto :goto_34

    :cond_4a
    move-object v6, v1

    .line 6714
    :goto_34
    iget v1, v13, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4b

    move-object v15, v13

    :cond_4b
    move-object v13, v6

    goto/16 :goto_2d

    .line 2414
    :cond_4c
    iget-object v1, v14, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v16

    move-object/from16 v2, v34

    .line 2415
    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v2, v2, v16

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    .line 2416
    iget-object v3, v11, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v4, v16, 0x1

    aget-object v13, v3, v4

    .line 2417
    iget-object v3, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v4

    iget-object v15, v3, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v2, :cond_4e

    if-eq v14, v11, :cond_4d

    .line 2421
    iget-object v3, v1, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v10, v3, v2, v1, v4}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    goto :goto_35

    :cond_4d
    if-eqz v15, :cond_4e

    .line 2423
    iget-object v3, v1, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v4, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, v13, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v8, v15, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    .line 2424
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v9

    const/16 v17, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move/from16 v9, v17

    .line 2423
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_4e
    :goto_35
    if-eqz v15, :cond_4f

    if-eq v14, v11, :cond_4f

    .line 2428
    iget-object v1, v13, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    iget-object v2, v15, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x5

    invoke-virtual {v10, v1, v2, v3, v4}, Landroidx/constraintlayout/a/d;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    :cond_4f
    :goto_36
    if-nez v18, :cond_50

    if-eqz v28, :cond_57

    :cond_50
    if-eqz v14, :cond_57

    if-eq v14, v11, :cond_57

    .line 2435
    iget-object v1, v14, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v16

    .line 2436
    iget-object v2, v11, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    .line 2437
    iget-object v4, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v4, :cond_51

    iget-object v4, v1, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    goto :goto_37

    :cond_51
    move-object/from16 v4, v24

    .line 2438
    :goto_37
    iget-object v5, v2, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v5, :cond_52

    iget-object v5, v2, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    goto :goto_38

    :cond_52
    move-object/from16 v5, v24

    :goto_38
    if-eq v0, v11, :cond_54

    .line 2440
    iget-object v5, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v5, v5, v3

    .line 2441
    iget-object v6, v5, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v6, :cond_53

    iget-object v5, v5, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v24, v5

    :cond_53
    move-object/from16 v6, v24

    goto :goto_39

    :cond_54
    move-object v6, v5

    :goto_39
    if-ne v14, v11, :cond_55

    .line 2444
    iget-object v1, v14, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v16

    .line 2445
    iget-object v2, v14, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v2, v2, v3

    :cond_55
    if-eqz v4, :cond_57

    if-eqz v6, :cond_57

    .line 2449
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v5

    if-nez v11, :cond_56

    move-object v7, v0

    goto :goto_3a

    :cond_56
    move-object v7, v11

    .line 2454
    :goto_3a
    iget-object v0, v7, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v8

    .line 2455
    iget-object v0, v1, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v9, v2, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    const/4 v11, 0x5

    move-object/from16 v1, p1

    move-object v2, v0

    move-object v3, v4

    move v4, v5

    move v5, v7

    move-object v7, v9

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_57
    :goto_3b
    add-int/lit8 v9, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object/from16 v15, v25

    move/from16 v14, v27

    goto/16 :goto_1

    :cond_58
    return-void
.end method

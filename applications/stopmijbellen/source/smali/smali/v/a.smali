.class public Lv/a;
.super Lv/h;
.source "SourceFile"


# instance fields
.field public t0:I

.field public u0:Z

.field public v0:I

.field public w0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv/a;->t0:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lv/a;->u0:Z

    .line 4
    iput v0, p0, Lv/a;->v0:I

    .line 5
    iput-boolean v0, p0, Lv/a;->w0:Z

    return-void
.end method


# virtual methods
.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv/a;->w0:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv/a;->w0:Z

    return v0
.end method

.method public W()Z
    .locals 12

    .line 1
    sget-object v0, Lv/c$a;->d:Lv/c$a;

    sget-object v1, Lv/c$a;->b:Lv/c$a;

    sget-object v2, Lv/c$a;->c:Lv/c$a;

    sget-object v3, Lv/c$a;->a:Lv/c$a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2
    :goto_0
    iget v8, p0, Lv/h;->s0:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-ge v6, v8, :cond_5

    .line 3
    iget-object v8, p0, Lv/h;->r0:[Lv/d;

    aget-object v8, v8, v6

    .line 4
    iget-boolean v11, p0, Lv/a;->u0:Z

    if-nez v11, :cond_0

    invoke-virtual {v8}, Lv/d;->e()Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget v11, p0, Lv/a;->t0:I

    if-eqz v11, :cond_1

    if-ne v11, v5, :cond_2

    :cond_1
    invoke-virtual {v8}, Lv/d;->D()Z

    move-result v11

    if-nez v11, :cond_2

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    .line 6
    :cond_2
    iget v11, p0, Lv/a;->t0:I

    if-eq v11, v10, :cond_3

    if-ne v11, v9, :cond_4

    :cond_3
    invoke-virtual {v8}, Lv/d;->E()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_13

    if-lez v8, :cond_13

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    :goto_3
    iget v8, p0, Lv/h;->s0:I

    if-ge v4, v8, :cond_10

    .line 8
    iget-object v8, p0, Lv/h;->r0:[Lv/d;

    aget-object v8, v8, v4

    .line 9
    iget-boolean v11, p0, Lv/a;->u0:Z

    if-nez v11, :cond_6

    invoke-virtual {v8}, Lv/d;->e()Z

    move-result v11

    if-nez v11, :cond_6

    goto/16 :goto_5

    :cond_6
    if-nez v7, :cond_b

    .line 10
    iget v7, p0, Lv/a;->t0:I

    if-nez v7, :cond_7

    .line 11
    invoke-virtual {v8, v3}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v6

    invoke-virtual {v6}, Lv/c;->c()I

    move-result v6

    goto :goto_4

    :cond_7
    if-ne v7, v5, :cond_8

    .line 12
    invoke-virtual {v8, v2}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v6

    invoke-virtual {v6}, Lv/c;->c()I

    move-result v6

    goto :goto_4

    :cond_8
    if-ne v7, v10, :cond_9

    .line 13
    invoke-virtual {v8, v1}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v6

    invoke-virtual {v6}, Lv/c;->c()I

    move-result v6

    goto :goto_4

    :cond_9
    if-ne v7, v9, :cond_a

    .line 14
    invoke-virtual {v8, v0}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v6

    invoke-virtual {v6}, Lv/c;->c()I

    move-result v6

    :cond_a
    :goto_4
    const/4 v7, 0x1

    .line 15
    :cond_b
    iget v11, p0, Lv/a;->t0:I

    if-nez v11, :cond_c

    .line 16
    invoke-virtual {v8, v3}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v8

    invoke-virtual {v8}, Lv/c;->c()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_5

    :cond_c
    if-ne v11, v5, :cond_d

    .line 17
    invoke-virtual {v8, v2}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v8

    invoke-virtual {v8}, Lv/c;->c()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_5

    :cond_d
    if-ne v11, v10, :cond_e

    .line 18
    invoke-virtual {v8, v1}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v8

    invoke-virtual {v8}, Lv/c;->c()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_5

    :cond_e
    if-ne v11, v9, :cond_f

    .line 19
    invoke-virtual {v8, v0}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v8

    invoke-virtual {v8}, Lv/c;->c()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_f
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 20
    :cond_10
    iget v0, p0, Lv/a;->v0:I

    add-int/2addr v6, v0

    .line 21
    iget v0, p0, Lv/a;->t0:I

    if-eqz v0, :cond_12

    if-ne v0, v5, :cond_11

    goto :goto_6

    .line 22
    :cond_11
    invoke-virtual {p0, v6, v6}, Lv/d;->M(II)V

    goto :goto_7

    .line 23
    :cond_12
    :goto_6
    invoke-virtual {p0, v6, v6}, Lv/d;->L(II)V

    .line 24
    :goto_7
    iput-boolean v5, p0, Lv/a;->w0:Z

    return v5

    :cond_13
    return v4
.end method

.method public X()I
    .locals 3

    .line 1
    iget v0, p0, Lv/a;->t0:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lt/d;Z)V
    .locals 13

    .line 1
    iget-object p2, p0, Lv/d;->R:[Lv/c;

    iget-object v0, p0, Lv/d;->J:Lv/c;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 2
    iget-object v0, p0, Lv/d;->K:Lv/c;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 3
    iget-object v0, p0, Lv/d;->L:Lv/c;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    .line 4
    iget-object v0, p0, Lv/d;->M:Lv/c;

    const/4 v4, 0x3

    aput-object v0, p2, v4

    const/4 p2, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lv/d;->R:[Lv/c;

    array-length v5, v0

    if-ge p2, v5, :cond_0

    .line 6
    aget-object v5, v0, p2

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    iput-object v0, v5, Lv/c;->i:Lt/h;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lv/a;->t0:I

    if-ltz p2, :cond_1f

    const/4 v5, 0x4

    if-ge p2, v5, :cond_1f

    .line 8
    aget-object p2, v0, p2

    .line 9
    iget-boolean v0, p0, Lv/a;->w0:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lv/a;->W()Z

    .line 11
    :cond_1
    iget-boolean v0, p0, Lv/a;->w0:Z

    if-eqz v0, :cond_6

    .line 12
    iput-boolean v1, p0, Lv/a;->w0:Z

    .line 13
    iget p2, p0, Lv/a;->t0:I

    if-eqz p2, :cond_4

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eq p2, v2, :cond_3

    if-ne p2, v4, :cond_5

    .line 14
    :cond_3
    iget-object p2, p0, Lv/d;->K:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget v0, p0, Lv/d;->b0:I

    invoke-virtual {p1, p2, v0}, Lt/d;->e(Lt/h;I)V

    .line 15
    iget-object p2, p0, Lv/d;->M:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget v0, p0, Lv/d;->b0:I

    invoke-virtual {p1, p2, v0}, Lt/d;->e(Lt/h;I)V

    goto :goto_2

    .line 16
    :cond_4
    :goto_1
    iget-object p2, p0, Lv/d;->J:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget v0, p0, Lv/d;->a0:I

    invoke-virtual {p1, p2, v0}, Lt/d;->e(Lt/h;I)V

    .line 17
    iget-object p2, p0, Lv/d;->L:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget v0, p0, Lv/d;->a0:I

    invoke-virtual {p1, p2, v0}, Lt/d;->e(Lt/h;I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 v0, 0x0

    .line 18
    :goto_3
    iget v6, p0, Lv/h;->s0:I

    if-ge v0, v6, :cond_c

    .line 19
    iget-object v6, p0, Lv/h;->r0:[Lv/d;

    aget-object v6, v6, v0

    .line 20
    iget-boolean v7, p0, Lv/a;->u0:Z

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lv/d;->e()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    .line 21
    :cond_7
    iget v7, p0, Lv/a;->t0:I

    if-eqz v7, :cond_8

    if-ne v7, v3, :cond_9

    .line 22
    :cond_8
    invoke-virtual {v6}, Lv/d;->m()I

    move-result v7

    if-ne v7, v4, :cond_9

    iget-object v7, v6, Lv/d;->J:Lv/c;

    iget-object v7, v7, Lv/c;->f:Lv/c;

    if-eqz v7, :cond_9

    iget-object v7, v6, Lv/d;->L:Lv/c;

    iget-object v7, v7, Lv/c;->f:Lv/c;

    if-eqz v7, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    iget v7, p0, Lv/a;->t0:I

    if-eq v7, v2, :cond_a

    if-ne v7, v4, :cond_b

    .line 24
    :cond_a
    invoke-virtual {v6}, Lv/d;->t()I

    move-result v7

    if-ne v7, v4, :cond_b

    iget-object v7, v6, Lv/d;->K:Lv/c;

    iget-object v7, v7, Lv/c;->f:Lv/c;

    if-eqz v7, :cond_b

    iget-object v6, v6, Lv/d;->M:Lv/c;

    iget-object v6, v6, Lv/c;->f:Lv/c;

    if-eqz v6, :cond_b

    :goto_4
    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    .line 25
    :goto_6
    iget-object v6, p0, Lv/d;->J:Lv/c;

    invoke-virtual {v6}, Lv/c;->e()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lv/d;->L:Lv/c;

    invoke-virtual {v6}, Lv/c;->e()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v6, 0x1

    .line 26
    :goto_8
    iget-object v7, p0, Lv/d;->K:Lv/c;

    invoke-virtual {v7}, Lv/c;->e()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lv/d;->M:Lv/c;

    invoke-virtual {v7}, Lv/c;->e()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v7, 0x1

    :goto_a
    if-nez v0, :cond_15

    .line 27
    iget v0, p0, Lv/a;->t0:I

    if-nez v0, :cond_11

    if-nez v6, :cond_14

    :cond_11
    if-ne v0, v2, :cond_12

    if-nez v7, :cond_14

    :cond_12
    if-ne v0, v3, :cond_13

    if-nez v6, :cond_14

    :cond_13
    if-ne v0, v4, :cond_15

    if-eqz v7, :cond_15

    :cond_14
    const/4 v0, 0x1

    goto :goto_b

    :cond_15
    const/4 v0, 0x0

    :goto_b
    const/4 v6, 0x5

    if-nez v0, :cond_16

    const/4 v6, 0x4

    :cond_16
    const/4 v0, 0x0

    .line 28
    :goto_c
    iget v7, p0, Lv/h;->s0:I

    if-ge v0, v7, :cond_1b

    .line 29
    iget-object v7, p0, Lv/h;->r0:[Lv/d;

    aget-object v7, v7, v0

    .line 30
    iget-boolean v8, p0, Lv/a;->u0:Z

    if-nez v8, :cond_17

    invoke-virtual {v7}, Lv/d;->e()Z

    move-result v8

    if-nez v8, :cond_17

    goto :goto_10

    .line 31
    :cond_17
    iget-object v8, v7, Lv/d;->R:[Lv/c;

    iget v9, p0, Lv/a;->t0:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v8

    .line 32
    iget-object v7, v7, Lv/d;->R:[Lv/c;

    iget v9, p0, Lv/a;->t0:I

    aget-object v10, v7, v9

    iput-object v8, v10, Lv/c;->i:Lt/h;

    .line 33
    aget-object v10, v7, v9

    iget-object v10, v10, Lv/c;->f:Lv/c;

    if-eqz v10, :cond_18

    aget-object v10, v7, v9

    iget-object v10, v10, Lv/c;->f:Lv/c;

    iget-object v10, v10, Lv/c;->d:Lv/d;

    if-ne v10, p0, :cond_18

    .line 34
    aget-object v7, v7, v9

    iget v7, v7, Lv/c;->g:I

    add-int/2addr v7, v1

    goto :goto_d

    :cond_18
    const/4 v7, 0x0

    :goto_d
    if-eqz v9, :cond_1a

    if-ne v9, v2, :cond_19

    goto :goto_e

    .line 35
    :cond_19
    iget-object v9, p2, Lv/c;->i:Lt/h;

    iget v10, p0, Lv/a;->v0:I

    add-int/2addr v10, v7

    .line 36
    invoke-virtual {p1}, Lt/d;->m()Lt/b;

    move-result-object v11

    .line 37
    invoke-virtual {p1}, Lt/d;->n()Lt/h;

    move-result-object v12

    .line 38
    iput v1, v12, Lt/h;->d:I

    .line 39
    invoke-virtual {v11, v9, v8, v12, v10}, Lt/b;->e(Lt/h;Lt/h;Lt/h;I)Lt/b;

    .line 40
    invoke-virtual {p1, v11}, Lt/d;->c(Lt/b;)V

    goto :goto_f

    .line 41
    :cond_1a
    :goto_e
    iget-object v9, p2, Lv/c;->i:Lt/h;

    iget v10, p0, Lv/a;->v0:I

    sub-int/2addr v10, v7

    .line 42
    invoke-virtual {p1}, Lt/d;->m()Lt/b;

    move-result-object v11

    .line 43
    invoke-virtual {p1}, Lt/d;->n()Lt/h;

    move-result-object v12

    .line 44
    iput v1, v12, Lt/h;->d:I

    .line 45
    invoke-virtual {v11, v9, v8, v12, v10}, Lt/b;->f(Lt/h;Lt/h;Lt/h;I)Lt/b;

    .line 46
    invoke-virtual {p1, v11}, Lt/d;->c(Lt/b;)V

    .line 47
    :goto_f
    iget-object v9, p2, Lv/c;->i:Lt/h;

    iget v10, p0, Lv/a;->v0:I

    add-int/2addr v10, v7

    invoke-virtual {p1, v9, v8, v10, v6}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 48
    :cond_1b
    iget p2, p0, Lv/a;->t0:I

    const/16 v0, 0x8

    if-nez p2, :cond_1c

    .line 49
    iget-object p2, p0, Lv/d;->L:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v2, p0, Lv/d;->J:Lv/c;

    iget-object v2, v2, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 50
    iget-object p2, p0, Lv/d;->J:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v0, p0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->L:Lv/c;

    iget-object v0, v0, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v0, v1, v5}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 51
    iget-object p2, p0, Lv/d;->J:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v0, p0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->J:Lv/c;

    iget-object v0, v0, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    goto/16 :goto_11

    :cond_1c
    if-ne p2, v3, :cond_1d

    .line 52
    iget-object p2, p0, Lv/d;->J:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v2, p0, Lv/d;->L:Lv/c;

    iget-object v2, v2, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 53
    iget-object p2, p0, Lv/d;->J:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v0, p0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->J:Lv/c;

    iget-object v0, v0, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v0, v1, v5}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 54
    iget-object p2, p0, Lv/d;->J:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v0, p0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->L:Lv/c;

    iget-object v0, v0, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    goto :goto_11

    :cond_1d
    if-ne p2, v2, :cond_1e

    .line 55
    iget-object p2, p0, Lv/d;->M:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v2, p0, Lv/d;->K:Lv/c;

    iget-object v2, v2, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 56
    iget-object p2, p0, Lv/d;->K:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v0, p0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->M:Lv/c;

    iget-object v0, v0, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v0, v1, v5}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 57
    iget-object p2, p0, Lv/d;->K:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v0, p0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->K:Lv/c;

    iget-object v0, v0, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    goto :goto_11

    :cond_1e
    if-ne p2, v4, :cond_1f

    .line 58
    iget-object p2, p0, Lv/d;->K:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v2, p0, Lv/d;->M:Lv/c;

    iget-object v2, v2, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v2, v1, v0}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 59
    iget-object p2, p0, Lv/d;->K:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v0, p0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->K:Lv/c;

    iget-object v0, v0, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v0, v1, v5}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 60
    iget-object p2, p0, Lv/d;->K:Lv/c;

    iget-object p2, p2, Lv/c;->i:Lt/h;

    iget-object v0, p0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->M:Lv/c;

    iget-object v0, v0, Lv/c;->i:Lt/h;

    invoke-virtual {p1, p2, v0, v1, v1}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    :cond_1f
    :goto_11
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[Barrier] "

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lv/d;->j0:Ljava/lang/String;

    const-string v2, " {"

    .line 3
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lv/h;->s0:I

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lv/h;->r0:[Lv/d;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, ", "

    .line 6
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object v2, v2, Lv/d;->j0:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lw/n;
.super Lw/p;
.source "SourceFile"


# instance fields
.field public k:Lw/f;

.field public l:Lw/g;


# direct methods
.method public constructor <init>(Lv/d;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lw/p;-><init>(Lv/d;)V

    .line 2
    new-instance p1, Lw/f;

    invoke-direct {p1, p0}, Lw/f;-><init>(Lw/p;)V

    iput-object p1, p0, Lw/n;->k:Lw/f;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lw/n;->l:Lw/g;

    .line 4
    iget-object v0, p0, Lw/p;->h:Lw/f;

    const/4 v1, 0x6

    iput v1, v0, Lw/f;->e:I

    .line 5
    iget-object v0, p0, Lw/p;->i:Lw/f;

    const/4 v1, 0x7

    iput v1, v0, Lw/f;->e:I

    const/16 v0, 0x8

    .line 6
    iput v0, p1, Lw/f;->e:I

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lw/p;->f:I

    return-void
.end method


# virtual methods
.method public a(Lw/d;)V
    .locals 8

    .line 1
    iget p1, p0, Lw/p;->j:I

    invoke-static {p1}, Lt/g;->c(I)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_e

    .line 2
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean v2, p1, Lw/f;->c:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Lw/f;->j:Z

    if-nez v2, :cond_5

    .line 3
    iget v2, p0, Lw/p;->d:I

    if-ne v2, v0, :cond_5

    .line 4
    iget-object v2, p0, Lw/p;->b:Lv/d;

    iget v5, v2, Lv/d;->s:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    if-eq v5, v0, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    iget-object v5, v2, Lv/d;->d:Lw/l;

    iget-object v5, v5, Lw/p;->e:Lw/g;

    iget-boolean v6, v5, Lw/f;->j:Z

    if-eqz v6, :cond_5

    .line 6
    iget v6, v2, Lv/d;->Z:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    if-eqz v6, :cond_2

    if-eq v6, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :cond_1
    iget v5, v5, Lw/f;->g:I

    int-to-float v5, v5

    .line 8
    iget v2, v2, Lv/d;->Y:F

    goto :goto_0

    .line 9
    :cond_2
    iget v5, v5, Lw/f;->g:I

    int-to-float v5, v5

    .line 10
    iget v2, v2, Lv/d;->Y:F

    mul-float v5, v5, v2

    goto :goto_1

    .line 11
    :cond_3
    iget v5, v5, Lw/f;->g:I

    int-to-float v5, v5

    .line 12
    iget v2, v2, Lv/d;->Y:F

    :goto_0
    div-float/2addr v5, v2

    :goto_1
    add-float/2addr v5, v4

    float-to-int v2, v5

    .line 13
    :goto_2
    invoke-virtual {p1, v2}, Lw/g;->c(I)V

    goto :goto_3

    .line 14
    :cond_4
    iget-object v5, v2, Lv/d;->V:Lv/d;

    if-eqz v5, :cond_5

    .line 15
    iget-object v5, v5, Lv/d;->e:Lw/n;

    iget-object v5, v5, Lw/p;->e:Lw/g;

    iget-boolean v6, v5, Lw/f;->j:Z

    if-eqz v6, :cond_5

    .line 16
    iget v2, v2, Lv/d;->z:F

    .line 17
    iget v5, v5, Lw/f;->g:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    .line 18
    invoke-virtual {p1, v2}, Lw/g;->c(I)V

    .line 19
    :cond_5
    :goto_3
    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-boolean v2, p1, Lw/f;->c:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lw/p;->i:Lw/f;

    iget-boolean v5, v2, Lw/f;->c:Z

    if-nez v5, :cond_6

    goto/16 :goto_6

    .line 20
    :cond_6
    iget-boolean p1, p1, Lw/f;->j:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v2, Lw/f;->j:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean p1, p1, Lw/f;->j:Z

    if-eqz p1, :cond_7

    return-void

    .line 21
    :cond_7
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean p1, p1, Lw/f;->j:Z

    if-nez p1, :cond_8

    iget p1, p0, Lw/p;->d:I

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lw/p;->b:Lv/d;

    iget v2, p1, Lv/d;->r:I

    if-nez v2, :cond_8

    .line 22
    invoke-virtual {p1}, Lv/d;->B()Z

    move-result p1

    if-nez p1, :cond_8

    .line 23
    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/f;

    .line 24
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/f;

    .line 25
    iget p1, p1, Lw/f;->g:I

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget v2, v1, Lw/f;->f:I

    add-int/2addr p1, v2

    .line 26
    iget v0, v0, Lw/f;->g:I

    iget-object v2, p0, Lw/p;->i:Lw/f;

    iget v2, v2, Lw/f;->f:I

    add-int/2addr v0, v2

    sub-int v2, v0, p1

    .line 27
    invoke-virtual {v1, p1}, Lw/f;->c(I)V

    .line 28
    iget-object p1, p0, Lw/p;->i:Lw/f;

    invoke-virtual {p1, v0}, Lw/f;->c(I)V

    .line 29
    iget-object p1, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p1, v2}, Lw/g;->c(I)V

    return-void

    .line 30
    :cond_8
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean p1, p1, Lw/f;->j:Z

    if-nez p1, :cond_a

    iget p1, p0, Lw/p;->d:I

    if-ne p1, v0, :cond_a

    iget p1, p0, Lw/p;->a:I

    if-ne p1, v1, :cond_a

    .line 31
    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lw/p;->i:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 32
    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/f;

    .line 33
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/f;

    .line 34
    iget p1, p1, Lw/f;->g:I

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget v1, v1, Lw/f;->f:I

    add-int/2addr p1, v1

    .line 35
    iget v0, v0, Lw/f;->g:I

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget v1, v1, Lw/f;->f:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 36
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget v1, p1, Lw/g;->m:I

    if-ge v0, v1, :cond_9

    .line 37
    invoke-virtual {p1, v0}, Lw/g;->c(I)V

    goto :goto_4

    .line 38
    :cond_9
    invoke-virtual {p1, v1}, Lw/g;->c(I)V

    .line 39
    :cond_a
    :goto_4
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean p1, p1, Lw/f;->j:Z

    if-nez p1, :cond_b

    return-void

    .line 40
    :cond_b
    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lw/p;->i:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 41
    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/f;

    .line 42
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/f;

    .line 43
    iget v1, p1, Lw/f;->g:I

    iget-object v2, p0, Lw/p;->h:Lw/f;

    iget v3, v2, Lw/f;->f:I

    add-int/2addr v3, v1

    .line 44
    iget v5, v0, Lw/f;->g:I

    iget-object v6, p0, Lw/p;->i:Lw/f;

    iget v6, v6, Lw/f;->f:I

    add-int/2addr v6, v5

    .line 45
    iget-object v7, p0, Lw/p;->b:Lv/d;

    .line 46
    iget v7, v7, Lv/d;->g0:F

    if-ne p1, v0, :cond_c

    const/high16 v7, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_c
    move v1, v3

    move v5, v6

    :goto_5
    sub-int/2addr v5, v1

    .line 47
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget p1, p1, Lw/f;->g:I

    sub-int/2addr v5, p1

    int-to-float p1, v1

    add-float/2addr p1, v4

    int-to-float v0, v5

    mul-float v0, v0, v7

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 48
    invoke-virtual {v2, p1}, Lw/f;->c(I)V

    .line 49
    iget-object p1, p0, Lw/p;->i:Lw/f;

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget v0, v0, Lw/f;->g:I

    iget-object v1, p0, Lw/p;->e:Lw/g;

    iget v1, v1, Lw/f;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lw/f;->c(I)V

    :cond_d
    :goto_6
    return-void

    .line 50
    :cond_e
    iget-object p1, p0, Lw/p;->b:Lv/d;

    iget-object v0, p1, Lv/d;->K:Lv/c;

    iget-object p1, p1, Lv/d;->M:Lv/c;

    invoke-virtual {p0, v0, p1, v1}, Lw/p;->l(Lv/c;Lv/c;I)V

    return-void
.end method

.method public d()V
    .locals 9

    .line 1
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-boolean v1, v0, Lv/d;->a:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lw/p;->e:Lw/g;

    invoke-virtual {v0}, Lv/d;->l()I

    move-result v0

    invoke-virtual {v1, v0}, Lw/g;->c(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-boolean v0, v0, Lw/f;->j:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lw/p;->b:Lv/d;

    invoke-virtual {v0}, Lv/d;->t()I

    move-result v0

    iput v0, p0, Lw/p;->d:I

    .line 5
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 6
    iget-boolean v0, v0, Lv/d;->E:Z

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lw/a;

    invoke-direct {v0, p0}, Lw/a;-><init>(Lw/p;)V

    iput-object v0, p0, Lw/n;->l:Lw/g;

    .line 8
    :cond_1
    iget v0, p0, Lw/p;->d:I

    if-eq v0, v1, :cond_4

    if-ne v0, v3, :cond_2

    .line 9
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 10
    iget-object v0, v0, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lv/d;->t()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 12
    invoke-virtual {v0}, Lv/d;->l()I

    move-result v1

    iget-object v2, p0, Lw/p;->b:Lv/d;

    iget-object v2, v2, Lv/d;->K:Lv/c;

    invoke-virtual {v2}, Lv/c;->d()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lw/p;->b:Lv/d;

    iget-object v2, v2, Lv/d;->M:Lv/c;

    invoke-virtual {v2}, Lv/c;->d()I

    move-result v2

    sub-int/2addr v1, v2

    .line 13
    iget-object v2, p0, Lw/p;->h:Lw/f;

    iget-object v3, v0, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->h:Lw/f;

    iget-object v4, p0, Lw/p;->b:Lv/d;

    iget-object v4, v4, Lv/d;->K:Lv/c;

    invoke-virtual {v4}, Lv/c;->d()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lw/p;->b(Lw/f;Lw/f;I)V

    .line 14
    iget-object v2, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v3, p0, Lw/p;->b:Lv/d;

    iget-object v3, v3, Lv/d;->M:Lv/c;

    invoke-virtual {v3}, Lv/c;->d()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Lw/p;->b(Lw/f;Lw/f;I)V

    .line 15
    iget-object v0, p0, Lw/p;->e:Lw/g;

    invoke-virtual {v0, v1}, Lw/g;->c(I)V

    return-void

    .line 16
    :cond_2
    iget v0, p0, Lw/p;->d:I

    if-ne v0, v2, :cond_4

    .line 17
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v4, p0, Lw/p;->b:Lv/d;

    invoke-virtual {v4}, Lv/d;->l()I

    move-result v4

    invoke-virtual {v0, v4}, Lw/g;->c(I)V

    goto :goto_0

    .line 18
    :cond_3
    iget v0, p0, Lw/p;->d:I

    if-ne v0, v3, :cond_4

    .line 19
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 20
    iget-object v0, v0, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0}, Lv/d;->t()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 22
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, v0, Lv/d;->e:Lw/n;

    iget-object v2, v2, Lw/p;->h:Lw/f;

    iget-object v3, p0, Lw/p;->b:Lv/d;

    iget-object v3, v3, Lv/d;->K:Lv/c;

    invoke-virtual {v3}, Lv/c;->d()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lw/p;->b(Lw/f;Lw/f;I)V

    .line 23
    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/d;

    iget-object v2, v2, Lv/d;->M:Lv/c;

    invoke-virtual {v2}, Lv/c;->d()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    return-void

    .line 24
    :cond_4
    :goto_0
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-boolean v4, v0, Lw/f;->j:Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_d

    iget-object v7, p0, Lw/p;->b:Lv/d;

    iget-boolean v8, v7, Lv/d;->a:Z

    if-eqz v8, :cond_d

    .line 25
    iget-object v0, v7, Lv/d;->R:[Lv/c;

    aget-object v4, v0, v6

    iget-object v4, v4, Lv/c;->f:Lv/c;

    if-eqz v4, :cond_8

    aget-object v4, v0, v1

    iget-object v4, v4, Lv/c;->f:Lv/c;

    if-eqz v4, :cond_8

    .line 26
    invoke-virtual {v7}, Lv/d;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/d;

    iget-object v2, v2, Lv/d;->R:[Lv/c;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lv/c;->d()I

    move-result v2

    iput v2, v0, Lw/f;->f:I

    .line 28
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/d;

    iget-object v2, v2, Lv/d;->R:[Lv/c;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lv/c;->d()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lw/f;->f:I

    goto :goto_1

    .line 29
    :cond_5
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->R:[Lv/c;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 30
    iget-object v3, p0, Lw/p;->h:Lw/f;

    iget-object v4, p0, Lw/p;->b:Lv/d;

    iget-object v4, v4, Lv/d;->R:[Lv/c;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lv/c;->d()I

    move-result v4

    .line 31
    iget-object v5, v3, Lw/f;->l:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iput v4, v3, Lw/f;->f:I

    .line 33
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_6
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->R:[Lv/c;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 35
    iget-object v3, p0, Lw/p;->i:Lw/f;

    iget-object v4, p0, Lw/p;->b:Lv/d;

    iget-object v4, v4, Lv/d;->R:[Lv/c;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Lv/c;->d()I

    move-result v1

    neg-int v1, v1

    .line 36
    iget-object v4, v3, Lw/f;->l:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iput v1, v3, Lw/f;->f:I

    .line 38
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_7
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iput-boolean v2, v0, Lw/f;->b:Z

    .line 40
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iput-boolean v2, v0, Lw/f;->b:Z

    .line 41
    :goto_1
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 42
    iget-boolean v1, v0, Lv/d;->E:Z

    if-eqz v1, :cond_1e

    .line 43
    iget-object v1, p0, Lw/n;->k:Lw/f;

    iget-object v2, p0, Lw/p;->h:Lw/f;

    .line 44
    iget v0, v0, Lv/d;->c0:I

    .line 45
    invoke-virtual {p0, v1, v2, v0}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    .line 46
    :cond_8
    aget-object v2, v0, v6

    iget-object v2, v2, Lv/c;->f:Lv/c;

    if-eqz v2, :cond_9

    .line 47
    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 48
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/d;

    iget-object v2, v2, Lv/d;->R:[Lv/c;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lv/c;->d()I

    move-result v2

    .line 49
    iget-object v3, v1, Lw/f;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iput v2, v1, Lw/f;->f:I

    .line 51
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget v2, v2, Lw/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    .line 53
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 54
    iget-boolean v1, v0, Lv/d;->E:Z

    if-eqz v1, :cond_1e

    .line 55
    iget-object v1, p0, Lw/n;->k:Lw/f;

    iget-object v2, p0, Lw/p;->h:Lw/f;

    .line 56
    iget v0, v0, Lv/d;->c0:I

    .line 57
    invoke-virtual {p0, v1, v2, v0}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    .line 58
    :cond_9
    aget-object v2, v0, v1

    iget-object v2, v2, Lv/c;->f:Lv/c;

    if-eqz v2, :cond_b

    .line 59
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 60
    iget-object v2, p0, Lw/p;->i:Lw/f;

    iget-object v3, p0, Lw/p;->b:Lv/d;

    iget-object v3, v3, Lv/d;->R:[Lv/c;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lv/c;->d()I

    move-result v1

    neg-int v1, v1

    .line 61
    iget-object v3, v2, Lw/f;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iput v1, v2, Lw/f;->f:I

    .line 63
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget v2, v2, Lw/f;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    .line 65
    :cond_a
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 66
    iget-boolean v1, v0, Lv/d;->E:Z

    if-eqz v1, :cond_1e

    .line 67
    iget-object v1, p0, Lw/n;->k:Lw/f;

    iget-object v2, p0, Lw/p;->h:Lw/f;

    .line 68
    iget v0, v0, Lv/d;->c0:I

    .line 69
    invoke-virtual {p0, v1, v2, v0}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    .line 70
    :cond_b
    aget-object v1, v0, v3

    iget-object v1, v1, Lv/c;->f:Lv/c;

    if-eqz v1, :cond_c

    .line 71
    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 72
    iget-object v1, p0, Lw/n;->k:Lw/f;

    .line 73
    iget-object v2, v1, Lw/f;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iput v5, v1, Lw/f;->f:I

    .line 75
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/n;->k:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/d;

    .line 77
    iget v2, v2, Lv/d;->c0:I

    neg-int v2, v2

    .line 78
    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    .line 79
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget v2, v2, Lw/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    .line 80
    :cond_c
    instance-of v0, v7, Lv/g;

    if-nez v0, :cond_1e

    .line 81
    iget-object v0, v7, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_1e

    .line 82
    sget-object v0, Lv/c$a;->f:Lv/c$a;

    .line 83
    invoke-virtual {v7, v0}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v0

    iget-object v0, v0, Lv/c;->f:Lv/c;

    if-nez v0, :cond_1e

    .line 84
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 85
    iget-object v1, v0, Lv/d;->V:Lv/d;

    .line 86
    iget-object v1, v1, Lv/d;->e:Lw/n;

    iget-object v1, v1, Lw/p;->h:Lw/f;

    .line 87
    iget-object v2, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v0}, Lv/d;->w()I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Lw/p;->b(Lw/f;Lw/f;I)V

    .line 88
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget v2, v2, Lw/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    .line 89
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 90
    iget-boolean v1, v0, Lv/d;->E:Z

    if-eqz v1, :cond_1e

    .line 91
    iget-object v1, p0, Lw/n;->k:Lw/f;

    iget-object v2, p0, Lw/p;->h:Lw/f;

    .line 92
    iget v0, v0, Lv/d;->c0:I

    .line 93
    invoke-virtual {p0, v1, v2, v0}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    :cond_d
    if-nez v4, :cond_12

    .line 94
    iget v4, p0, Lw/p;->d:I

    if-ne v4, v1, :cond_12

    .line 95
    iget-object v4, p0, Lw/p;->b:Lv/d;

    iget v7, v4, Lv/d;->s:I

    if-eq v7, v6, :cond_10

    if-eq v7, v1, :cond_e

    goto :goto_2

    .line 96
    :cond_e
    invoke-virtual {v4}, Lv/d;->B()Z

    move-result v0

    if-nez v0, :cond_13

    .line 97
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget v4, v0, Lv/d;->r:I

    if-ne v4, v1, :cond_f

    goto :goto_2

    .line 98
    :cond_f
    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->e:Lw/g;

    .line 99
    iget-object v4, p0, Lw/p;->e:Lw/g;

    iget-object v4, v4, Lw/f;->l:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v4, p0, Lw/p;->e:Lw/g;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-boolean v2, v0, Lw/f;->b:Z

    .line 102
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v4, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v4, p0, Lw/p;->i:Lw/f;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    :cond_10
    iget-object v4, v4, Lv/d;->V:Lv/d;

    if-nez v4, :cond_11

    goto :goto_2

    .line 105
    :cond_11
    iget-object v4, v4, Lv/d;->e:Lw/n;

    iget-object v4, v4, Lw/p;->e:Lw/g;

    .line 106
    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, v4, Lw/f;->k:Ljava/util/List;

    iget-object v4, p0, Lw/p;->e:Lw/g;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-boolean v2, v0, Lw/f;->b:Z

    .line 109
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v4, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v4, p0, Lw/p;->i:Lw/f;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_12
    iget-object v4, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-boolean v0, v0, Lw/f;->j:Z

    if-eqz v0, :cond_13

    .line 113
    invoke-virtual {p0, p0}, Lw/n;->a(Lw/d;)V

    .line 114
    :cond_13
    :goto_2
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v4, v0, Lv/d;->R:[Lv/c;

    aget-object v7, v4, v6

    iget-object v7, v7, Lv/c;->f:Lv/c;

    if-eqz v7, :cond_17

    aget-object v7, v4, v1

    iget-object v7, v7, Lv/c;->f:Lv/c;

    if-eqz v7, :cond_17

    .line 115
    invoke-virtual {v0}, Lv/d;->B()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 116
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v3, p0, Lw/p;->b:Lv/d;

    iget-object v3, v3, Lv/d;->R:[Lv/c;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lv/c;->d()I

    move-result v3

    iput v3, v0, Lw/f;->f:I

    .line 117
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v3, p0, Lw/p;->b:Lv/d;

    iget-object v3, v3, Lv/d;->R:[Lv/c;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lv/c;->d()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lw/f;->f:I

    goto :goto_3

    .line 118
    :cond_14
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->R:[Lv/c;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v0

    .line 119
    iget-object v4, p0, Lw/p;->b:Lv/d;

    iget-object v4, v4, Lv/d;->R:[Lv/c;

    aget-object v1, v4, v1

    invoke-virtual {p0, v1}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v1

    if-eqz v0, :cond_15

    .line 120
    iget-object v4, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-boolean v0, v0, Lw/f;->j:Z

    if-eqz v0, :cond_15

    .line 122
    invoke-virtual {p0, p0}, Lw/n;->a(Lw/d;)V

    :cond_15
    if-eqz v1, :cond_16

    .line 123
    iget-object v0, v1, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-boolean v0, v1, Lw/f;->j:Z

    if-eqz v0, :cond_16

    .line 125
    invoke-virtual {p0, p0}, Lw/n;->a(Lw/d;)V

    .line 126
    :cond_16
    iput v3, p0, Lw/p;->j:I

    .line 127
    :goto_3
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 128
    iget-boolean v0, v0, Lv/d;->E:Z

    if-eqz v0, :cond_1d

    .line 129
    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v3, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v1, v2, v3}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    goto/16 :goto_4

    .line 130
    :cond_17
    aget-object v7, v4, v6

    iget-object v7, v7, Lv/c;->f:Lv/c;

    const/4 v8, 0x0

    if-eqz v7, :cond_19

    .line 131
    aget-object v0, v4, v6

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 132
    iget-object v3, p0, Lw/p;->h:Lw/f;

    iget-object v4, p0, Lw/p;->b:Lv/d;

    iget-object v4, v4, Lv/d;->R:[Lv/c;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lv/c;->d()I

    move-result v4

    .line 133
    iget-object v5, v3, Lw/f;->l:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iput v4, v3, Lw/f;->f:I

    .line 135
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v3, p0, Lw/p;->h:Lw/f;

    iget-object v4, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, v0, v3, v2, v4}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    .line 137
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 138
    iget-boolean v0, v0, Lv/d;->E:Z

    if-eqz v0, :cond_18

    .line 139
    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v3, p0, Lw/p;->h:Lw/f;

    iget-object v4, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v3, v2, v4}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    .line 140
    :cond_18
    iget v0, p0, Lw/p;->d:I

    if-ne v0, v1, :cond_1d

    .line 141
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 142
    iget v3, v0, Lv/d;->Y:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_1d

    .line 143
    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget v3, v0, Lw/p;->d:I

    if-ne v3, v1, :cond_1d

    .line 144
    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v1, p0, Lw/p;->b:Lv/d;

    iget-object v1, v1, Lv/d;->d:Lw/l;

    iget-object v1, v1, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-object p0, v0, Lw/f;->a:Lw/d;

    goto/16 :goto_4

    .line 147
    :cond_19
    aget-object v6, v4, v1

    iget-object v6, v6, Lv/c;->f:Lv/c;

    const/4 v7, -0x1

    if-eqz v6, :cond_1a

    .line 148
    aget-object v0, v4, v1

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 149
    iget-object v3, p0, Lw/p;->i:Lw/f;

    iget-object v4, p0, Lw/p;->b:Lv/d;

    iget-object v4, v4, Lv/d;->R:[Lv/c;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Lv/c;->d()I

    move-result v1

    neg-int v1, v1

    .line 150
    iget-object v4, v3, Lw/f;->l:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iput v1, v3, Lw/f;->f:I

    .line 152
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget-object v3, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, v0, v1, v7, v3}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    .line 154
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 155
    iget-boolean v0, v0, Lv/d;->E:Z

    if-eqz v0, :cond_1d

    .line 156
    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v3, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v1, v2, v3}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    goto/16 :goto_4

    .line 157
    :cond_1a
    aget-object v6, v4, v3

    iget-object v6, v6, Lv/c;->f:Lv/c;

    if-eqz v6, :cond_1b

    .line 158
    aget-object v0, v4, v3

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/c;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 159
    iget-object v1, p0, Lw/n;->k:Lw/f;

    .line 160
    iget-object v3, v1, Lw/f;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iput v5, v1, Lw/f;->f:I

    .line 162
    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/n;->k:Lw/f;

    iget-object v3, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v1, v7, v3}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    .line 164
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v3, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, v0, v1, v2, v3}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    goto :goto_4

    .line 165
    :cond_1b
    instance-of v3, v0, Lv/g;

    if-nez v3, :cond_1d

    .line 166
    iget-object v3, v0, Lv/d;->V:Lv/d;

    if-eqz v3, :cond_1d

    .line 167
    iget-object v3, v3, Lv/d;->e:Lw/n;

    iget-object v3, v3, Lw/p;->h:Lw/f;

    .line 168
    iget-object v4, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v0}, Lv/d;->w()I

    move-result v0

    invoke-virtual {p0, v4, v3, v0}, Lw/p;->b(Lw/f;Lw/f;I)V

    .line 169
    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v3, p0, Lw/p;->h:Lw/f;

    iget-object v4, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, v0, v3, v2, v4}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    .line 170
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 171
    iget-boolean v0, v0, Lv/d;->E:Z

    if-eqz v0, :cond_1c

    .line 172
    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v3, p0, Lw/p;->h:Lw/f;

    iget-object v4, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v3, v2, v4}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    .line 173
    :cond_1c
    iget v0, p0, Lw/p;->d:I

    if-ne v0, v1, :cond_1d

    .line 174
    iget-object v0, p0, Lw/p;->b:Lv/d;

    .line 175
    iget v3, v0, Lv/d;->Y:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_1d

    .line 176
    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget v3, v0, Lw/p;->d:I

    if-ne v3, v1, :cond_1d

    .line 177
    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v1, p0, Lw/p;->b:Lv/d;

    iget-object v1, v1, Lv/d;->d:Lw/l;

    iget-object v1, v1, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-object p0, v0, Lw/f;->a:Lw/d;

    .line 180
    :cond_1d
    :goto_4
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 181
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-boolean v2, v0, Lw/f;->c:Z

    :cond_1e
    :goto_5
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-boolean v1, v0, Lw/f;->j:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lw/p;->b:Lv/d;

    iget v0, v0, Lw/f;->g:I

    .line 3
    iput v0, v1, Lv/d;->b0:I

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lw/p;->c:Lw/m;

    .line 2
    iget-object v0, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v0}, Lw/f;->b()V

    .line 3
    iget-object v0, p0, Lw/p;->i:Lw/f;

    invoke-virtual {v0}, Lw/f;->b()V

    .line 4
    iget-object v0, p0, Lw/n;->k:Lw/f;

    invoke-virtual {v0}, Lw/f;->b()V

    .line 5
    iget-object v0, p0, Lw/p;->e:Lw/g;

    invoke-virtual {v0}, Lw/f;->b()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lw/p;->g:Z

    return-void
.end method

.method public k()Z
    .locals 3

    .line 1
    iget v0, p0, Lw/p;->d:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget v0, v0, Lv/d;->s:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lw/p;->g:Z

    .line 2
    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v1}, Lw/f;->b()V

    .line 3
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iput-boolean v0, v1, Lw/f;->j:Z

    .line 4
    iget-object v1, p0, Lw/p;->i:Lw/f;

    invoke-virtual {v1}, Lw/f;->b()V

    .line 5
    iget-object v1, p0, Lw/p;->i:Lw/f;

    iput-boolean v0, v1, Lw/f;->j:Z

    .line 6
    iget-object v1, p0, Lw/n;->k:Lw/f;

    invoke-virtual {v1}, Lw/f;->b()V

    .line 7
    iget-object v1, p0, Lw/n;->k:Lw/f;

    iput-boolean v0, v1, Lw/f;->j:Z

    .line 8
    iget-object v1, p0, Lw/p;->e:Lw/g;

    iput-boolean v0, v1, Lw/f;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "VerticalRun "

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lw/p;->b:Lv/d;

    .line 2
    iget-object v1, v1, Lv/d;->j0:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

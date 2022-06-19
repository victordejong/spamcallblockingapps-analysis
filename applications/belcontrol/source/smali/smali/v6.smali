.class public Lv6;
.super Lx6;
.source ""


# instance fields
.field public k:Ln6;

.field public l:Lo6;


# direct methods
.method public constructor <init>(Lz5;)V
    .locals 2

    invoke-direct {p0, p1}, Lx6;-><init>(Lz5;)V

    new-instance p1, Ln6;

    invoke-direct {p1, p0}, Ln6;-><init>(Lx6;)V

    iput-object p1, p0, Lv6;->k:Ln6;

    const/4 v0, 0x0

    iput-object v0, p0, Lv6;->l:Lo6;

    iget-object v0, p0, Lx6;->h:Ln6;

    sget-object v1, Ln6$a;->g:Ln6$a;

    iput-object v1, v0, Ln6;->e:Ln6$a;

    iget-object v0, p0, Lx6;->i:Ln6;

    sget-object v1, Ln6$a;->h:Ln6$a;

    iput-object v1, v0, Ln6;->e:Ln6$a;

    sget-object v0, Ln6$a;->j:Ln6$a;

    iput-object v0, p1, Ln6;->e:Ln6$a;

    const/4 p1, 0x1

    iput p1, p0, Lx6;->f:I

    return-void
.end method


# virtual methods
.method public a(Ll6;)V
    .locals 6

    sget-object v0, Lv6$a;->a:[I

    iget-object v1, p0, Lx6;->j:Lx6$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v1, v0, Lz5;->I:Ly5;

    iget-object v0, v0, Lz5;->K:Ly5;

    invoke-virtual {p0, p1, v1, v0, v3}, Lx6;->n(Ll6;Ly5;Ly5;I)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lx6;->o(Ll6;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lx6;->p(Ll6;)V

    :goto_0
    iget-object p1, p0, Lx6;->e:Lo6;

    iget-boolean v0, p1, Ln6;->c:Z

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    iget-boolean p1, p1, Ln6;->j:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lx6;->d:Lz5$b;

    sget-object v0, Lz5$b;->c:Lz5$b;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lx6;->b:Lz5;

    iget v0, p1, Lz5;->o:I

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->e:Lo6;

    iget-boolean v0, v0, Ln6;->j:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lz5;->x()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lx6;->b:Lz5;

    iget-object v0, p1, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->e:Lo6;

    iget v0, v0, Ln6;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lz5;->w()F

    move-result p1

    mul-float v0, v0, p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lx6;->b:Lz5;

    iget-object v0, p1, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->e:Lo6;

    iget v0, v0, Ln6;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lz5;->w()F

    move-result p1

    div-float/2addr v0, p1

    :goto_1
    add-float/2addr v0, v4

    float-to-int p1, v0

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lz5;->L()Lz5;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p1, Lz5;->e:Lv6;

    iget-object p1, p1, Lx6;->e:Lo6;

    iget-boolean v0, p1, Ln6;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lx6;->b:Lz5;

    iget v0, v0, Lz5;->v:F

    iget p1, p1, Ln6;->g:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p1, v4

    float-to-int p1, p1

    :goto_2
    iget-object v0, p0, Lx6;->e:Lo6;

    invoke-virtual {v0, p1}, Lo6;->d(I)V

    :cond_7
    :goto_3
    iget-object p1, p0, Lx6;->h:Ln6;

    iget-boolean v0, p1, Ln6;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-boolean v1, v0, Ln6;->c:Z

    if-nez v1, :cond_8

    goto/16 :goto_5

    :cond_8
    iget-boolean p1, p1, Ln6;->j:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v0, Ln6;->j:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lx6;->e:Lo6;

    iget-boolean p1, p1, Ln6;->j:Z

    if-eqz p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lx6;->e:Lo6;

    iget-boolean p1, p1, Ln6;->j:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lx6;->d:Lz5$b;

    sget-object v0, Lz5$b;->c:Lz5$b;

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lx6;->b:Lz5;

    iget v0, p1, Lz5;->n:I

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lz5;->e0()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lx6;->h:Ln6;

    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln6;

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget p1, p1, Ln6;->g:I

    iget-object v1, p0, Lx6;->h:Ln6;

    iget v2, v1, Ln6;->f:I

    add-int/2addr p1, v2

    iget v0, v0, Ln6;->g:I

    iget-object v2, p0, Lx6;->i:Ln6;

    iget v2, v2, Ln6;->f:I

    add-int/2addr v0, v2

    sub-int v2, v0, p1

    invoke-virtual {v1, p1}, Ln6;->d(I)V

    iget-object p1, p0, Lx6;->i:Ln6;

    invoke-virtual {p1, v0}, Ln6;->d(I)V

    iget-object p1, p0, Lx6;->e:Lo6;

    invoke-virtual {p1, v2}, Lo6;->d(I)V

    return-void

    :cond_a
    iget-object p1, p0, Lx6;->e:Lo6;

    iget-boolean p1, p1, Ln6;->j:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lx6;->d:Lz5$b;

    sget-object v0, Lz5$b;->c:Lz5$b;

    if-ne p1, v0, :cond_c

    iget p1, p0, Lx6;->a:I

    if-ne p1, v3, :cond_c

    iget-object p1, p0, Lx6;->h:Ln6;

    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lx6;->i:Ln6;

    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lx6;->h:Ln6;

    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln6;

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget p1, p1, Ln6;->g:I

    iget-object v1, p0, Lx6;->h:Ln6;

    iget v1, v1, Ln6;->f:I

    add-int/2addr p1, v1

    iget v0, v0, Ln6;->g:I

    iget-object v1, p0, Lx6;->i:Ln6;

    iget v1, v1, Ln6;->f:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lx6;->e:Lo6;

    iget v1, p1, Lo6;->m:I

    if-ge v0, v1, :cond_b

    invoke-virtual {p1, v0}, Lo6;->d(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p1, v1}, Lo6;->d(I)V

    :cond_c
    :goto_4
    iget-object p1, p0, Lx6;->e:Lo6;

    iget-boolean p1, p1, Ln6;->j:Z

    if-nez p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lx6;->h:Ln6;

    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    iget-object p1, p0, Lx6;->i:Ln6;

    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    iget-object p1, p0, Lx6;->h:Ln6;

    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln6;

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6;

    iget v1, p1, Ln6;->g:I

    iget-object v2, p0, Lx6;->h:Ln6;

    iget v2, v2, Ln6;->f:I

    add-int/2addr v1, v2

    iget v2, v0, Ln6;->g:I

    iget-object v3, p0, Lx6;->i:Ln6;

    iget v3, v3, Ln6;->f:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lx6;->b:Lz5;

    invoke-virtual {v3}, Lz5;->P()F

    move-result v3

    if-ne p1, v0, :cond_e

    iget v1, p1, Ln6;->g:I

    iget v2, v0, Ln6;->g:I

    const/high16 v3, 0x3f000000    # 0.5f

    :cond_e
    sub-int/2addr v2, v1

    iget-object p1, p0, Lx6;->e:Lo6;

    iget p1, p1, Ln6;->g:I

    sub-int/2addr v2, p1

    iget-object p1, p0, Lx6;->h:Ln6;

    int-to-float v0, v1

    add-float/2addr v0, v4

    int-to-float v1, v2

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Ln6;->d(I)V

    iget-object p1, p0, Lx6;->i:Ln6;

    iget-object v0, p0, Lx6;->h:Ln6;

    iget v0, v0, Ln6;->g:I

    iget-object v1, p0, Lx6;->e:Lo6;

    iget v1, v1, Ln6;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ln6;->d(I)V

    :cond_f
    :goto_5
    return-void
.end method

.method public d()V
    .locals 9

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-boolean v1, v0, Lz5;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-virtual {v0}, Lz5;->y()I

    move-result v0

    invoke-virtual {v1, v0}, Lo6;->d(I)V

    :cond_0
    iget-object v0, p0, Lx6;->e:Lo6;

    iget-boolean v0, v0, Ln6;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->R()Lz5$b;

    move-result-object v0

    iput-object v0, p0, Lx6;->d:Lz5$b;

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Li6;

    invoke-direct {v0, p0}, Li6;-><init>(Lx6;)V

    iput-object v0, p0, Lv6;->l:Lo6;

    :cond_1
    iget-object v0, p0, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->c:Lz5$b;

    if-eq v0, v1, :cond_4

    sget-object v1, Lz5$b;->d:Lz5$b;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz5;->R()Lz5$b;

    move-result-object v1

    sget-object v2, Lz5$b;->a:Lz5$b;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lz5;->y()I

    move-result v1

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->I:Ly5;

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->K:Ly5;

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lx6;->h:Ln6;

    iget-object v3, v0, Lz5;->e:Lv6;

    iget-object v3, v3, Lx6;->h:Ln6;

    iget-object v4, p0, Lx6;->b:Lz5;

    iget-object v4, v4, Lz5;->I:Ly5;

    invoke-virtual {v4}, Ly5;->f()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v2, p0, Lx6;->i:Ln6;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v3, p0, Lx6;->b:Lz5;

    iget-object v3, v3, Lz5;->K:Ly5;

    invoke-virtual {v3}, Ly5;->f()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->e:Lo6;

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->a:Lz5$b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v1, p0, Lx6;->b:Lz5;

    invoke-virtual {v1}, Lz5;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lo6;->d(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->d:Lz5$b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lz5;->R()Lz5$b;

    move-result-object v1

    sget-object v2, Lz5$b;->a:Lz5$b;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, v0, Lz5;->e:Lv6;

    iget-object v2, v2, Lx6;->h:Ln6;

    iget-object v3, p0, Lx6;->b:Lz5;

    iget-object v3, v3, Lz5;->I:Ly5;

    invoke-virtual {v3}, Ly5;->f()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->K:Ly5;

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lx6;->e:Lo6;

    iget-boolean v1, v0, Ln6;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v1, :cond_d

    iget-object v7, p0, Lx6;->b:Lz5;

    iget-boolean v8, v7, Lz5;->a:Z

    if-eqz v8, :cond_d

    iget-object v0, v7, Lz5;->P:[Ly5;

    aget-object v1, v0, v5

    iget-object v1, v1, Ly5;->f:Ly5;

    if-eqz v1, :cond_8

    aget-object v1, v0, v6

    iget-object v1, v1, Ly5;->f:Ly5;

    if-eqz v1, :cond_8

    invoke-virtual {v7}, Lz5;->e0()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ly5;->f()I

    move-result v1

    iput v1, v0, Ln6;->f:I

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ly5;->f()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Ln6;->f:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->P:[Ly5;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->P:[Ly5;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    :cond_6
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->P:[Ly5;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->P:[Ly5;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    :cond_7
    iget-object v0, p0, Lx6;->h:Ln6;

    iput-boolean v4, v0, Ln6;->b:Z

    iget-object v0, p0, Lx6;->i:Ln6;

    iput-boolean v4, v0, Ln6;->b:Z

    :goto_1
    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->X()Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_2
    iget-object v0, p0, Lv6;->k:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    invoke-virtual {v2}, Lz5;->q()I

    move-result v2

    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Ln6;Ln6;I)V

    goto/16 :goto_b

    :cond_8
    aget-object v1, v0, v5

    iget-object v1, v1, Ly5;->f:Ly5;

    if-eqz v1, :cond_9

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->P:[Ly5;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    iget v2, v2, Ln6;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->X()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_2

    :cond_9
    aget-object v1, v0, v6

    iget-object v1, v1, Ly5;->f:Ly5;

    if-eqz v1, :cond_b

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->P:[Ly5;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    iget v2, v2, Ln6;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Ln6;Ln6;I)V

    :cond_a
    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->X()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_2

    :cond_b
    aget-object v1, v0, v3

    iget-object v1, v1, Ly5;->f:Ly5;

    if-eqz v1, :cond_c

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lv6;->k:Ln6;

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lv6;->k:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    invoke-virtual {v2}, Lz5;->q()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    iget v2, v2, Ln6;->g:I

    goto/16 :goto_3

    :cond_c
    instance-of v0, v7, Ld6;

    if-nez v0, :cond_1c

    invoke-virtual {v7}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lx6;->b:Lz5;

    sget-object v1, Ly5$b;->h:Ly5$b;

    invoke-virtual {v0, v1}, Lz5;->p(Ly5$b;)Ly5;

    move-result-object v0

    iget-object v0, v0, Ly5;->f:Ly5;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    invoke-virtual {v2}, Lz5;->W()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    iget v2, v2, Ln6;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->X()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_2

    :cond_d
    if-nez v1, :cond_12

    iget-object v1, p0, Lx6;->d:Lz5$b;

    sget-object v7, Lz5$b;->c:Lz5$b;

    if-ne v1, v7, :cond_12

    iget-object v0, p0, Lx6;->b:Lz5;

    iget v1, v0, Lz5;->o:I

    if-eq v1, v5, :cond_10

    if-eq v1, v6, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lz5;->e0()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lx6;->b:Lz5;

    iget v1, v0, Lz5;->n:I

    if-ne v1, v6, :cond_f

    goto :goto_5

    :cond_f
    iget-object v0, v0, Lz5;->d:Lt6;

    goto :goto_4

    :cond_10
    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_5

    :cond_11
    iget-object v0, v0, Lz5;->e:Lv6;

    :goto_4
    iget-object v0, v0, Lx6;->e:Lo6;

    iget-object v1, p0, Lx6;->e:Lo6;

    iget-object v1, v1, Ln6;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iput-boolean v4, v0, Ln6;->b:Z

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->h:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->i:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    invoke-virtual {v0, p0}, Ln6;->b(Ll6;)V

    :cond_13
    :goto_5
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v1, v0, Lz5;->P:[Ly5;

    aget-object v7, v1, v5

    iget-object v7, v7, Ly5;->f:Ly5;

    if-eqz v7, :cond_15

    aget-object v7, v1, v6

    iget-object v7, v7, Ly5;->f:Ly5;

    if-eqz v7, :cond_15

    invoke-virtual {v0}, Lz5;->e0()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ly5;->f()I

    move-result v1

    iput v1, v0, Ln6;->f:I

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ly5;->f()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Ln6;->f:I

    goto :goto_6

    :cond_14
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->P:[Ly5;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v6

    invoke-virtual {p0, v1}, Lx6;->h(Ly5;)Ln6;

    move-result-object v1

    invoke-virtual {v0, p0}, Ln6;->b(Ll6;)V

    invoke-virtual {v1, p0}, Ln6;->b(Ll6;)V

    sget-object v0, Lx6$b;->d:Lx6$b;

    iput-object v0, p0, Lx6;->j:Lx6$b;

    :goto_6
    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->X()Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_7
    iget-object v0, p0, Lv6;->k:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lv6;->l:Lo6;

    :goto_8
    invoke-virtual {p0, v0, v1, v4, v2}, Lx6;->c(Ln6;Ln6;ILo6;)V

    goto/16 :goto_a

    :cond_15
    aget-object v7, v1, v5

    iget-object v7, v7, Ly5;->f:Ly5;

    const/4 v8, 0x0

    if-eqz v7, :cond_17

    aget-object v0, v1, v5

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->P:[Ly5;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    invoke-virtual {p0, v0, v1, v4, v2}, Lx6;->c(Ln6;Ln6;ILo6;)V

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->X()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lv6;->k:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lv6;->l:Lo6;

    invoke-virtual {p0, v0, v1, v4, v2}, Lx6;->c(Ln6;Ln6;ILo6;)V

    :cond_16
    iget-object v0, p0, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->c:Lz5$b;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->w()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_1b

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v2, v0, Lx6;->d:Lz5$b;

    if-ne v2, v1, :cond_1b

    goto/16 :goto_9

    :cond_17
    aget-object v5, v1, v6

    iget-object v5, v5, Ly5;->f:Ly5;

    const/4 v7, -0x1

    if-eqz v5, :cond_18

    aget-object v0, v1, v6

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->P:[Ly5;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ly5;->f()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->i:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    invoke-virtual {p0, v0, v1, v7, v2}, Lx6;->c(Ln6;Ln6;ILo6;)V

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->X()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_7

    :cond_18
    aget-object v5, v1, v3

    iget-object v5, v5, Ly5;->f:Ly5;

    if-eqz v5, :cond_19

    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Lx6;->h(Ly5;)Ln6;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lv6;->k:Ln6;

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v1, p0, Lv6;->k:Ln6;

    iget-object v2, p0, Lv6;->l:Lo6;

    invoke-virtual {p0, v0, v1, v7, v2}, Lx6;->c(Ln6;Ln6;ILo6;)V

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    goto/16 :goto_8

    :cond_19
    instance-of v1, v0, Ld6;

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->L()Lz5;

    move-result-object v0

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->h:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->b:Lz5;

    invoke-virtual {v2}, Lz5;->W()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Ln6;Ln6;I)V

    iget-object v0, p0, Lx6;->i:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lx6;->e:Lo6;

    invoke-virtual {p0, v0, v1, v4, v2}, Lx6;->c(Ln6;Ln6;ILo6;)V

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->X()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lv6;->k:Ln6;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget-object v2, p0, Lv6;->l:Lo6;

    invoke-virtual {p0, v0, v1, v4, v2}, Lx6;->c(Ln6;Ln6;ILo6;)V

    :cond_1a
    iget-object v0, p0, Lx6;->d:Lz5$b;

    sget-object v1, Lz5$b;->c:Lz5$b;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lx6;->b:Lz5;

    invoke-virtual {v0}, Lz5;->w()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_1b

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v2, v0, Lx6;->d:Lz5$b;

    if-ne v2, v1, :cond_1b

    :goto_9
    iget-object v0, v0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->d:Lt6;

    iget-object v1, v1, Lx6;->e:Lo6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->e:Lo6;

    iput-object p0, v0, Ln6;->a:Ll6;

    :cond_1b
    :goto_a
    iget-object v0, p0, Lx6;->e:Lo6;

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lx6;->e:Lo6;

    iput-boolean v4, v0, Ln6;->c:Z

    :cond_1c
    :goto_b
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-boolean v1, v0, Ln6;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lx6;->b:Lz5;

    iget v0, v0, Ln6;->g:I

    invoke-virtual {v1, v0}, Lz5;->a1(I)V

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

    iget-object v0, p0, Lv6;->k:Ln6;

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

    iget v0, v0, Lz5;->o:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public q()V
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

    iget-object v1, p0, Lv6;->k:Ln6;

    invoke-virtual {v1}, Ln6;->c()V

    iget-object v1, p0, Lv6;->k:Ln6;

    iput-boolean v0, v1, Ln6;->j:Z

    iget-object v1, p0, Lx6;->e:Lo6;

    iput-boolean v0, v1, Ln6;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerticalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx6;->b:Lz5;

    invoke-virtual {v1}, Lz5;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

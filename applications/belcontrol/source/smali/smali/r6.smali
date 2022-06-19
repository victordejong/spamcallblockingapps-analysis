.class public Lr6;
.super Lx6;
.source ""


# direct methods
.method public constructor <init>(Lz5;)V
    .locals 1

    invoke-direct {p0, p1}, Lx6;-><init>(Lz5;)V

    iget-object v0, p1, Lz5;->d:Lt6;

    invoke-virtual {v0}, Lt6;->f()V

    iget-object v0, p1, Lz5;->e:Lv6;

    invoke-virtual {v0}, Lv6;->f()V

    check-cast p1, Lc6;

    invoke-virtual {p1}, Lc6;->f1()I

    move-result p1

    iput p1, p0, Lx6;->f:I

    return-void
.end method


# virtual methods
.method public a(Ll6;)V
    .locals 2

    iget-object p1, p0, Lx6;->h:Ln6;

    iget-boolean v0, p1, Ln6;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Ln6;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln6;

    iget-object v0, p0, Lx6;->b:Lz5;

    check-cast v0, Lc6;

    const/high16 v1, 0x3f000000    # 0.5f

    iget p1, p1, Ln6;->g:I

    int-to-float p1, p1

    invoke-virtual {v0}, Lc6;->i1()F

    move-result v0

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v0, p0, Lx6;->h:Ln6;

    invoke-virtual {v0, p1}, Ln6;->d(I)V

    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lx6;->b:Lz5;

    check-cast v0, Lc6;

    invoke-virtual {v0}, Lc6;->g1()I

    move-result v1

    invoke-virtual {v0}, Lc6;->h1()I

    move-result v2

    invoke-virtual {v0}, Lc6;->i1()F

    invoke-virtual {v0}, Lc6;->f1()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lx6;->h:Ln6;

    if-eq v1, v4, :cond_0

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->T:Lz5;

    iget-object v2, v2, Lz5;->d:Lt6;

    iget-object v2, v2, Lx6;->h:Ln6;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->T:Lz5;

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v2, p0, Lx6;->h:Ln6;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->h:Ln6;

    :goto_0
    iput v1, v0, Ln6;->f:I

    goto :goto_1

    :cond_0
    if-eq v2, v4, :cond_1

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->T:Lz5;

    iget-object v1, v1, Lz5;->d:Lt6;

    iget-object v1, v1, Lx6;->i:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->T:Lz5;

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->h:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->h:Ln6;

    neg-int v1, v2

    goto :goto_0

    :cond_1
    iput-boolean v3, v0, Ln6;->b:Z

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->T:Lz5;

    iget-object v1, v1, Lz5;->d:Lt6;

    iget-object v1, v1, Lx6;->i:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->T:Lz5;

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->h:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->d:Lt6;

    iget-object v0, v0, Lx6;->h:Ln6;

    invoke-virtual {p0, v0}, Lr6;->q(Ln6;)V

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->d:Lt6;

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lx6;->h:Ln6;

    if-eq v1, v4, :cond_3

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v2, p0, Lx6;->b:Lz5;

    iget-object v2, v2, Lz5;->T:Lz5;

    iget-object v2, v2, Lz5;->e:Lv6;

    iget-object v2, v2, Lx6;->h:Ln6;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->T:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v2, p0, Lx6;->h:Ln6;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->h:Ln6;

    :goto_2
    iput v1, v0, Ln6;->f:I

    goto :goto_3

    :cond_3
    if-eq v2, v4, :cond_4

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->T:Lz5;

    iget-object v1, v1, Lz5;->e:Lv6;

    iget-object v1, v1, Lx6;->i:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->T:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->h:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->h:Ln6;

    neg-int v1, v2

    goto :goto_2

    :cond_4
    iput-boolean v3, v0, Ln6;->b:Z

    iget-object v0, v0, Ln6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lz5;

    iget-object v1, v1, Lz5;->T:Lz5;

    iget-object v1, v1, Lz5;->e:Lv6;

    iget-object v1, v1, Lx6;->i:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->T:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->i:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->h:Ln6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    iget-object v0, v0, Lx6;->h:Ln6;

    invoke-virtual {p0, v0}, Lr6;->q(Ln6;)V

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v0, v0, Lz5;->e:Lv6;

    :goto_4
    iget-object v0, v0, Lx6;->i:Ln6;

    invoke-virtual {p0, v0}, Lr6;->q(Ln6;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lx6;->b:Lz5;

    check-cast v0, Lc6;

    invoke-virtual {v0}, Lc6;->f1()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget v1, v1, Ln6;->g:I

    invoke-virtual {v0, v1}, Lz5;->Z0(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx6;->b:Lz5;

    iget-object v1, p0, Lx6;->h:Ln6;

    iget v1, v1, Ln6;->g:I

    invoke-virtual {v0, v1}, Lz5;->a1(I)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lx6;->h:Ln6;

    invoke-virtual {v0}, Ln6;->c()V

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q(Ln6;)V
    .locals 1

    iget-object v0, p0, Lx6;->h:Ln6;

    iget-object v0, v0, Ln6;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Ln6;->l:Ljava/util/List;

    iget-object v0, p0, Lx6;->h:Ln6;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

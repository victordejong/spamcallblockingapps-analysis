.class public Lw/j;
.super Lw/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv/d;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lw/p;-><init>(Lv/d;)V

    .line 2
    iget-object v0, p1, Lv/d;->d:Lw/l;

    invoke-virtual {v0}, Lw/l;->f()V

    .line 3
    iget-object v0, p1, Lv/d;->e:Lw/n;

    invoke-virtual {v0}, Lw/n;->f()V

    .line 4
    check-cast p1, Lv/f;

    .line 5
    iget p1, p1, Lv/f;->v0:I

    .line 6
    iput p1, p0, Lw/p;->f:I

    return-void
.end method


# virtual methods
.method public a(Lw/d;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-boolean v0, p1, Lw/f;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p1, Lw/f;->j:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/f;

    .line 4
    iget-object v0, p0, Lw/p;->b:Lv/d;

    check-cast v0, Lv/f;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    iget p1, p1, Lw/f;->g:I

    int-to-float p1, p1

    .line 6
    iget v0, v0, Lv/f;->r0:F

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 7
    iget-object v0, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v0, p1}, Lw/f;->c(I)V

    return-void
.end method

.method public d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lw/p;->b:Lv/d;

    move-object v1, v0

    check-cast v1, Lv/f;

    .line 2
    iget v2, v1, Lv/f;->s0:I

    .line 3
    iget v3, v1, Lv/f;->t0:I

    .line 4
    iget v1, v1, Lv/f;->v0:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v1, v4, :cond_2

    if-eq v2, v5, :cond_0

    .line 5
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v1, v1, Lw/f;->l:Ljava/util/List;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iput v2, v0, Lw/f;->f:I

    goto :goto_0

    :cond_0
    if-eq v3, v5, :cond_1

    .line 8
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v1, v1, Lw/f;->l:Ljava/util/List;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lw/p;->h:Lw/f;

    neg-int v1, v3

    iput v1, v0, Lw/f;->f:I

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iput-boolean v4, v1, Lw/f;->b:Z

    .line 12
    iget-object v1, v1, Lw/f;->l:Ljava/util/List;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    invoke-virtual {p0, v0}, Lw/j;->m(Lw/f;)V

    .line 15
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    invoke-virtual {p0, v0}, Lw/j;->m(Lw/f;)V

    goto/16 :goto_2

    :cond_2
    if-eq v2, v5, :cond_3

    .line 16
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v1, v1, Lw/f;->l:Ljava/util/List;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iput v2, v0, Lw/f;->f:I

    goto :goto_1

    :cond_3
    if-eq v3, v5, :cond_4

    .line 19
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v1, v1, Lw/f;->l:Ljava/util/List;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lw/p;->h:Lw/f;

    neg-int v1, v3

    iput v1, v0, Lw/f;->f:I

    goto :goto_1

    .line 22
    :cond_4
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iput-boolean v4, v1, Lw/f;->b:Z

    .line 23
    iget-object v1, v1, Lw/f;->l:Ljava/util/List;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :goto_1
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    invoke-virtual {p0, v0}, Lw/j;->m(Lw/f;)V

    .line 26
    iget-object v0, p0, Lw/p;->b:Lv/d;

    iget-object v0, v0, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    invoke-virtual {p0, v0}, Lw/j;->m(Lw/f;)V

    :goto_2
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw/p;->b:Lv/d;

    move-object v1, v0

    check-cast v1, Lv/f;

    .line 2
    iget v1, v1, Lv/f;->v0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget v1, v1, Lw/f;->g:I

    .line 4
    iput v1, v0, Lv/d;->a0:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget v1, v1, Lw/f;->g:I

    .line 6
    iput v1, v0, Lv/d;->b0:I

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v0}, Lw/f;->b()V

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(Lw/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    iget-object v0, p0, Lw/p;->h:Lw/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

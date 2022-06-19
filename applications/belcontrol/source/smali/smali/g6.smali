.class public Lg6;
.super Le6;
.source ""


# instance fields
.field public M0:I

.field public N0:I

.field public O0:I

.field public P0:I

.field public Q0:I

.field public R0:I

.field public S0:Z

.field public T0:I

.field public U0:I

.field public V0:Lj6$a;

.field public W0:Lj6$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le6;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg6;->M0:I

    iput v0, p0, Lg6;->N0:I

    iput v0, p0, Lg6;->O0:I

    iput v0, p0, Lg6;->P0:I

    iput v0, p0, Lg6;->Q0:I

    iput v0, p0, Lg6;->R0:I

    iput-boolean v0, p0, Lg6;->S0:Z

    iput v0, p0, Lg6;->T0:I

    iput v0, p0, Lg6;->U0:I

    new-instance v0, Lj6$a;

    invoke-direct {v0}, Lj6$a;-><init>()V

    iput-object v0, p0, Lg6;->V0:Lj6$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lg6;->W0:Lj6$b;

    return-void
.end method


# virtual methods
.method public A1(I)V
    .locals 0

    iput p1, p0, Lg6;->M0:I

    return-void
.end method

.method public c(La6;)V
    .locals 0

    invoke-virtual {p0}, Lg6;->h1()V

    return-void
.end method

.method public g1(Z)V
    .locals 2

    iget v0, p0, Lg6;->O0:I

    if-gtz v0, :cond_0

    iget v1, p0, Lg6;->P0:I

    if-lez v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lg6;->P0:I

    iput p1, p0, Lg6;->Q0:I

    iput v0, p0, Lg6;->R0:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lg6;->Q0:I

    iget p1, p0, Lg6;->P0:I

    iput p1, p0, Lg6;->R0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public h1()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Le6;->L0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Le6;->K0:[Lz5;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lz5;->I0(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i1()I
    .locals 1

    iget v0, p0, Lg6;->U0:I

    return v0
.end method

.method public j1()I
    .locals 1

    iget v0, p0, Lg6;->T0:I

    return v0
.end method

.method public k1()I
    .locals 1

    iget v0, p0, Lg6;->N0:I

    return v0
.end method

.method public l1()I
    .locals 1

    iget v0, p0, Lg6;->Q0:I

    return v0
.end method

.method public m1()I
    .locals 1

    iget v0, p0, Lg6;->R0:I

    return v0
.end method

.method public n1()I
    .locals 1

    iget v0, p0, Lg6;->M0:I

    return v0
.end method

.method public o1(IIII)V
    .locals 0

    return-void
.end method

.method public p1(Lz5;Lz5$b;ILz5$b;I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lg6;->W0:Lj6$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz5;->L()Lz5;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz5;->L()Lz5;

    move-result-object v0

    check-cast v0, La6;

    invoke-virtual {v0}, La6;->w1()Lj6$b;

    move-result-object v0

    iput-object v0, p0, Lg6;->W0:Lj6$b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg6;->V0:Lj6$a;

    iput-object p2, v0, Lj6$a;->a:Lz5$b;

    iput-object p4, v0, Lj6$a;->b:Lz5$b;

    iput p3, v0, Lj6$a;->c:I

    iput p5, v0, Lj6$a;->d:I

    iget-object p2, p0, Lg6;->W0:Lj6$b;

    invoke-interface {p2, p1, v0}, Lj6$b;->b(Lz5;Lj6$a;)V

    iget-object p2, p0, Lg6;->V0:Lj6$a;

    iget p2, p2, Lj6$a;->e:I

    invoke-virtual {p1, p2}, Lz5;->Y0(I)V

    iget-object p2, p0, Lg6;->V0:Lj6$a;

    iget p2, p2, Lj6$a;->f:I

    invoke-virtual {p1, p2}, Lz5;->z0(I)V

    iget-object p2, p0, Lg6;->V0:Lj6$a;

    iget-boolean p2, p2, Lj6$a;->h:Z

    invoke-virtual {p1, p2}, Lz5;->y0(Z)V

    iget-object p2, p0, Lg6;->V0:Lj6$a;

    iget p2, p2, Lj6$a;->g:I

    invoke-virtual {p1, p2}, Lz5;->o0(I)V

    return-void
.end method

.method public q1()Z
    .locals 9

    iget-object v0, p0, Lz5;->T:Lz5;

    if-eqz v0, :cond_0

    check-cast v0, La6;

    invoke-virtual {v0}, La6;->w1()Lj6$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Le6;->L0:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Le6;->K0:[Lz5;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    instance-of v5, v3, Lc6;

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v1}, Lz5;->v(I)Lz5$b;

    move-result-object v5

    invoke-virtual {v3, v4}, Lz5;->v(I)Lz5$b;

    move-result-object v6

    sget-object v7, Lz5$b;->c:Lz5$b;

    if-ne v5, v7, :cond_4

    iget v8, v3, Lz5;->n:I

    if-eq v8, v4, :cond_4

    if-ne v6, v7, :cond_4

    iget v8, v3, Lz5;->o:I

    if-eq v8, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    if-ne v5, v7, :cond_6

    sget-object v5, Lz5$b;->b:Lz5$b;

    :cond_6
    if-ne v6, v7, :cond_7

    sget-object v6, Lz5$b;->b:Lz5$b;

    :cond_7
    iget-object v4, p0, Lg6;->V0:Lj6$a;

    iput-object v5, v4, Lj6$a;->a:Lz5$b;

    iput-object v6, v4, Lj6$a;->b:Lz5$b;

    invoke-virtual {v3}, Lz5;->U()I

    move-result v5

    iput v5, v4, Lj6$a;->c:I

    iget-object v4, p0, Lg6;->V0:Lj6$a;

    invoke-virtual {v3}, Lz5;->y()I

    move-result v5

    iput v5, v4, Lj6$a;->d:I

    iget-object v4, p0, Lg6;->V0:Lj6$a;

    invoke-interface {v0, v3, v4}, Lj6$b;->b(Lz5;Lj6$a;)V

    iget-object v4, p0, Lg6;->V0:Lj6$a;

    iget v4, v4, Lj6$a;->e:I

    invoke-virtual {v3, v4}, Lz5;->Y0(I)V

    iget-object v4, p0, Lg6;->V0:Lj6$a;

    iget v4, v4, Lj6$a;->f:I

    invoke-virtual {v3, v4}, Lz5;->z0(I)V

    iget-object v4, p0, Lg6;->V0:Lj6$a;

    iget v4, v4, Lj6$a;->g:I

    invoke-virtual {v3, v4}, Lz5;->o0(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return v4
.end method

.method public r1()Z
    .locals 1

    iget-boolean v0, p0, Lg6;->S0:Z

    return v0
.end method

.method public s1(Z)V
    .locals 0

    iput-boolean p1, p0, Lg6;->S0:Z

    return-void
.end method

.method public t1(II)V
    .locals 0

    iput p1, p0, Lg6;->T0:I

    iput p2, p0, Lg6;->U0:I

    return-void
.end method

.method public u1(I)V
    .locals 0

    iput p1, p0, Lg6;->M0:I

    iput p1, p0, Lg6;->N0:I

    iput p1, p0, Lg6;->O0:I

    iput p1, p0, Lg6;->P0:I

    return-void
.end method

.method public v1(I)V
    .locals 0

    iput p1, p0, Lg6;->N0:I

    return-void
.end method

.method public w1(I)V
    .locals 0

    iput p1, p0, Lg6;->P0:I

    return-void
.end method

.method public x1(I)V
    .locals 0

    iput p1, p0, Lg6;->Q0:I

    return-void
.end method

.method public y1(I)V
    .locals 0

    iput p1, p0, Lg6;->R0:I

    return-void
.end method

.method public z1(I)V
    .locals 0

    iput p1, p0, Lg6;->O0:I

    iput p1, p0, Lg6;->Q0:I

    iput p1, p0, Lg6;->R0:I

    return-void
.end method

.class public Lc6;
.super Lz5;
.source ""


# instance fields
.field public K0:F

.field public L0:I

.field public M0:I

.field public N0:Ly5;

.field public O0:I

.field public P0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lz5;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lc6;->K0:F

    const/4 v0, -0x1

    iput v0, p0, Lc6;->L0:I

    iput v0, p0, Lc6;->M0:I

    iget-object v0, p0, Lz5;->I:Ly5;

    iput-object v0, p0, Lc6;->N0:Ly5;

    const/4 v0, 0x0

    iput v0, p0, Lc6;->O0:I

    iget-object v1, p0, Lz5;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lz5;->Q:Ljava/util/ArrayList;

    iget-object v2, p0, Lc6;->N0:Ly5;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lz5;->P:[Ly5;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lz5;->P:[Ly5;

    iget-object v3, p0, Lc6;->N0:Ly5;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public d1(Lo5;Z)V
    .locals 2

    invoke-virtual {p0}, Lz5;->L()Lz5;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lc6;->N0:Ly5;

    invoke-virtual {p1, p2}, Lo5;->y(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lc6;->O0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lz5;->Z0(I)V

    invoke-virtual {p0, v1}, Lz5;->a1(I)V

    invoke-virtual {p0}, Lz5;->L()Lz5;

    move-result-object p1

    invoke-virtual {p1}, Lz5;->y()I

    move-result p1

    invoke-virtual {p0, p1}, Lz5;->z0(I)V

    invoke-virtual {p0, v1}, Lz5;->Y0(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lz5;->Z0(I)V

    invoke-virtual {p0, p1}, Lz5;->a1(I)V

    invoke-virtual {p0}, Lz5;->L()Lz5;

    move-result-object p1

    invoke-virtual {p1}, Lz5;->U()I

    move-result p1

    invoke-virtual {p0, p1}, Lz5;->Y0(I)V

    invoke-virtual {p0, v1}, Lz5;->z0(I)V

    :goto_0
    return-void
.end method

.method public e1()Ly5;
    .locals 1

    iget-object v0, p0, Lc6;->N0:Ly5;

    return-object v0
.end method

.method public f1()I
    .locals 1

    iget v0, p0, Lc6;->O0:I

    return v0
.end method

.method public g(Lo5;Z)V
    .locals 7

    invoke-virtual {p0}, Lz5;->L()Lz5;

    move-result-object p2

    check-cast p2, La6;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Ly5$b;->b:Ly5$b;

    invoke-virtual {p2, v0}, Lz5;->p(Ly5$b;)Ly5;

    move-result-object v0

    sget-object v1, Ly5$b;->d:Ly5$b;

    invoke-virtual {p2, v1}, Lz5;->p(Ly5$b;)Ly5;

    move-result-object v1

    iget-object v2, p0, Lz5;->T:Lz5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lz5;->S:[Lz5$b;

    aget-object v2, v2, v4

    sget-object v5, Lz5$b;->b:Lz5$b;

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v5, p0, Lc6;->O0:I

    if-nez v5, :cond_3

    sget-object v0, Ly5$b;->c:Ly5$b;

    invoke-virtual {p2, v0}, Lz5;->p(Ly5$b;)Ly5;

    move-result-object v0

    sget-object v1, Ly5$b;->f:Ly5$b;

    invoke-virtual {p2, v1}, Lz5;->p(Ly5$b;)Ly5;

    move-result-object v1

    iget-object p2, p0, Lz5;->T:Lz5;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lz5;->S:[Lz5$b;

    aget-object p2, p2, v3

    sget-object v2, Lz5$b;->b:Lz5$b;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    :cond_3
    iget-boolean p2, p0, Lc6;->P0:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lc6;->N0:Ly5;

    invoke-virtual {p2}, Ly5;->n()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lc6;->N0:Ly5;

    invoke-virtual {p1, p2}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object p2

    iget-object v6, p0, Lc6;->N0:Ly5;

    invoke-virtual {v6}, Ly5;->e()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lo5;->f(Lt5;I)V

    iget v6, p0, Lc6;->L0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lo5;->h(Lt5;Lt5;II)V

    goto :goto_2

    :cond_4
    iget v6, p0, Lc6;->M0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v1

    invoke-virtual {p1, v0}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lo5;->h(Lt5;Lt5;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Lo5;->h(Lt5;Lt5;II)V

    :cond_5
    :goto_2
    iput-boolean v4, p0, Lc6;->P0:Z

    return-void

    :cond_6
    iget p2, p0, Lc6;->L0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lc6;->N0:Ly5;

    invoke-virtual {p1, p2}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object p2

    invoke-virtual {p1, v0}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v0

    iget v3, p0, Lc6;->L0:I

    invoke-virtual {p1, p2, v0, v3, v6}, Lo5;->e(Lt5;Lt5;II)Lm5;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lo5;->h(Lt5;Lt5;II)V

    goto :goto_3

    :cond_7
    iget p2, p0, Lc6;->M0:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, Lc6;->N0:Ly5;

    invoke-virtual {p1, p2}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object p2

    invoke-virtual {p1, v1}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v1

    iget v3, p0, Lc6;->M0:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Lo5;->e(Lt5;Lt5;II)Lm5;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lo5;->h(Lt5;Lt5;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Lo5;->h(Lt5;Lt5;II)V

    goto :goto_3

    :cond_8
    iget p2, p0, Lc6;->K0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lc6;->N0:Ly5;

    invoke-virtual {p1, p2}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object p2

    invoke-virtual {p1, v1}, Lo5;->q(Ljava/lang/Object;)Lt5;

    move-result-object v0

    iget v1, p0, Lc6;->K0:F

    invoke-static {p1, p2, v0, v1}, Lo5;->s(Lo5;Lt5;Lt5;F)Lm5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo5;->d(Lm5;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public g1()I
    .locals 1

    iget v0, p0, Lc6;->L0:I

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h0()Z
    .locals 1

    iget-boolean v0, p0, Lc6;->P0:Z

    return v0
.end method

.method public h1()I
    .locals 1

    iget v0, p0, Lc6;->M0:I

    return v0
.end method

.method public i0()Z
    .locals 1

    iget-boolean v0, p0, Lc6;->P0:Z

    return v0
.end method

.method public i1()F
    .locals 1

    iget v0, p0, Lc6;->K0:F

    return v0
.end method

.method public j1(I)V
    .locals 1

    iget-object v0, p0, Lc6;->N0:Ly5;

    invoke-virtual {v0, p1}, Ly5;->t(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc6;->P0:Z

    return-void
.end method

.method public k1(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lc6;->K0:F

    iput p1, p0, Lc6;->L0:I

    iput v0, p0, Lc6;->M0:I

    :cond_0
    return-void
.end method

.method public l1(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lc6;->K0:F

    iput v0, p0, Lc6;->L0:I

    iput p1, p0, Lc6;->M0:I

    :cond_0
    return-void
.end method

.method public m(Lz5;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz5;",
            "Ljava/util/HashMap<",
            "Lz5;",
            "Lz5;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz5;->m(Lz5;Ljava/util/HashMap;)V

    check-cast p1, Lc6;

    iget p2, p1, Lc6;->K0:F

    iput p2, p0, Lc6;->K0:F

    iget p2, p1, Lc6;->L0:I

    iput p2, p0, Lc6;->L0:I

    iget p2, p1, Lc6;->M0:I

    iput p2, p0, Lc6;->M0:I

    iget p1, p1, Lc6;->O0:I

    invoke-virtual {p0, p1}, Lc6;->n1(I)V

    return-void
.end method

.method public m1(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lc6;->K0:F

    const/4 p1, -0x1

    iput p1, p0, Lc6;->L0:I

    iput p1, p0, Lc6;->M0:I

    :cond_0
    return-void
.end method

.method public n1(I)V
    .locals 3

    iget v0, p0, Lc6;->O0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lc6;->O0:I

    iget-object p1, p0, Lz5;->Q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lc6;->O0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lz5;->H:Ly5;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz5;->I:Ly5;

    :goto_0
    iput-object p1, p0, Lc6;->N0:Ly5;

    iget-object p1, p0, Lz5;->Q:Ljava/util/ArrayList;

    iget-object v0, p0, Lc6;->N0:Ly5;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz5;->P:[Ly5;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lz5;->P:[Ly5;

    iget-object v2, p0, Lc6;->N0:Ly5;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public p(Ly5$b;)Ly5;
    .locals 2

    sget-object v0, Lc6$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget v0, p0, Lc6;->O0:I

    if-nez v0, :cond_0

    iget-object p1, p0, Lc6;->N0:Ly5;

    return-object p1

    :pswitch_2
    iget v0, p0, Lc6;->O0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lc6;->N0:Ly5;

    return-object p1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

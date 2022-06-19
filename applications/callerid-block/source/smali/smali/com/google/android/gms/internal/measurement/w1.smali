.class public final Lcom/google/android/gms/internal/measurement/w1;
.super Lcom/google/android/gms/internal/measurement/n5;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n5<",
        "Lcom/google/android/gms/internal/measurement/x1;",
        "Lcom/google/android/gms/internal/measurement/w1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/r6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x1;->L0()Lcom/google/android/gms/internal/measurement/x1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x1;->L0()Lcom/google/android/gms/internal/measurement/x1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->k0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final A0(ILcom/google/android/gms/internal/measurement/g2;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->S0(Lcom/google/android/gms/internal/measurement/x1;ILcom/google/android/gms/internal/measurement/g2;)V

    return-object p0
.end method

.method public final B0(Lcom/google/android/gms/internal/measurement/g2;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->T0(Lcom/google/android/gms/internal/measurement/x1;Lcom/google/android/gms/internal/measurement/g2;)V

    return-object p0
.end method

.method public final C0(Lcom/google/android/gms/internal/measurement/f2;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/g2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->T0(Lcom/google/android/gms/internal/measurement/x1;Lcom/google/android/gms/internal/measurement/g2;)V

    return-object p0
.end method

.method public final D(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->l0(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final D0(I)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->U0(Lcom/google/android/gms/internal/measurement/x1;I)V

    return-object p0
.end method

.method public final E(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/x1;

    const-wide/32 v0, 0x9899

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/x1;->m0(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final E0(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->V0(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final F0()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->z1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->n0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final G0(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->W0(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final H()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->o0(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final H0()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->B1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final I(Z)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->p0(Lcom/google/android/gms/internal/measurement/x1;Z)V

    return-object p0
.end method

.method public final I0(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->X0(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final J()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->q0(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final J0(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->Y0(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final K0()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->Z0(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final L(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->r0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final L0(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->a0(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final M()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->s0(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final M0()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->b0(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final N(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->t0(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final P(I)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->u0(Lcom/google/android/gms/internal/measurement/x1;I)V

    return-object p0
.end method

.method public final Q(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->v0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final R()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->w0(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final S()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final T(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->x0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final V(Z)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->y0(Lcom/google/android/gms/internal/measurement/x1;Z)V

    return-object p0
.end method

.method public final W(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/k1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/w1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->z0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final X()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->A0(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final Y(I)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/x1;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/x1;->M0(Lcom/google/android/gms/internal/measurement/x1;I)V

    return-object p0
.end method

.method public final Z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->d1(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a0(I)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->e1(Lcom/google/android/gms/internal/measurement/x1;I)V

    return-object p0
.end method

.method public final b0()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->f1(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final c0(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->g1(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final d0(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->h1(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final e0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/x1;

    sget p1, Lcom/google/android/gms/internal/measurement/x1;->zza:I

    const/4 p1, 0x0

    throw p1
.end method

.method public final f0()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->i1(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final g0(I)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->j1(Lcom/google/android/gms/internal/measurement/x1;I)V

    return-object p0
.end method

.method public final i0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->k1(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final j0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/w1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->l1(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final k0(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->m1(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final l0(J)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->n1(Lcom/google/android/gms/internal/measurement/x1;J)V

    return-object p0
.end method

.method public final m0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->H0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->o1(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->p1(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/p1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->q1()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final q0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->r1()I

    move-result v0

    return v0
.end method

.method public final r(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/x1;

    const-string v0, "android"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/x1;->c0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r0(I)Lcom/google/android/gms/internal/measurement/p1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->s1(I)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->d0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s0(ILcom/google/android/gms/internal/measurement/o1;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/p1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x1;->N0(Lcom/google/android/gms/internal/measurement/x1;ILcom/google/android/gms/internal/measurement/p1;)V

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->e0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t0(Lcom/google/android/gms/internal/measurement/o1;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->O0(Lcom/google/android/gms/internal/measurement/x1;Lcom/google/android/gms/internal/measurement/p1;)V

    return-object p0
.end method

.method public final u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->f0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/p1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/w1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->P0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final v(I)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->g0(Lcom/google/android/gms/internal/measurement/x1;I)V

    return-object p0
.end method

.method public final v0()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x1;->Q0(Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method

.method public final w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->i0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w0(I)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->R0(Lcom/google/android/gms/internal/measurement/x1;I)V

    return-object p0
.end method

.method public final x0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/g2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->t1()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x1;->u1()I

    move-result v0

    return v0
.end method

.method public final z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->j0(Lcom/google/android/gms/internal/measurement/x1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z0(I)Lcom/google/android/gms/internal/measurement/g2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;->v1(I)Lcom/google/android/gms/internal/measurement/g2;

    move-result-object p1

    return-object p1
.end method

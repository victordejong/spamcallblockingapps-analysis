.class public final Lcom/google/android/gms/internal/measurement/z1;
.super Lcom/google/android/gms/internal/measurement/u5;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/u5<",
        "Lcom/google/android/gms/internal/measurement/a2;",
        "Lcom/google/android/gms/internal/measurement/z1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/z6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/a2;->L0()Lcom/google/android/gms/internal/measurement/a2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/u5;-><init>(Lcom/google/android/gms/internal/measurement/x5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/j1;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/a2;->L0()Lcom/google/android/gms/internal/measurement/a2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u5;-><init>(Lcom/google/android/gms/internal/measurement/x5;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->i0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final A0(Lcom/google/android/gms/internal/measurement/j2;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/k2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->T0(Lcom/google/android/gms/internal/measurement/a2;Lcom/google/android/gms/internal/measurement/k2;)V

    return-object p0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/k2;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/z1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->U0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final C(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->j0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final C0(I)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->V0(Lcom/google/android/gms/internal/measurement/a2;I)V

    return-object p0
.end method

.method public final D(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->k0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D0(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->W0(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final E(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->l0(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final E0()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a2;->B1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final F(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/a2;

    const-wide/32 v0, 0x9899

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/a2;->m0(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final F0(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->X0(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->n0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final G0()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a2;->D1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final H()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->o0(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final H0(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->Y0(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final I(Z)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->p0(Lcom/google/android/gms/internal/measurement/a2;Z)V

    return-object p0
.end method

.method public final I0(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->Z0(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final J()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->q0(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final J0()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->a1(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final K(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->r0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final K0(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->b0(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final L()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->s0(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final L0()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->c0(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final M(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->t0(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final N(I)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->u0(Lcom/google/android/gms/internal/measurement/a2;I)V

    return-object p0
.end method

.method public final O(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->v0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final Q()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->w0(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a2;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final S(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->x0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final T(Z)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->y0(Lcom/google/android/gms/internal/measurement/a2;Z)V

    return-object p0
.end method

.method public final U(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/n1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/z1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->z0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final V()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->A0(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final W(I)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/a2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/a2;->M0(Lcom/google/android/gms/internal/measurement/a2;I)V

    return-object p0
.end method

.method public final X(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->e1(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final Y(I)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->f1(Lcom/google/android/gms/internal/measurement/a2;I)V

    return-object p0
.end method

.method public final Z()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->g1(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final a0(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->h1(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final b0(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->i1(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final c0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/measurement/a2;

    sget p1, Lcom/google/android/gms/internal/measurement/a2;->zza:I

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final d0()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->j1(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final e0(I)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->k1(Lcom/google/android/gms/internal/measurement/a2;I)V

    return-object p0
.end method

.method public final f0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->l1(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g0(Lcom/google/android/gms/internal/measurement/b2;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/e2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->m1(Lcom/google/android/gms/internal/measurement/a2;Lcom/google/android/gms/internal/measurement/e2;)V

    return-object p0
.end method

.method public final h0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/z1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->n1(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final i0(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->o1(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final j0(J)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->p1(Lcom/google/android/gms/internal/measurement/a2;J)V

    return-object p0
.end method

.method public final k0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a2;->H0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->q1(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->r1(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/s1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a2;->s1()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final o0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a2;->t1()I

    move-result v0

    return v0
.end method

.method public final p0(I)Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->u1(I)Lcom/google/android/gms/internal/measurement/s1;

    move-result-object p1

    return-object p1
.end method

.method public final q0(ILcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/s1;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->N0(Lcom/google/android/gms/internal/measurement/a2;ILcom/google/android/gms/internal/measurement/s1;)V

    return-object p0
.end method

.method public final r0(Lcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->O0(Lcom/google/android/gms/internal/measurement/a2;Lcom/google/android/gms/internal/measurement/s1;)V

    return-object p0
.end method

.method public final s0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/s1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/z1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->P0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/a2;

    const-string v0, "android"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/a2;->d0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t0()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a2;->Q0(Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method

.method public final u0(I)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->R0(Lcom/google/android/gms/internal/measurement/a2;I)V

    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->e0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/k2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a2;->v1()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->f0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a2;->w1()I

    move-result v0

    return v0
.end method

.method public final x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->g0(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x0(I)Lcom/google/android/gms/internal/measurement/k2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->x1(I)Lcom/google/android/gms/internal/measurement/k2;

    move-result-object p1

    return-object p1
.end method

.method public final y(I)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->h0(Lcom/google/android/gms/internal/measurement/a2;I)V

    return-object p0
.end method

.method public final y0(ILcom/google/android/gms/internal/measurement/k2;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a2;->S0(Lcom/google/android/gms/internal/measurement/a2;ILcom/google/android/gms/internal/measurement/k2;)V

    return-object p0
.end method

.method public final z0(Lcom/google/android/gms/internal/measurement/k2;)Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a2;->T0(Lcom/google/android/gms/internal/measurement/a2;Lcom/google/android/gms/internal/measurement/k2;)V

    return-object p0
.end method

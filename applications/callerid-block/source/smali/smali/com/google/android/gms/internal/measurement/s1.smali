.class public final Lcom/google/android/gms/internal/measurement/s1;
.super Lcom/google/android/gms/internal/measurement/n5;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n5<",
        "Lcom/google/android/gms/internal/measurement/t1;",
        "Lcom/google/android/gms/internal/measurement/s1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/r6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t1;->K()Lcom/google/android/gms/internal/measurement/t1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t1;->K()Lcom/google/android/gms/internal/measurement/t1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/internal/measurement/s1;)Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->T(Lcom/google/android/gms/internal/measurement/t1;Lcom/google/android/gms/internal/measurement/t1;)V

    return-object p0
.end method

.method public final D(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/t1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/s1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->V(Lcom/google/android/gms/internal/measurement/t1;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final E()Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/t1;->W(Lcom/google/android/gms/internal/measurement/t1;)V

    return-object p0
.end method

.method public final r(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->L(Lcom/google/android/gms/internal/measurement/t1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/t1;->M(Lcom/google/android/gms/internal/measurement/t1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t()Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/t1;->N(Lcom/google/android/gms/internal/measurement/t1;)V

    return-object p0
.end method

.method public final u(J)Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t1;->P(Lcom/google/android/gms/internal/measurement/t1;J)V

    return-object p0
.end method

.method public final v()Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/t1;->Q(Lcom/google/android/gms/internal/measurement/t1;)V

    return-object p0
.end method

.method public final w(D)Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t1;->R(Lcom/google/android/gms/internal/measurement/t1;D)V

    return-object p0
.end method

.method public final y()Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/t1;->S(Lcom/google/android/gms/internal/measurement/t1;)V

    return-object p0
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t1;->I()I

    move-result v0

    return v0
.end method

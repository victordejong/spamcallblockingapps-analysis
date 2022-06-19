.class public final Lcom/google/android/gms/internal/measurement/f2;
.super Lcom/google/android/gms/internal/measurement/n5;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n5<",
        "Lcom/google/android/gms/internal/measurement/g2;",
        "Lcom/google/android/gms/internal/measurement/f2;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/r6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/g2;->H()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/g2;->H()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method


# virtual methods
.method public final r(J)Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/g2;->I(Lcom/google/android/gms/internal/measurement/g2;J)V

    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/g2;->J(Lcom/google/android/gms/internal/measurement/g2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/g2;->K(Lcom/google/android/gms/internal/measurement/g2;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u()Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/g2;->L(Lcom/google/android/gms/internal/measurement/g2;)V

    return-object p0
.end method

.method public final v(J)Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/g2;->M(Lcom/google/android/gms/internal/measurement/g2;J)V

    return-object p0
.end method

.method public final w()Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/g2;->N(Lcom/google/android/gms/internal/measurement/g2;)V

    return-object p0
.end method

.method public final y(D)Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/g2;->P(Lcom/google/android/gms/internal/measurement/g2;D)V

    return-object p0
.end method

.method public final z()Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/g2;->Q(Lcom/google/android/gms/internal/measurement/g2;)V

    return-object p0
.end method

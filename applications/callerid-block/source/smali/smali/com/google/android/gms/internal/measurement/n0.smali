.class public final Lcom/google/android/gms/internal/measurement/n0;
.super Lcom/google/android/gms/internal/measurement/n5;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n5<",
        "Lcom/google/android/gms/internal/measurement/o0;",
        "Lcom/google/android/gms/internal/measurement/n0;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/r6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/o0;->K()Lcom/google/android/gms/internal/measurement/o0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/k0;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/o0;->K()Lcom/google/android/gms/internal/measurement/o0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method


# virtual methods
.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/o0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/o0;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n0;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/o0;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/o0;->L(Lcom/google/android/gms/internal/measurement/o0;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/o0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/o0;->z()I

    move-result v0

    return v0
.end method

.method public final u(I)Lcom/google/android/gms/internal/measurement/q0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/o0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o0;->A(I)Lcom/google/android/gms/internal/measurement/q0;

    move-result-object p1

    return-object p1
.end method

.method public final v(ILcom/google/android/gms/internal/measurement/q0;)Lcom/google/android/gms/internal/measurement/n0;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/o0;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/o0;->M(Lcom/google/android/gms/internal/measurement/o0;ILcom/google/android/gms/internal/measurement/q0;)V

    return-object p0
.end method

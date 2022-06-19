.class public final Lcom/google/android/gms/internal/measurement/d1;
.super Lcom/google/android/gms/internal/measurement/n5;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n5<",
        "Lcom/google/android/gms/internal/measurement/e1;",
        "Lcom/google/android/gms/internal/measurement/d1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/r6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e1;->I()Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/a1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e1;->I()Lcom/google/android/gms/internal/measurement/e1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method


# virtual methods
.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/e1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e1;->A()I

    move-result v0

    return v0
.end method

.method public final s(I)Lcom/google/android/gms/internal/measurement/c1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/e1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e1;->C(I)Lcom/google/android/gms/internal/measurement/c1;

    move-result-object p1

    return-object p1
.end method

.method public final t(ILcom/google/android/gms/internal/measurement/b1;)Lcom/google/android/gms/internal/measurement/d1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/e1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/c1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/e1;->J(Lcom/google/android/gms/internal/measurement/e1;ILcom/google/android/gms/internal/measurement/c1;)V

    return-object p0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/m0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/e1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e1;->D()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/internal/measurement/d1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/e1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/e1;->K(Lcom/google/android/gms/internal/measurement/e1;)V

    return-object p0
.end method

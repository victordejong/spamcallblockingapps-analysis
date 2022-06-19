.class public final Lcom/google/android/gms/internal/measurement/r1;
.super Lcom/google/android/gms/internal/measurement/u5;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/u5<",
        "Lcom/google/android/gms/internal/measurement/s1;",
        "Lcom/google/android/gms/internal/measurement/r1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/z6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s1;->L()Lcom/google/android/gms/internal/measurement/s1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/u5;-><init>(Lcom/google/android/gms/internal/measurement/x5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/j1;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s1;->L()Lcom/google/android/gms/internal/measurement/s1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u5;-><init>(Lcom/google/android/gms/internal/measurement/x5;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/r1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/s1;->N(Lcom/google/android/gms/internal/measurement/s1;Lcom/google/android/gms/internal/measurement/w1;)V

    return-object p0
.end method

.method public final B(Lcom/google/android/gms/internal/measurement/v1;)Lcom/google/android/gms/internal/measurement/r1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/w1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/s1;->N(Lcom/google/android/gms/internal/measurement/s1;Lcom/google/android/gms/internal/measurement/w1;)V

    return-object p0
.end method

.method public final C(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/w1;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/r1;"
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/s1;->O(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final D()Lcom/google/android/gms/internal/measurement/r1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/s1;->P(Lcom/google/android/gms/internal/measurement/s1;)V

    return-object p0
.end method

.method public final E(I)Lcom/google/android/gms/internal/measurement/r1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/s1;->Q(Lcom/google/android/gms/internal/measurement/s1;I)V

    return-object p0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s1;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/s1;->R(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final H()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s1;->E()Z

    move-result v0

    return v0
.end method

.method public final I()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s1;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public final J(J)Lcom/google/android/gms/internal/measurement/r1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/s1;->S(Lcom/google/android/gms/internal/measurement/s1;J)V

    return-object p0
.end method

.method public final K()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s1;->H()J

    move-result-wide v0

    return-wide v0
.end method

.method public final L(J)Lcom/google/android/gms/internal/measurement/r1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/s1;->T(Lcom/google/android/gms/internal/measurement/s1;J)V

    return-object p0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/w1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s1;->A()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s1;->B()I

    move-result v0

    return v0
.end method

.method public final w(I)Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/s1;->C(I)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object p1

    return-object p1
.end method

.method public final x(ILcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/r1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/s1;->M(Lcom/google/android/gms/internal/measurement/s1;ILcom/google/android/gms/internal/measurement/w1;)V

    return-object p0
.end method

.method public final y(ILcom/google/android/gms/internal/measurement/v1;)Lcom/google/android/gms/internal/measurement/r1;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/w1;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/s1;->M(Lcom/google/android/gms/internal/measurement/s1;ILcom/google/android/gms/internal/measurement/w1;)V

    return-object p0
.end method

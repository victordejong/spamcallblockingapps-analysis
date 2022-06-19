.class public final Lcom/google/android/gms/internal/ads/ih3;
.super Lcom/google/android/gms/internal/ads/ee3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ee3<",
        "Lcom/google/android/gms/internal/ads/hi3;",
        "Lcom/google/android/gms/internal/ads/ih3;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/hi3;->G()Lcom/google/android/gms/internal/ads/hi3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ee3;-><init>(Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/gh3;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/hi3;->G()Lcom/google/android/gms/internal/ads/hi3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ee3;-><init>(Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/ads/ih3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hi3;->O(Lcom/google/android/gms/internal/ads/hi3;)V

    return-object p0
.end method

.method public final B(Lcom/google/android/gms/internal/ads/xh3;)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->Q(Lcom/google/android/gms/internal/ads/hi3;Lcom/google/android/gms/internal/ads/xh3;)V

    return-object p0
.end method

.method public final C(Lcom/google/android/gms/internal/ads/gi3;)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->R(Lcom/google/android/gms/internal/ads/hi3;Lcom/google/android/gms/internal/ads/gi3;)V

    return-object p0
.end method

.method public final D(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/ih3;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->S(Lcom/google/android/gms/internal/ads/hi3;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final E(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/ih3;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->T(Lcom/google/android/gms/internal/ads/hi3;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final F(I)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->U(Lcom/google/android/gms/internal/ads/hi3;I)V

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hi3;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->H(Lcom/google/android/gms/internal/ads/hi3;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->I(Lcom/google/android/gms/internal/ads/hi3;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(Lcom/google/android/gms/internal/ads/kh3;)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->J(Lcom/google/android/gms/internal/ads/hi3;Lcom/google/android/gms/internal/ads/kh3;)V

    return-object p0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ei3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hi3;->D()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final w(Lcom/google/android/gms/internal/ads/ei3;)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->L(Lcom/google/android/gms/internal/ads/hi3;Lcom/google/android/gms/internal/ads/ei3;)V

    return-object p0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hi3;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ih3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ee3;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee3;->e:Lcom/google/android/gms/internal/ads/ie3;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/hi3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hi3;->M(Lcom/google/android/gms/internal/ads/hi3;Ljava/lang/String;)V

    return-object p0
.end method

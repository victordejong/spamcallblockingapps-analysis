.class final Lcom/google/android/gms/internal/ads/u12;
.super Lcom/google/android/gms/internal/ads/r02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/r02<",
        "Lcom/google/android/gms/internal/ads/s42;",
        "Lcom/google/android/gms/internal/ads/p42;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/v12;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/r02;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/s42;

    new-instance v0, Lcom/google/android/gms/internal/ads/y12;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/y12;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u02;->i()Lcom/google/android/gms/internal/ads/r02;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s42;->E()Lcom/google/android/gms/internal/ads/z42;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/x12;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/x12;->e(Lcom/google/android/gms/internal/ads/z42;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/y32;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/y32;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u02;->i()Lcom/google/android/gms/internal/ads/r02;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s42;->F()Lcom/google/android/gms/internal/ads/j72;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/r02;->b(Lcom/google/android/gms/internal/ads/qd2;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s42;->E()Lcom/google/android/gms/internal/ads/z42;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z42;->F()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ra2;->a(I)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/s42;->G(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/s42;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/qd2;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/s42;

    new-instance v0, Lcom/google/android/gms/internal/ads/y12;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/y12;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s42;->E()Lcom/google/android/gms/internal/ads/z42;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x12;->f(Lcom/google/android/gms/internal/ads/z42;)Lcom/google/android/gms/internal/ads/v42;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/y32;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/y32;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u02;->i()Lcom/google/android/gms/internal/ads/r02;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s42;->F()Lcom/google/android/gms/internal/ads/j72;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/r02;->d(Lcom/google/android/gms/internal/ads/qd2;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/p42;->I()Lcom/google/android/gms/internal/ads/o42;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/o42;->r(Lcom/google/android/gms/internal/ads/v42;)Lcom/google/android/gms/internal/ads/o42;

    check-cast p1, Lcom/google/android/gms/internal/ads/g72;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/o42;->s(Lcom/google/android/gms/internal/ads/g72;)Lcom/google/android/gms/internal/ads/o42;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/o42;->q(I)Lcom/google/android/gms/internal/ads/o42;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/p42;

    return-object p1
.end method

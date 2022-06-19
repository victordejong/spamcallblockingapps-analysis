.class final Lcom/google/android/gms/internal/ads/t32;
.super Lcom/google/android/gms/internal/ads/r02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/r02<",
        "Lcom/google/android/gms/internal/ads/j42;",
        "Lcom/google/android/gms/internal/ads/g42;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/u32;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/r02;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/j42;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j42;->F()Lcom/google/android/gms/internal/ads/m42;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/u32;->j(Lcom/google/android/gms/internal/ads/m42;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j42;->E()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/u32;->k(I)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/j42;->G(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/j42;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/qd2;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/j42;

    invoke-static {}, Lcom/google/android/gms/internal/ads/g42;->I()Lcom/google/android/gms/internal/ads/f42;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f42;->q(I)Lcom/google/android/gms/internal/ads/f42;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j42;->E()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/pa2;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzesf;->zzs([B)Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f42;->r(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/f42;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j42;->F()Lcom/google/android/gms/internal/ads/m42;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/f42;->s(Lcom/google/android/gms/internal/ads/m42;)Lcom/google/android/gms/internal/ads/f42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g42;

    return-object p1
.end method

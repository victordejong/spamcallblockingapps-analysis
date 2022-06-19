.class final Lcom/google/android/gms/internal/ads/x12;
.super Lcom/google/android/gms/internal/ads/r02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/r02<",
        "Lcom/google/android/gms/internal/ads/z42;",
        "Lcom/google/android/gms/internal/ads/v42;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/y12;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/y12;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x12;->b:Lcom/google/android/gms/internal/ads/y12;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/r02;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static final f(Lcom/google/android/gms/internal/ads/z42;)Lcom/google/android/gms/internal/ads/v42;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/v42;->I()Lcom/google/android/gms/internal/ads/u42;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z42;->E()Lcom/google/android/gms/internal/ads/c52;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/u42;->r(Lcom/google/android/gms/internal/ads/c52;)Lcom/google/android/gms/internal/ads/u42;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z42;->F()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/pa2;->a(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzesf;->zzs([B)Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/u42;->s(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/u42;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/u42;->q(I)Lcom/google/android/gms/internal/ads/u42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/v42;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/z42;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x12;->e(Lcom/google/android/gms/internal/ads/z42;)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/z42;->G(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/z42;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/qd2;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/z42;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/x12;->f(Lcom/google/android/gms/internal/ads/z42;)Lcom/google/android/gms/internal/ads/v42;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/z42;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z42;->F()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ra2;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x12;->b:Lcom/google/android/gms/internal/ads/y12;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z42;->E()Lcom/google/android/gms/internal/ads/c52;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/y12;->j(Lcom/google/android/gms/internal/ads/y12;Lcom/google/android/gms/internal/ads/c52;)V

    return-void
.end method

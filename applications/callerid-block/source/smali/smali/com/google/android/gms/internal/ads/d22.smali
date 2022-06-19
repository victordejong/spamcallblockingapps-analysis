.class final Lcom/google/android/gms/internal/ads/d22;
.super Lcom/google/android/gms/internal/ads/r02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/r02<",
        "Lcom/google/android/gms/internal/ads/r52;",
        "Lcom/google/android/gms/internal/ads/o52;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e22;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/r02;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/r52;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r52;->E()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ra2;->a(I)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/r52;->F(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/r52;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/qd2;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/r52;

    invoke-static {}, Lcom/google/android/gms/internal/ads/o52;->H()Lcom/google/android/gms/internal/ads/n52;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r52;->E()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pa2;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzesf;->zzs([B)Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/n52;->r(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/n52;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/n52;->q(I)Lcom/google/android/gms/internal/ads/n52;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/o52;

    return-object p1
.end method

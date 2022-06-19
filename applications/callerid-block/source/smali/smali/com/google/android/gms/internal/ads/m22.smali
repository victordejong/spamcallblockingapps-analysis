.class final Lcom/google/android/gms/internal/ads/m22;
.super Lcom/google/android/gms/internal/ads/r02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/r02<",
        "Lcom/google/android/gms/internal/ads/m82;",
        "Lcom/google/android/gms/internal/ads/j82;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/n22;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/r02;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/m82;

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/m82;->F(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/m82;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/qd2;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/m82;

    invoke-static {}, Lcom/google/android/gms/internal/ads/j82;->H()Lcom/google/android/gms/internal/ads/i82;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/i82;->r(Lcom/google/android/gms/internal/ads/m82;)Lcom/google/android/gms/internal/ads/i82;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/i82;->q(I)Lcom/google/android/gms/internal/ads/i82;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/j82;

    return-object p1
.end method

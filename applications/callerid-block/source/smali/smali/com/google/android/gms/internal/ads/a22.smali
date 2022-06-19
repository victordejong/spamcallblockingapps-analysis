.class final Lcom/google/android/gms/internal/ads/a22;
.super Lcom/google/android/gms/internal/ads/r02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/r02<",
        "Lcom/google/android/gms/internal/ads/i52;",
        "Lcom/google/android/gms/internal/ads/f52;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/b22;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/r02;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/qd2;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/i52;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i52;->F()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ra2;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i52;->E()Lcom/google/android/gms/internal/ads/l52;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l52;->E()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i52;->E()Lcom/google/android/gms/internal/ads/l52;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/l52;->E()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/qd2;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bc2;->a()Lcom/google/android/gms/internal/ads/bc2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/i52;->G(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/i52;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/qd2;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/i52;

    invoke-static {}, Lcom/google/android/gms/internal/ads/f52;->I()Lcom/google/android/gms/internal/ads/e52;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i52;->F()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/pa2;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzesf;->zzs([B)Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/e52;->s(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/e52;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i52;->E()Lcom/google/android/gms/internal/ads/l52;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/e52;->r(Lcom/google/android/gms/internal/ads/l52;)Lcom/google/android/gms/internal/ads/e52;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/e52;->q(I)Lcom/google/android/gms/internal/ads/e52;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/f52;

    return-object p1
.end method

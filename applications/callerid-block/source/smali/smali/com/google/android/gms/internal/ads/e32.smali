.class final Lcom/google/android/gms/internal/ads/e32;
.super Lcom/google/android/gms/internal/ads/t02;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/t02<",
        "Lcom/google/android/gms/internal/ads/m02;",
        "Lcom/google/android/gms/internal/ads/x62;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/t02;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/google/android/gms/internal/ads/x62;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x62;->F()Lcom/google/android/gms/internal/ads/a72;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a72;->F()Lcom/google/android/gms/internal/ads/t62;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t62;->E()Lcom/google/android/gms/internal/ads/d72;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/d72;->E()Lcom/google/android/gms/internal/ads/zzeni;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/p32;->c(Lcom/google/android/gms/internal/ads/zzeni;)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x62;->G()Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzesf;->zzy()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/x92;->d(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/z92;->i:Lcom/google/android/gms/internal/ads/z92;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/z92;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/ads/q32;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t62;->F()Lcom/google/android/gms/internal/ads/n62;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n62;->E()Lcom/google/android/gms/internal/ads/t72;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/q32;-><init>(Lcom/google/android/gms/internal/ads/t72;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/t92;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/d72;->G()Lcom/google/android/gms/internal/ads/zzesf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzesf;->zzy()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/d72;->F()Lcom/google/android/gms/internal/ads/zzenk;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/p32;->b(Lcom/google/android/gms/internal/ads/zzenk;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t62;->G()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p32;->d(Lcom/google/android/gms/internal/ads/zzemo;)I

    move-result v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/t92;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;ILcom/google/android/gms/internal/ads/s92;)V

    return-object p1
.end method

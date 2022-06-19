.class final Lcom/google/android/gms/internal/ads/dff;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw<",
        "Lcom/google/android/gms/internal/ads/dcq;",
        "Lcom/google/android/gms/internal/ads/dhr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dcw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dhr;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhr;->a()Lcom/google/android/gms/internal/ads/dhn;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dhn;->a()Lcom/google/android/gms/internal/ads/dhu;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dhu;->a()Lcom/google/android/gms/internal/ads/dhv;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dfj;->a(Lcom/google/android/gms/internal/ads/dhv;)Lcom/google/android/gms/internal/ads/dkd;

    move-result-object v2

    .line 1012
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dhr;->zziiv:Lcom/google/android/gms/internal/ads/dlw;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v3

    .line 1016
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dhr;->zziiw:Lcom/google/android/gms/internal/ads/dlw;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object p1

    .line 1039
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dkb;->a(Lcom/google/android/gms/internal/ads/dkd;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 1040
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1041
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1042
    new-instance p1, Ljava/security/spec/ECPoint;

    invoke-direct {p1, v4, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1043
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/dkb;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 1044
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, p1, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 1045
    sget-object p1, Lcom/google/android/gms/internal/ads/dkj;->e:Lcom/google/android/gms/internal/ads/dkj;

    const-string v2, "EC"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/dkj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/KeyFactory;

    .line 1046
    invoke-virtual {p1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .line 10
    new-instance v7, Lcom/google/android/gms/internal/ads/dfl;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dhn;->b()Lcom/google/android/gms/internal/ads/dhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhi;->a()Lcom/google/android/gms/internal/ads/dik;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/dfl;-><init>(Lcom/google/android/gms/internal/ads/dik;)V

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/djx;

    .line 2008
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dhu;->zzija:Lcom/google/android/gms/internal/ads/dlw;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v4

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dhu;->b()Lcom/google/android/gms/internal/ads/dhw;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dfj;->a(Lcom/google/android/gms/internal/ads/dhw;)Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dhn;->c()Lcom/google/android/gms/internal/ads/dhh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dfj;->a(Lcom/google/android/gms/internal/ads/dhh;)Lcom/google/android/gms/internal/ads/dkh;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/djx;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/dkh;Lcom/google/android/gms/internal/ads/djv;)V

    return-object p1
.end method

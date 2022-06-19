.class final Lcom/google/android/gms/internal/ads/dfd;
.super Lcom/google/android/gms/internal/ads/dcx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcx<",
        "Lcom/google/android/gms/internal/ads/dhm;",
        "Lcom/google/android/gms/internal/ads/dhq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/internal/ads/dfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dfa;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfd;->b:Lcom/google/android/gms/internal/ads/dfa;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dcx;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dhm;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dhm;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/ads/dhm;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhm;->a()Lcom/google/android/gms/internal/ads/dhn;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dfj;->a(Lcom/google/android/gms/internal/ads/dhn;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/dot;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dhm;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhm;->a()Lcom/google/android/gms/internal/ads/dhn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dhn;->a()Lcom/google/android/gms/internal/ads/dhu;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dhu;->a()Lcom/google/android/gms/internal/ads/dhv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dfj;->a(Lcom/google/android/gms/internal/ads/dhv;)Lcom/google/android/gms/internal/ads/dkd;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dkb;->a(Lcom/google/android/gms/internal/ads/dkd;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dkb;->a(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 8
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 9
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dhr;->b()Lcom/google/android/gms/internal/ads/dhr$a;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dhr$a;->a()Lcom/google/android/gms/internal/ads/dhr$a;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhm;->a()Lcom/google/android/gms/internal/ads/dhn;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/dhr$a;->a(Lcom/google/android/gms/internal/ads/dhn;)Lcom/google/android/gms/internal/ads/dhr$a;

    move-result-object p1

    .line 13
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/dhr$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dhr$a;

    move-result-object p1

    .line 14
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/dhr$a;->b(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dhr$a;

    move-result-object p1

    .line 1067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dhr;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/dhq;->b()Lcom/google/android/gms/internal/ads/dhq$a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dhq$a;->a()Lcom/google/android/gms/internal/ads/dhq$a;

    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dhq$a;->a(Lcom/google/android/gms/internal/ads/dhr;)Lcom/google/android/gms/internal/ads/dhq$a;

    move-result-object p1

    .line 19
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dhq$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dhq$a;

    move-result-object p1

    .line 2067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dhq;

    return-object p1
.end method

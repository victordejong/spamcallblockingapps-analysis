.class final Lcom/google/android/gms/internal/ads/cuw;
.super Lcom/google/android/gms/internal/ads/csw;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csw",
        "<",
        "Lcom/google/android/gms/internal/ads/cwz;",
        "Lcom/google/android/gms/internal/ads/cxd;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cuu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cuu;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cuw;->a:Lcom/google/android/gms/internal/ads/cuu;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/csw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cwz;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cwz;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/gms/internal/ads/cwz;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwz;->a()Lcom/google/android/gms/internal/ads/cxc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxc;)V

    .line 28
    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cwz;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwz;->a()Lcom/google/android/gms/internal/ads/cxc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxc;->a()Lcom/google/android/gms/internal/ads/cxh;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxh;->a()Lcom/google/android/gms/internal/ads/cxk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxk;)Lcom/google/android/gms/internal/ads/czt;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czr;->a(Lcom/google/android/gms/internal/ads/czt;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czr;->a(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 8
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 9
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/cxg;->e()Lcom/google/android/gms/internal/ads/cxg$a;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/cxg$a;->a(I)Lcom/google/android/gms/internal/ads/cxg$a;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwz;->a()Lcom/google/android/gms/internal/ads/cxc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/cxg$a;->a(Lcom/google/android/gms/internal/ads/cxc;)Lcom/google/android/gms/internal/ads/cxg$a;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/cxg$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cxg$a;

    move-result-object v2

    .line 14
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/cxg$a;->b(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cxg$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cxg;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/cxd;->d()Lcom/google/android/gms/internal/ads/cxd$a;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/cxd$a;->a(I)Lcom/google/android/gms/internal/ads/cxd$a;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/cxd$a;->a(Lcom/google/android/gms/internal/ads/cxg;)Lcom/google/android/gms/internal/ads/cxd$a;

    move-result-object v0

    .line 19
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxd$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cxd$a;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cxd;

    .line 21
    return-object v0
.end method

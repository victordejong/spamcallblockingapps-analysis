.class final Lcom/google/android/gms/internal/ads/cut;
.super Lcom/google/android/gms/internal/ads/csz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csz",
        "<",
        "Lcom/google/android/gms/internal/ads/csq;",
        "Lcom/google/android/gms/internal/ads/cxd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/csz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cxd;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxd;->b()Lcom/google/android/gms/internal/ads/cxg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxg;->b()Lcom/google/android/gms/internal/ads/cxc;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cxc;->a()Lcom/google/android/gms/internal/ads/cxh;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxh;->a()Lcom/google/android/gms/internal/ads/cxk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxk;)Lcom/google/android/gms/internal/ads/czt;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxd;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v1

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czr;->a(Lcom/google/android/gms/internal/ads/czt;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 11
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/czy;->e:Lcom/google/android/gms/internal/ads/czy;

    const-string/jumbo v2, "EC"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/czy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 13
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 15
    new-instance v5, Lcom/google/android/gms/internal/ads/cve;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cxc;->b()Lcom/google/android/gms/internal/ads/cwy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwy;->a()Lcom/google/android/gms/internal/ads/cya;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/cve;-><init>(Lcom/google/android/gms/internal/ads/cya;)V

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/czn;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxh;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v2

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxh;->b()Lcom/google/android/gms/internal/ads/cxm;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxm;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cxc;->c()Lcom/google/android/gms/internal/ads/cww;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cww;)Lcom/google/android/gms/internal/ads/czw;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/czn;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/czw;Lcom/google/android/gms/internal/ads/czk;)V

    .line 21
    return-object v0
.end method

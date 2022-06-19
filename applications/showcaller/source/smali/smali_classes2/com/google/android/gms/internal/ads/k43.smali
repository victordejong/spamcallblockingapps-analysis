.class final Lcom/google/android/gms/internal/ads/k43;
.super Lcom/google/android/gms/internal/ads/u13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/u13<",
        "Lcom/google/android/gms/internal/ads/w73;",
        "Lcom/google/android/gms/internal/ads/c83;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/l43;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/l43;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k43;->b:Lcom/google/android/gms/internal/ads/l43;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/u13;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/w73;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/w73;->C()Lcom/google/android/gms/internal/ads/z73;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/u43;->a(Lcom/google/android/gms/internal/ads/z73;)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/w73;->D(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/w73;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/w73;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/w73;->C()Lcom/google/android/gms/internal/ads/z73;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z73;->C()Lcom/google/android/gms/internal/ads/k83;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k83;->H()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/u43;->c(I)I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kb3;->d(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kb3;->c(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 6
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 7
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/f83;->H()Lcom/google/android/gms/internal/ads/e83;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/e83;->q(I)Lcom/google/android/gms/internal/ads/e83;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/w73;->C()Lcom/google/android/gms/internal/ads/z73;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/e83;->r(Lcom/google/android/gms/internal/ads/z73;)Lcom/google/android/gms/internal/ads/e83;

    .line 11
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/e83;->s(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/e83;

    .line 12
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/e83;->t(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/e83;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/f83;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/c83;->G()Lcom/google/android/gms/internal/ads/b83;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/b83;->q(I)Lcom/google/android/gms/internal/ads/b83;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/b83;->r(Lcom/google/android/gms/internal/ads/f83;)Lcom/google/android/gms/internal/ads/b83;

    .line 17
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/b83;->s(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/b83;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/c83;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/t13<",
            "Lcom/google/android/gms/internal/ads/w73;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AES128_GCM"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r13;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/l43;->k()[B

    move-result-object v6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/l43;->l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM"

    .line 4
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r13;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/l43;->k()[B

    move-result-object v8

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v9, 0x3

    .line 6
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/l43;->l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    .line 7
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r13;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/l43;->k()[B

    move-result-object v8

    const/4 v6, 0x4

    const/4 v9, 0x1

    .line 9
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/l43;->l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v2

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM"

    .line 10
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r13;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/l43;->k()[B

    move-result-object v8

    const/4 v9, 0x3

    .line 12
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/l43;->l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v2

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    .line 13
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r13;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/l43;->k()[B

    move-result-object v8

    .line 15
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/l43;->l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v1

    const-string v2, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX"

    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AES128_CTR_HMAC_SHA256"

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r13;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/l43;->k()[B

    move-result-object v6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 18
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/l43;->l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    .line 19
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r13;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/l43;->k()[B

    move-result-object v8

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    .line 21
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/l43;->l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    .line 22
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r13;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/l43;->k()[B

    move-result-object v8

    const/4 v6, 0x4

    const/4 v9, 0x1

    .line 24
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/l43;->l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v2

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    .line 25
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/s13;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r13;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/l43;->k()[B

    move-result-object v8

    const/4 v9, 0x3

    .line 27
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/l43;->l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v1

    const-string v2, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/google/android/gms/internal/ads/j43;
.super Lcom/google/android/gms/internal/ads/v13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/v13<",
        "Lcom/google/android/gms/internal/ads/m13;",
        "Lcom/google/android/gms/internal/ads/c83;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/v13;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/c83;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c83;->D()Lcom/google/android/gms/internal/ads/f83;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f83;->D()Lcom/google/android/gms/internal/ads/z73;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z73;->C()Lcom/google/android/gms/internal/ads/k83;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/k83;->H()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/u43;->c(I)I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c83;->E()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object p1

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/kb3;->d(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    .line 7
    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 8
    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/nb3;->j:Lcom/google/android/gms/internal/ads/nb3;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/nb3;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    .line 10
    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/ads/v43;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z73;->D()Lcom/google/android/gms/internal/ads/t73;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t73;->C()Lcom/google/android/gms/internal/ads/d93;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/v43;-><init>(Lcom/google/android/gms/internal/ads/d93;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/fb3;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/k83;->C()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v4

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/k83;->I()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/u43;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z73;->J()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/u43;->d(I)I

    move-result v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/fb3;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;ILcom/google/android/gms/internal/ads/eb3;)V

    return-object p1
.end method

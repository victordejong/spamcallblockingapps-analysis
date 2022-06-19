.class public final Lcom/google/android/gms/internal/ads/dkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dfx;


# instance fields
.field private final a:Ljavax/crypto/SecretKey;

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->a(I)V

    .line 4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkv;->a:Ljavax/crypto/SecretKey;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/dkv;->a()Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 9
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/djp;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dkv;->b:[B

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/djp;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dkv;->c:[B

    return-void
.end method

.method private static a()Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dkj;->a:Lcom/google/android/gms/internal/ads/dkj;

    const-string v1, "AES/ECB/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dkj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method


# virtual methods
.method public final a([BI)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-gt p2, v0, :cond_3

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/dkv;->a()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkv;->a:Ljavax/crypto/SecretKey;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 17
    array-length v2, p1

    int-to-double v4, v2

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    shl-int/lit8 v4, v2, 0x4

    .line 18
    array-length v5, p1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v2, -0x1

    shl-int/lit8 v4, v4, 0x4

    .line 19
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dkv;->b:[B

    invoke-static {p1, v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/djs;->a([BI[BII)[B

    move-result-object v4

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, -0x1

    shl-int/lit8 v4, v4, 0x4

    .line 20
    array-length v5, p1

    .line 21
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 22
    array-length v5, v4

    if-ge v5, v0, :cond_2

    .line 24
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 25
    array-length v4, v4

    const/16 v7, -0x80

    aput-byte v7, v5, v4

    .line 27
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dkv;->c:[B

    .line 28
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/djs;->a([B[B)[B

    move-result-object v4

    :goto_0
    new-array v5, v0, [B

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_1

    shl-int/lit8 v8, v7, 0x4

    .line 31
    invoke-static {v5, v6, p1, v8, v0}, Lcom/google/android/gms/internal/ads/djs;->a([BI[BII)[B

    move-result-object v5

    .line 32
    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/djs;->a([B[B)[B

    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x must be smaller than a block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "outputLength too large, max is 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

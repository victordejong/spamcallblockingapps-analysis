.class public final Lcom/google/android/gms/internal/ads/zzeiq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedv;


# instance fields
.field private final zzidi:Ljavax/crypto/SecretKey;

.field private zziku:[B

.field private zzikv:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeiv;->zzfu(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzidi:Ljavax/crypto/SecretKey;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeiq;->zzbfs()Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehl;->zzp([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zziku:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehl;->zzp([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzikv:[B

    return-void
.end method

.method private static zzbfs()Ljavax/crypto/Cipher;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzikg:Lcom/google/android/gms/internal/ads/zzeie;

    const-string v1, "AES/ECB/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;->zzhw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method


# virtual methods
.method public final zzd([BI)[B
    .locals 9

    const/16 v0, 0x10

    if-gt p2, v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeiq;->zzbfs()Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzidi:Ljavax/crypto/SecretKey;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

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

    array-length v5, p1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v2, -0x1

    shl-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zziku:[B

    invoke-static {p1, v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/zzeho;->zza([BI[BII)[B

    move-result-object v4

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, -0x1

    shl-int/lit8 v4, v4, 0x4

    array-length v5, p1

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    array-length v5, v4

    if-ge v5, v0, :cond_2

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    array-length v4, v4

    const/16 v7, -0x80

    aput-byte v7, v5, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzikv:[B

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzeho;->zzd([B[B)[B

    move-result-object v4

    :goto_0
    new-array v5, v0, [B

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_1

    shl-int/lit8 v8, v7, 0x4

    invoke-static {v5, v6, p1, v8, v0}, Lcom/google/android/gms/internal/ads/zzeho;->zza([BI[BII)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeho;->zzd([B[B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x must be smaller than a block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "outputLength too large, max is 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

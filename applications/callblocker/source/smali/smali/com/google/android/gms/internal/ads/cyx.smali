.class public final Lcom/google/android/gms/internal/ads/cyx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ctd;


# instance fields
.field private final a:Ljavax/crypto/SecretKey;

.field private final b:I

.field private c:[B

.field private d:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dao;->a(I)V

    .line 4
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "tag size too small, min is 10 bytes"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_0
    if-le p2, v3, :cond_1

    .line 7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "tag size too large, max is 16 bytes"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cyx;->a:Ljavax/crypto/SecretKey;

    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/ads/cyx;->b:I

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyx;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 12
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cyx;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 13
    new-array v1, v3, [B

    .line 14
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cze;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cyx;->c:[B

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyx;->c:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cze;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cyx;->d:[B

    .line 17
    return-void
.end method

.method private static a()Ljavax/crypto/Cipher;
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/czy;->a:Lcom/google/android/gms/internal/ads/czy;

    const-string/jumbo v1, "AES/ECB/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/czy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method


# virtual methods
.method public final a([B)[B
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/16 v8, 0x10

    const/4 v2, 0x0

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyx;->a()Ljavax/crypto/Cipher;

    move-result-object v4

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyx;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v4, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 20
    array-length v0, p1

    int-to-double v0, v0

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 21
    shl-int/lit8 v0, v5, 0x4

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 22
    add-int/lit8 v0, v5, -0x1

    shl-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cyx;->c:[B

    invoke-static {p1, v0, v1, v2, v8}, Lcom/google/android/gms/internal/ads/czh;->a([BI[BII)[B

    move-result-object v0

    .line 32
    :goto_0
    new-array v3, v8, [B

    move v1, v2

    .line 33
    :goto_1
    add-int/lit8 v6, v5, -0x1

    if-ge v1, v6, :cond_2

    .line 34
    shl-int/lit8 v6, v1, 0x4

    invoke-static {v3, v2, p1, v6, v8}, Lcom/google/android/gms/internal/ads/czh;->a([BI[BII)[B

    move-result-object v3

    .line 35
    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v0, v5, -0x1

    shl-int/lit8 v0, v0, 0x4

    array-length v1, p1

    .line 24
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 25
    array-length v1, v0

    if-lt v1, v8, :cond_1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be smaller than a block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 28
    array-length v0, v0

    const/16 v3, -0x80

    aput-byte v3, v1, v0

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyx;->d:[B

    .line 31
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/czh;->a([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/czh;->a([B[B)[B

    move-result-object v0

    .line 38
    iget v1, p0, Lcom/google/android/gms/internal/ads/cyx;->b:I

    new-array v1, v1, [B

    .line 39
    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/cyx;->b:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-object v1
.end method

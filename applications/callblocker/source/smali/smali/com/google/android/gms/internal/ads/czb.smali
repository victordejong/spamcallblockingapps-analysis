.class public final Lcom/google/android/gms/internal/ads/czb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/csm;


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:[B

.field private final d:[B

.field private final e:Ljavax/crypto/spec/SecretKeySpec;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/gms/internal/ads/cza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/czb;->a:Ljava/lang/ThreadLocal;

    .line 72
    new-instance v0, Lcom/google/android/gms/internal/ads/czd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/czd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/czb;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    if-eq p2, v3, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IV size should be either 12 or 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/czb;->f:I

    .line 5
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dao;->a(I)V

    .line 6
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czb;->e:Ljavax/crypto/spec/SecretKeySpec;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/czb;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 8
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/czb;->e:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 9
    new-array v1, v3, [B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czb;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czb;->c:[B

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czb;->c:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czb;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czb;->d:[B

    .line 12
    return-void
.end method

.method private final a(Ljavax/crypto/Cipher;I[BII)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x10

    .line 26
    new-array v1, v6, [B

    .line 27
    const/16 v2, 0xf

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 28
    if-nez p5, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czb;->c:[B

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/czb;->b([B[B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 32
    :goto_1
    sub-int v1, p5, v2

    if-le v1, v6, :cond_2

    move v1, v0

    .line 33
    :goto_2
    if-ge v1, v6, :cond_1

    .line 34
    aget-byte v4, v3, v1

    add-int v5, p4, v2

    add-int/2addr v5, v1

    aget-byte v5, p3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 37
    add-int/lit8 v1, v2, 0x10

    move v2, v1

    goto :goto_1

    .line 38
    :cond_2
    add-int v1, p4, v2

    add-int v2, p4, p5

    invoke-static {p3, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 39
    array-length v1, v2

    if-ne v1, v6, :cond_3

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czb;->c:[B

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/czb;->b([B[B)[B

    move-result-object v0

    .line 48
    :goto_3
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/czb;->b([B[B)[B

    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/czb;->d:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 42
    :goto_4
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 43
    aget-byte v4, v1, v0

    aget-byte v5, v2, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 45
    :cond_4
    array-length v0, v2

    array-length v2, v2

    aget-byte v2, v1, v2

    xor-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 46
    goto :goto_3
.end method

.method private static a([B)[B
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x10

    new-array v2, v1, [B

    move v1, v0

    .line 20
    :goto_0
    if-ge v1, v5, :cond_0

    .line 21
    aget-byte v3, p0, v1

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x7

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    aget-byte v1, p0, v5

    shl-int/lit8 v1, v1, 0x1

    .line 24
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    .line 25
    return-object v2

    .line 24
    :cond_1
    const/16 v0, 0x87

    goto :goto_1
.end method

.method private static b([B[B)[B
    .locals 5

    .prologue
    .line 13
    array-length v1, p0

    .line 14
    new-array v2, v1, [B

    .line 15
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 16
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 50
    array-length v0, p1

    const v1, 0x7fffffff

    iget v3, p0, Lcom/google/android/gms/internal/ads/czb;->f:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x10

    if-le v0, v1, :cond_0

    .line 51
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/czb;->f:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    new-array v9, v0, [B

    .line 53
    iget v0, p0, Lcom/google/android/gms/internal/ads/czb;->f:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/daj;->a(I)[B

    move-result-object v3

    .line 54
    iget v0, p0, Lcom/google/android/gms/internal/ads/czb;->f:I

    invoke-static {v3, v2, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/ads/czb;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czb;->e:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v11, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 57
    array-length v5, v3

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/czb;->a(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v0

    .line 59
    if-nez p2, :cond_2

    .line 60
    new-array v6, v2, [B

    .line 61
    :goto_0
    array-length v8, v6

    move-object v3, p0

    move-object v4, v1

    move v5, v11

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/czb;->a(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v10

    .line 62
    sget-object v3, Lcom/google/android/gms/internal/ads/czb;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/Cipher;

    .line 63
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/czb;->e:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v11, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 64
    array-length v6, p1

    iget v8, p0, Lcom/google/android/gms/internal/ads/czb;->f:I

    move-object v4, p1

    move v5, v2

    move-object v7, v9

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 65
    const/4 v5, 0x2

    iget v7, p0, Lcom/google/android/gms/internal/ads/czb;->f:I

    array-length v8, p1

    move-object v3, p0

    move-object v4, v1

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/czb;->a(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v1

    .line 66
    array-length v3, p1

    iget v4, p0, Lcom/google/android/gms/internal/ads/czb;->f:I

    add-int/2addr v3, v4

    .line 67
    :goto_1
    const/16 v4, 0x10

    if-ge v2, v4, :cond_1

    .line 68
    add-int v4, v3, v2

    aget-byte v5, v10, v2

    aget-byte v6, v0, v2

    xor-int/2addr v5, v6

    aget-byte v6, v1, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v9, v4

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    :cond_1
    return-object v9

    :cond_2
    move-object v6, p2

    goto :goto_0
.end method

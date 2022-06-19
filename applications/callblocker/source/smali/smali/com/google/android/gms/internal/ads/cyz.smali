.class public final Lcom/google/android/gms/internal/ads/cyz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dai;


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


# instance fields
.field private final b:Ljavax/crypto/spec/SecretKeySpec;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/cyy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cyy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cyz;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dao;->a(I)V

    .line 3
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cyz;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/cyz;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cyz;->d:I

    .line 5
    const/16 v0, 0xc

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/cyz;->d:I

    if-le p2, v0, :cond_1

    .line 6
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "invalid IV size"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/cyz;->c:I

    .line 8
    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 8

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    .line 9
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/cyz;->c:I

    sub-int v1, v3, v1

    if-le v0, v1, :cond_0

    .line 10
    new-instance v0, Ljava/security/GeneralSecurityException;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cyz;->c:I

    sub-int v1, v3, v1

    const/16 v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "plaintext length can not exceed "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/cyz;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v4, v0, [B

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/cyz;->c:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/daj;->a(I)[B

    move-result-object v1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/cyz;->c:I

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    array-length v3, p1

    iget v5, p0, Lcom/google/android/gms/internal/ads/cyz;->c:I

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/cyz;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 16
    iget v6, p0, Lcom/google/android/gms/internal/ads/cyz;->d:I

    new-array v6, v6, [B

    .line 17
    iget v7, p0, Lcom/google/android/gms/internal/ads/cyz;->c:I

    invoke-static {v1, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 19
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/cyz;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v1, p1

    .line 20
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    .line 21
    if-eq v0, v3, :cond_1

    .line 22
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "stored output\'s length does not match input\'s length"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    return-object v4
.end method

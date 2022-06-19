.class public final Lcom/google/android/gms/internal/ads/czc;
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


# instance fields
.field private final b:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/czf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/czf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/czc;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([B)V
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

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czc;->b:Ljavax/crypto/SecretKey;

    .line 4
    return-void
.end method

.method private static a([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    :try_start_0
    const-string/jumbo v0, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dal;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p0, v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xc

    const/4 v2, 0x0

    .line 5
    array-length v0, p1

    const v1, 0x7fffffe3

    if-le v0, v1, :cond_0

    .line 6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x10

    new-array v4, v0, [B

    .line 8
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/daj;->a(I)[B

    move-result-object v0

    .line 9
    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v1, v0

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/czc;->a([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/czc;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/czc;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v6, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 14
    if-eqz p2, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/czc;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 16
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/czc;->a:Ljava/lang/ThreadLocal;

    .line 17
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    array-length v3, p1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    .line 18
    array-length v1, p1

    add-int/lit8 v1, v1, 0x10

    if-eq v0, v1, :cond_2

    .line 19
    array-length v1, p1

    sub-int/2addr v0, v1

    .line 20
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "encryption failed; GCM tag must be %s bytes, but got only %s bytes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x10

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    .line 22
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_2
    return-object v4
.end method

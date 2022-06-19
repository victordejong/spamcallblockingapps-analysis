.class public Lcom/callapp/common/util/AESUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/common/util/AESUtils$IBase64;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/common/util/AESUtils$IBase64;


# direct methods
.method public constructor <init>(Lcom/callapp/common/util/AESUtils$IBase64;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/callapp/common/util/AESUtils;->a:Lcom/callapp/common/util/AESUtils$IBase64;

    return-void
.end method

.method private static a([B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2

    .line 123
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    const-string v2, "UTF-8"

    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 50
    array-length v2, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static b([B)Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    .line 127
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method

.method private getCipher()Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5PADDING"

    .line 119
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 63
    invoke-static {p2}, Lcom/callapp/common/util/AESUtils;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 1042
    invoke-virtual {p0, p2, p2}, Lcom/callapp/common/util/AESUtils;->a([B[B)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 1043
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/callapp/common/util/AESUtils;->a:Lcom/callapp/common/util/AESUtils$IBase64;

    invoke-interface {p2, p1}, Lcom/callapp/common/util/AESUtils$IBase64;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a([B[B)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/callapp/common/util/AESUtils;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 103
    invoke-static {p1}, Lcom/callapp/common/util/AESUtils;->a([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    .line 104
    invoke-static {p2}, Lcom/callapp/common/util/AESUtils;->b([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p2

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/callapp/common/util/AESUtils;->a:Lcom/callapp/common/util/AESUtils$IBase64;

    invoke-interface {v0, p1}, Lcom/callapp/common/util/AESUtils$IBase64;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 96
    invoke-static {p2}, Lcom/callapp/common/util/AESUtils;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 97
    new-instance v0, Ljava/lang/String;

    .line 2111
    invoke-direct {p0}, Lcom/callapp/common/util/AESUtils;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2112
    invoke-static {p2}, Lcom/callapp/common/util/AESUtils;->a([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .line 2113
    invoke-static {p2}, Lcom/callapp/common/util/AESUtils;->b([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p2

    const/4 v3, 0x2

    .line 2114
    invoke-virtual {v1, v3, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2036
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "UTF-8"

    .line 97
    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

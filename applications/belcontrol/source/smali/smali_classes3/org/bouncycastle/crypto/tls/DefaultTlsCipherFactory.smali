.class public Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipherFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAESBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public createAESCipher(Lorg/bouncycastle/crypto/tls/TlsClientContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 8

    new-instance v7, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v7
.end method

.method public createCipher(Lorg/bouncycastle/crypto/tls/TlsClientContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    const/16 p2, 0x20

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/bouncycastle/crypto/tls/TlsClientContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    const/16 p2, 0x10

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/bouncycastle/crypto/tls/TlsClientContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p2, 0x18

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeCipher(Lorg/bouncycastle/crypto/tls/TlsClientContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object p1

    return-object p1
.end method

.method public createDESedeBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public createDESedeCipher(Lorg/bouncycastle/crypto/tls/TlsClientContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 8

    new-instance v7, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v7
.end method

.method public createDigest(I)Lorg/bouncycastle/crypto/Digest;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    return-object p1
.end method

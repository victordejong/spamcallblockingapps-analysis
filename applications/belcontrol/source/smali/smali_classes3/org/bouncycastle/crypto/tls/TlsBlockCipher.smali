.class public Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field public context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

.field public decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field public encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field public readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

.field public writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 12

    move-object v7, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    iput-object v0, v7, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    move-object v8, p2

    iput-object v8, v7, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    move-object v9, p3

    iput-object v9, v7, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    mul-int/lit8 v1, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {p3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-object v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iget-object v4, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v0

    const-string v4, "key expansion"

    invoke-static {v3, v4, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object v10

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v4, p4

    invoke-direct {v0, v4, v10, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/Digest;[BII)V

    iput-object v0, v7, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    add-int/2addr v0, v3

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    move-object/from16 v4, p5

    invoke-direct {v2, v4, v10, v0, v3}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/Digest;[BII)V

    iput-object v2, v7, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int v11, v0, v2

    add-int v6, v11, v1

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, v10

    move/from16 v4, p6

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->initCipher(ZLorg/bouncycastle/crypto/BlockCipher;[BIII)V

    add-int v5, v11, p6

    add-int v0, v5, p6

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int v6, v0, v1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->initCipher(ZLorg/bouncycastle/crypto/BlockCipher;[BIII)V

    return-void
.end method


# virtual methods
.method public chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I
    .locals 0

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->lowestBitSet(I)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public decodeCiphertext(S[BII)[B
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    if-lt p4, v0, :cond_7

    rem-int v3, p4, v2

    if-nez v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p4, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int v6, v4, p3

    invoke-interface {v5, p2, v6, p2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    add-int v2, p3, p4

    sub-int/2addr v2, v1

    aget-byte v4, p2, v2

    and-int/lit16 v5, v4, 0xff

    sub-int/2addr p4, v0

    if-le v5, p4, :cond_1

    :goto_1
    const/4 v0, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_1
    sub-int v0, v2, v5

    const/4 v6, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    aget-byte v7, p2, v0

    xor-int/2addr v7, v4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    sub-int/2addr p4, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object p1

    array-length v2, p1

    new-array v2, v2, [B

    add-int v4, p3, p4

    array-length v5, p1

    invoke-static {p2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    if-nez v1, :cond_5

    new-array p1, p4, [B

    invoke-static {p2, p3, p1, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_7
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public encodePlaintext(S[BII)[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v1

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v0

    sub-int v1, v0, v1

    rsub-int v2, v1, 0xff

    div-int/2addr v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v2

    add-int/2addr v2, p4

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {p2, p3, v3, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v5, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, v4, v3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p4, p1

    const/4 p1, 0x0

    :goto_0
    if-gt p1, v1, :cond_0

    add-int p2, p1, p4

    int-to-byte p3, v1

    aput-byte p3, v3, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, v2, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v3, v4, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v4, v0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public initCipher(ZLorg/bouncycastle/crypto/BlockCipher;[BIII)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p3, p5, p4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    new-instance p4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p5

    invoke-direct {p4, v0, p3, p6, p5}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    invoke-interface {p2, p1, p4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public lowestBitSet(I)I
    .locals 2

    if-nez p1, :cond_0

    const/16 p1, 0x20

    return p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

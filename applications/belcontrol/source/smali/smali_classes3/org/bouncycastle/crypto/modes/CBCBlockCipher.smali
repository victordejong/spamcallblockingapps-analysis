.class public Lorg/bouncycastle/crypto/modes/CBCBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cbcNextV:[B

.field private cbcV:[B

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    :goto_0
    iget p2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v2, p2, :cond_0

    add-int p2, p4, v2

    aget-byte v0, p3, p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v1, v1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p3, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object p3, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iput-object p3, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encryptBlock([BI[BI)I
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v3, v2, v1

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    invoke-interface {p1, p2, v0, p3, p4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v1, p2

    invoke-static {p3, p4, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CBC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initialisation vector must be the same length as block size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    :goto_0
    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

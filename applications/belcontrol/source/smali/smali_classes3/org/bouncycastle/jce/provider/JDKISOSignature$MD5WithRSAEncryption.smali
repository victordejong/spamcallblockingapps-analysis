.class public Lorg/bouncycastle/jce/provider/JDKISOSignature$MD5WithRSAEncryption;
.super Lorg/bouncycastle/jce/provider/JDKISOSignature;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKISOSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5WithRSAEncryption"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/JDKISOSignature;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method

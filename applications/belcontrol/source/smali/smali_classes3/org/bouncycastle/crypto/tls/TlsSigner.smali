.class public interface abstract Lorg/bouncycastle/crypto/tls/TlsSigner;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract calculateRawSignature(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)[B
.end method

.method public abstract createVerifyer(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
.end method

.method public abstract isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z
.end method

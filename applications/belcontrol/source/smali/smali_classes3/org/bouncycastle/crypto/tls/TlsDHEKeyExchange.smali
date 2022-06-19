.class public Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;
.super Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;
.source ""


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;-><init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;I)V

    return-void
.end method


# virtual methods
.method public initSigner(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p1

    iget-object v0, p2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    iget-object p2, p2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    return-object p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->initSigner(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/io/SignerInputStream;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/io/SignerInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Signer;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v1, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->validateDHPublicKey(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public skipServerKeyExchange()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

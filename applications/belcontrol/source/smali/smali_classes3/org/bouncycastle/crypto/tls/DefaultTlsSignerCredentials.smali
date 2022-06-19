.class public Lorg/bouncycastle/crypto/tls/DefaultTlsSignerCredentials;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;


# instance fields
.field public clientCert:Lorg/bouncycastle/crypto/tls/Certificate;

.field public clientPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field public clientSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

.field public context:Lorg/bouncycastle/crypto/tls/TlsClientContext;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;Lorg/bouncycastle/crypto/tls/Certificate;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_6

    iget-object v0, p2, Lorg/bouncycastle/crypto/tls/Certificate;->certs:[Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    array-length v0, v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p3, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsSignerCredentials;->clientSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    goto :goto_1

    :cond_0
    instance-of v0, p3, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    goto :goto_0

    :cond_1
    instance-of v0, p3, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;-><init>()V

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsSignerCredentials;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsSignerCredentials;->clientCert:Lorg/bouncycastle/crypto/tls/Certificate;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsSignerCredentials;->clientPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'clientPrivateKey\' type not supported: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'clientPrivateKey\' must be private"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'clientPrivateKey\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'clientCertificate\' cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'clientCertificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateCertificateSignature([B)[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsSignerCredentials;->clientSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsSignerCredentials;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsSignerCredentials;->clientPrivateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->calculateRawSignature(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsSignerCredentials;->clientCert:Lorg/bouncycastle/crypto/tls/Certificate;

    return-object v0
.end method

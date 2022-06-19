.class public Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsKeyExchange;


# instance fields
.field public B:Ljava/math/BigInteger;

.field public context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

.field public identity:[B

.field public keyExchange:I

.field public password:[B

.field public s:[B

.field public serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field public srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

.field public tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;I[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->s:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->B:Ljava/math/BigInteger;

    new-instance v1, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported key exchange algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    :goto_0
    :pswitch_2
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    iput p2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->keyExchange:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->password:[B

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->s:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->password:[B

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;->generateClientCredentials([B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->B:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public initSigner(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

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

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/Certificate;->certs:[Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;I)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :catch_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2b

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->initSigner(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/io/SignerInputStream;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/io/SignerInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Signer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v1, p1

    :goto_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    :goto_1
    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->s:[B

    :try_start_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->B:Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Client;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void

    :catch_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public skipClientCredentials()V
    .locals 0

    return-void
.end method

.method public skipServerCertificate()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public skipServerKeyExchange()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .locals 1

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

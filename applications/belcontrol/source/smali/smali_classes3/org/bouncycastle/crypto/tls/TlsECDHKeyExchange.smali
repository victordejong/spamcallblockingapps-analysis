.class public Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsKeyExchange;


# instance fields
.field public agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

.field public context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

.field public ecAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field public ecAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field public keyExchange:I

.field public serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field public tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

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
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;-><init>()V

    :goto_0
    :pswitch_2
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    iput p2, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->keyExchange:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public areOnSameCurve(Lorg/bouncycastle/crypto/params/ECDomainParameters;Lorg/bouncycastle/crypto/params/ECDomainParameters;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public calculateECDHBasicAgreement(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)[B
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public externalizeKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)[B
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object p1

    return-object p1
.end method

.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->generateEphemeralClientKeyExchange(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method public generateECKeyPair(Lorg/bouncycastle/crypto/params/ECDomainParameters;)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    return-object p1
.end method

.method public generateEphemeralClientKeyExchange(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->generateECKeyPair(Lorg/bouncycastle/crypto/params/ECDomainParameters;)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->externalizeKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)[B

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;->generateAgreement(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->calculateECDHBasicAgreement(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 3

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/Certificate;->certs:[Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    const/16 v2, 0x2e

    if-nez v1, :cond_0

    :try_start_1
    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->validateECPublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0x8

    goto :goto_0

    :catch_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_0
    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    :goto_0
    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;I)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :catch_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2b

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 1

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public skipClientCredentials()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    return-void
.end method

.method public skipServerCertificate()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public skipServerKeyExchange()V
    .locals 0

    return-void
.end method

.method public validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-short v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_0
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public validateECPublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 0

    return-object p1
.end method

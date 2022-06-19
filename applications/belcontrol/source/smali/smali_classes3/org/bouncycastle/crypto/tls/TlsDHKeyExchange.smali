.class public Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsKeyExchange;


# static fields
.field public static final ONE:Ljava/math/BigInteger;

.field public static final TWO:Ljava/math/BigInteger;


# instance fields
.field public agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

.field public context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

.field public dhAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field public dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

.field public keyExchange:I

.field public serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field public tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsClientContext;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 v1, 0x7

    if-eq p2, v1, :cond_3

    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported key exchange algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    :cond_3
    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    iput p2, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->keyExchange:I

    return-void
.end method


# virtual methods
.method public areCompatibleParameters(Lorg/bouncycastle/crypto/params/DHParameters;Lorg/bouncycastle/crypto/params/DHParameters;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

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

.method public calculateDHBasicAgreement(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)[B
    .locals 0

    new-instance p1, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/agreement/DHBasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->generateEphemeralClientKeyExchange(Lorg/bouncycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method public generateDHKeyPair(Lorg/bouncycastle/crypto/params/DHParameters;)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    return-object p1
.end method

.method public generateEphemeralClientKeyExchange(Lorg/bouncycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->generateDHKeyPair(Lorg/bouncycastle/crypto/params/DHParameters;)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;->generateAgreement(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->calculateDHBasicAgreement(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

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

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    const/16 v2, 0x2e

    if-nez v1, :cond_0

    :try_start_1
    check-cast v0, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->validateDHPublicKey(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
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

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

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

    if-ge v0, v1, :cond_2

    aget-short v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public validateDHPublicKey(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_2

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

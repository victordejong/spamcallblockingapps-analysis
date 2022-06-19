.class public Lorg/bouncycastle/openssl/PEMReader;
.super Lorg/bouncycastle/util/io/pem/PemReader;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openssl/PEMReader$DSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;,
        Lorg/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;,
        Lorg/bouncycastle/openssl/PEMReader$PKCS7Parser;,
        Lorg/bouncycastle/openssl/PEMReader$PrivateKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$RSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;,
        Lorg/bouncycastle/openssl/PEMReader$X509CRLParser;,
        Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;
    }
.end annotation


# instance fields
.field private pFinder:Lorg/bouncycastle/openssl/PasswordFinder;

.field private final parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "BC"

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;)V
    .locals 1

    const-string v0, "BC"

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p3}, Lorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMReader;->pFinder:Lorg/bouncycastle/openssl/PasswordFinder;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    const-string v1, "CERTIFICATE REQUEST"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    const-string v1, "NEW CERTIFICATE REQUEST"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {p2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    const-string v1, "CERTIFICATE"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {p2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    const-string v1, "X509 CERTIFICATE"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$X509CRLParser;

    invoke-direct {p2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$X509CRLParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    const-string v1, "X509 CRL"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$PKCS7Parser;

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/openssl/PEMReader$PKCS7Parser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    const-string v1, "PKCS7"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    const-string v1, "ATTRIBUTE CERTIFICATE"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    const-string v0, "EC PARAMETERS"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;

    invoke-direct {p2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    const-string v0, "PUBLIC KEY"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;

    invoke-direct {p2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    const-string v0, "RSA PUBLIC KEY"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$RSAKeyPairParser;

    invoke-direct {p2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$RSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    const-string v0, "RSA PRIVATE KEY"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$DSAKeyPairParser;

    invoke-direct {p2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$DSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    const-string v0, "DSA PRIVATE KEY"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;

    invoke-direct {p2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    const-string v0, "EC PRIVATE KEY"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;

    invoke-direct {p2, p0, p3, p4}, Lorg/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "ENCRYPTED PRIVATE KEY"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/bouncycastle/openssl/PEMReader$PrivateKeyParser;

    invoke-direct {p2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$PrivateKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    const-string p3, "PRIVATE KEY"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$400(Lorg/bouncycastle/openssl/PEMReader;)Lorg/bouncycastle/openssl/PasswordFinder;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/openssl/PEMReader;->pFinder:Lorg/bouncycastle/openssl/PasswordFinder;

    return-object p0
.end method


# virtual methods
.method public readObject()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/util/io/pem/PemReader;->readPemObject()Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/util/io/pem/PemObjectParser;

    invoke-interface {v1, v0}, Lorg/bouncycastle/util/io/pem/PemObjectParser;->parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognised object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

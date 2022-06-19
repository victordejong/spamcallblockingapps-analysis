.class public Lorg/bouncycastle/crypto/tls/LegacyTlsAuthentication;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsAuthentication;


# instance fields
.field public verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/CertificateVerifyer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/LegacyTlsAuthentication;->verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;

    return-void
.end method


# virtual methods
.method public getClientCredentials(Lorg/bouncycastle/crypto/tls/CertificateRequest;)Lorg/bouncycastle/crypto/tls/TlsCredentials;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/LegacyTlsAuthentication;->verifyer:Lorg/bouncycastle/crypto/tls/CertificateVerifyer;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->getCerts()[Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/CertificateVerifyer;->isValid([Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x5a

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

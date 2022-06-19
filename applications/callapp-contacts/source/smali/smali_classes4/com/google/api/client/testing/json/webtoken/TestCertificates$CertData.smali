.class public Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/testing/json/webtoken/TestCertificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertData"
.end annotation


# instance fields
.field private pem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;->pem:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBase64Der()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;->getDer()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3051
    :cond_0
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->b()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    .line 3148
    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/google/common/io/BaseEncoding;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertfificate()Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;->getDer()[B

    move-result-object v0

    .line 61
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "X.509"

    .line 1229
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getDer()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;->pem:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v1, "CERTIFICATE"

    invoke-static {v0, v1}, Lcom/google/api/client/a/z;->a(Ljava/io/Reader;Ljava/lang/String;)Lcom/google/api/client/a/z$a;

    move-result-object v0

    .line 2168
    iget-object v0, v0, Lcom/google/api/client/a/z$a;->a:[B

    return-object v0
.end method

.method public getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 75
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 77
    invoke-virtual {p0}, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;->getCertfificate()Ljava/security/cert/Certificate;

    move-result-object v1

    const-string v2, "ca"

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 79
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 81
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

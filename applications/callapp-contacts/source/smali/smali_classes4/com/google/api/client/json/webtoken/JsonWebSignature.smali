.class public Lcom/google/api/client/json/webtoken/JsonWebSignature;
.super Lcom/google/api/client/json/webtoken/JsonWebToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;,
        Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    }
.end annotation


# instance fields
.field private final signatureBytes:[B

.field private final signedContentBytes:[B


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;[B[B)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebToken;-><init>(Lcom/google/api/client/json/webtoken/JsonWebToken$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)V

    .line 1125
    invoke-static {p3}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 74
    check-cast p1, [B

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    .line 2125
    invoke-static {p4}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    check-cast p1, [B

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    return-void
.end method

.method private static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 6

    const/4 v0, 0x0

    .line 445
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 446
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 447
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 448
    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_0

    .line 449
    check-cast v4, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    invoke-static {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->parse(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;

    move-result-object p0

    return-object p0
.end method

.method public static parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
    .locals 1

    .line 484
    new-instance v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;

    invoke-direct {v0, p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public static signUsingRsaSha256(Ljava/security/PrivateKey;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    invoke-virtual {p1, p2}, Lcom/google/api/client/json/JsonFactory;->toByteArray(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/api/client/a/d;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {p1, p3}, Lcom/google/api/client/json/JsonFactory;->toByteArray(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/api/client/a/d;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-static {p1}, Lcom/google/api/client/a/ae;->a(Ljava/lang/String;)[B

    move-result-object p3

    const-string v0, "SHA256withRSA"

    .line 4129
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 4148
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 4149
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 4150
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    .line 590
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/api/client/a/d;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 1

    .line 344
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public bridge synthetic getHeader()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public final getSignatureBytes()[B
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final getSignedContentBytes()[B
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final verifySignature()Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 435
    invoke-static {}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 439
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->verifySignature(Ljavax/net/ssl/X509TrustManager;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final verifySignature(Ljavax/net/ssl/X509TrustManager;)Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->getX509Certificates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 395
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RS256"

    .line 399
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "SHA256withRSA"

    .line 3129
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    iget-object v3, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    .line 400
    invoke-static {v1, p1, v0, v2, v3}, Lcom/google/api/client/a/ab;->a(Ljava/security/Signature;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;[B[B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v3, "ES256"

    .line 406
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "SHA256withECDSA"

    .line 3134
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 408
    iget-object v2, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    .line 411
    invoke-static {v2}, Lcom/google/api/client/json/webtoken/DerEncoder;->encode([B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    .line 407
    invoke-static {v1, p1, v0, v2, v3}, Lcom/google/api/client/a/ab;->a(Ljava/security/Signature;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;[B[B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final verifySignature(Ljava/security/PublicKey;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RS256"

    .line 359
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SHA256withRSA"

    .line 2129
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    iget-object v2, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    .line 360
    invoke-static {v0, p1, v1, v2}, Lcom/google/api/client/a/ab;->a(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result p1

    return p1

    :cond_0
    const-string v1, "ES256"

    .line 365
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SHA256withECDSA"

    .line 2134
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    .line 369
    invoke-static {v1}, Lcom/google/api/client/json/webtoken/DerEncoder;->encode([B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    .line 366
    invoke-static {v0, p1, v1, v2}, Lcom/google/api/client/a/ab;->a(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

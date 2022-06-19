.class public Lorg/bouncycastle/openssl/PEMWriter;
.super Lorg/bouncycastle/util/io/pem/PemWriter;
.source ""


# instance fields
.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const-string v0, "BC"

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMWriter;->provider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/openssl/MiscPEMGenerator;

    invoke-direct {v0, p1}, Lorg/bouncycastle/openssl/MiscPEMGenerator;-><init>(Ljava/lang/Object;)V

    invoke-super {p0, v0}, Lorg/bouncycastle/util/io/pem/PemWriter;->writeObject(Lorg/bouncycastle/util/io/pem/PemObjectGenerator;)V
    :try_end_0
    .catch Lorg/bouncycastle/util/io/pem/PemGenerationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemGenerationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemGenerationException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_0
    throw p1
.end method

.method public writeObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)V
    .locals 7

    :try_start_0
    new-instance v6, Lorg/bouncycastle/openssl/MiscPEMGenerator;

    iget-object v5, p0, Lorg/bouncycastle/openssl/PEMWriter;->provider:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/openssl/MiscPEMGenerator;-><init>(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;Ljava/lang/String;)V

    invoke-super {p0, v6}, Lorg/bouncycastle/util/io/pem/PemWriter;->writeObject(Lorg/bouncycastle/util/io/pem/PemObjectGenerator;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openssl/EncryptionException;

    invoke-virtual {p1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeObject(Lorg/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/util/io/pem/PemWriter;->writeObject(Lorg/bouncycastle/util/io/pem/PemObjectGenerator;)V

    return-void
.end method

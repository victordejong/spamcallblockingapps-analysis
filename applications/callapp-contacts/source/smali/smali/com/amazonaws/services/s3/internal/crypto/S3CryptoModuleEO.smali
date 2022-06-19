.class Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 51
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p1

    sget-object p2, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne p1, p2, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6

    .line 71
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6

    .line 61
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method


# virtual methods
.method protected final a(J)J
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result v0

    int-to-long v0, v0

    .line 152
    rem-long v2, p1, v0

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method final synthetic a(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;
    .locals 8

    .line 3113
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result v0

    .line 3114
    new-instance v7, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    int-to-long v0, v0

    sub-long v3, p2, v0

    move-object v1, v7

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    return-object v7
.end method

.method final synthetic a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 4

    .line 40
    check-cast p1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;

    .line 4047
    iget-object v0, p1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .line 4603
    iget-object v0, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 5036
    iget-object p1, p1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->a:[B

    .line 5101
    iget-object v1, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v2, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    iget v3, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    iget-object v0, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    .line 5102
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    .line 5101
    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    .locals 2

    .line 6094
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;

    .line 6095
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V

    .line 6603
    iget-object p1, p2, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 7325
    iget-object p1, p1, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 8032
    iput-object p1, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->a:[B

    return-object v0
.end method

.method public final a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 0

    .line 79
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method final bridge synthetic a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;

    .line 1105
    check-cast p2, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    .line 2058
    iget-object p2, p2, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->a:[B

    .line 3032
    iput-object p2, p1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->a:[B

    return-void
.end method

.method final b(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
    .locals 6

    .line 122
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    .line 132
    :goto_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result p1

    int-to-long v2, p1

    .line 133
    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

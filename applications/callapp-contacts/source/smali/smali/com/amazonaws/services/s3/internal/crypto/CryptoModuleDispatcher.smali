.class public Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule<",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/services/s3/model/CryptoMode;

.field private final b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

.field private final c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 8

    .line 75
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 76
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->clone()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object p5

    .line 77
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    .line 80
    invoke-virtual {p5, v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->setCryptoMode(Lcom/amazonaws/services/s3/model/CryptoMode;)V

    .line 82
    :cond_0
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->readOnly()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object p5

    .line 83
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    .line 84
    sget-object v1, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1;->a:[I

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 98
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 101
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->clone()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object p5

    .line 103
    :try_start_0
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {p5, v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->setCryptoMode(Lcom/amazonaws/services/s3/model/CryptoMode;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 110
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->readOnly()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    return-void

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 92
    :cond_2
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 95
    iput-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    return-void

    .line 86
    :cond_3
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAEStrict;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAEStrict;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 89
    iput-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 141
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 142
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 158
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 159
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 120
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 121
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 175
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 176
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    return-void
.end method

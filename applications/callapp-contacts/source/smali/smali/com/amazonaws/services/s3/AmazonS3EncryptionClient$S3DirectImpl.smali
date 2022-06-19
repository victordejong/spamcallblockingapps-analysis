.class final Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;
.super Lcom/amazonaws/services/s3/internal/S3Direct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "S3DirectImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/S3Direct;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$1;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;-><init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->a:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->a(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    return-void
.end method

.class public Lcom/amazonaws/services/s3/UploadObjectObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/UploadPartResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V
    .locals 5

    .line 1045
    iget-object v0, p1, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->a:Ljava/io/File;

    .line 1219
    new-instance v1, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 1220
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 1221
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 1222
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 2049
    iget v2, p1, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->b:I

    .line 1223
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 1224
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 2053
    iget-boolean v2, p1, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->c:Z

    .line 1225
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withLastPart(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->d:Ljava/lang/String;

    .line 1226
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->c:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 1227
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getUploadPartMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 2061
    iget-object p1, p1, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->d:Lcom/amazonaws/services/s3/OnFileDelete;

    .line 148
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->i:Ljava/lang/String;

    .line 2249
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/amazonaws/services/s3/UploadObjectObserver$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/amazonaws/services/s3/UploadObjectObserver$1;-><init>(Lcom/amazonaws/services/s3/UploadObjectObserver;Lcom/amazonaws/services/s3/model/UploadPartRequest;Ljava/io/File;Lcom/amazonaws/services/s3/OnFileDelete;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

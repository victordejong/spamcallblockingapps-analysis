.class public Lcom/amazonaws/services/s3/model/S3Object;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Ljava/io/Closeable;
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isRequesterCharged:Z

.field private key:Ljava/lang/String;

.field private metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private transient objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

.field private redirectLocation:Ljava/lang/String;

.field private taggingCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V

    :cond_0
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    return-object v0
.end method

.method public getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTaggingCount()Ljava/lang/Integer;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->taggingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->isRequesterCharged:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    return-void
.end method

.method public setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    return-void
.end method

.method public setObjectContent(Ljava/io/InputStream;)V
    .locals 1

    .line 129
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    return-void
.end method

.method public setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->redirectLocation:Ljava/lang/String;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->isRequesterCharged:Z

    return-void
.end method

.method public setTaggingCount(Ljava/lang/Integer;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->taggingCount:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S3Object [key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "<Unknown>"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

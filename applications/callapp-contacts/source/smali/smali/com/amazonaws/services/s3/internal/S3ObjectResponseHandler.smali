.class public Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;
.super Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler<",
        "Lcom/amazonaws/services/s3/model/S3Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1040
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Object;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3Object;-><init>()V

    .line 1041
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;->parseResponseMetadata(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v1

    .line 2053
    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v3, "x-amz-website-redirect-location"

    .line 1042
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3053
    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    .line 1043
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setRedirectLocation(Ljava/lang/String;)V

    .line 4053
    :cond_0
    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v3, "x-amz-request-charged"

    .line 1047
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 1048
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setRequesterCharged(Z)V

    .line 5053
    :cond_1
    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v3, "x-amz-tagging-count"

    .line 1051
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6053
    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    .line 1052
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setTaggingCount(Ljava/lang/Integer;)V

    .line 1055
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 1056
    invoke-virtual {p0, p1, v2}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;->populateObjectMetadata(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1058
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 7049
    iput-object v0, v1, Lcom/amazonaws/AmazonWebServiceResponse;->a:Ljava/lang/Object;

    return-object v1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

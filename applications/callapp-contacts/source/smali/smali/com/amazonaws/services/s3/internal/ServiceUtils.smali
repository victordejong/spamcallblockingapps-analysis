.class public Lcom/amazonaws/services/s3/internal/ServiceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Lcom/amazonaws/util/DateUtils;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->b:Lcom/amazonaws/logging/Log;

    .line 71
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a:Lcom/amazonaws/util/DateUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 239
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2266
    iget-boolean p1, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "com.amazonaws.services.s3.disableGetObjectMD5Validation"

    .line 479
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return v0

    .line 483
    :cond_1
    instance-of p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 484
    check-cast p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 486
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object p1

    if-eqz p1, :cond_2

    return v0

    .line 489
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_8

    return v0

    .line 492
    :cond_3
    instance-of p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-eqz p1, :cond_7

    .line 493
    check-cast p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 494
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 495
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    return v0

    .line 498
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    if-eqz p1, :cond_5

    return v0

    .line 501
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 502
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getEncryption()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 503
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getAwsKmsKeyId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    :cond_6
    return v0

    .line 506
    :cond_7
    instance-of p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz p1, :cond_8

    .line 507
    check-cast p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 508
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    return v1
.end method

.method public static a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/S3ClientOptions;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1266
    iget-boolean p1, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    .line 449
    :cond_1
    sget-object v1, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 451
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static b(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-"

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 151
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

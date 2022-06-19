.class public Lcom/callapp/contacts/util/aws/AWSUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 46
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/util/aws/AWSUtils;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 48
    const-class p1, Lcom/callapp/contacts/util/aws/AWSUtils;

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "AWS S3"

    .line 60
    invoke-static {}, Lcom/callapp/contacts/util/aws/AWSUtils;->getS3PutSessionCredentials()Lcom/callapp/common/model/json/JSONAWSSessionCredentials;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 64
    :cond_0
    new-instance v3, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 65
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {v3, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-virtual {v3, p3, p4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 71
    new-instance p2, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {p2, p5, p1, p0, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 72
    sget-object p0, Lcom/amazonaws/services/s3/model/StorageClass;->ReducedRedundancy:Lcom/amazonaws/services/s3/model/StorageClass;

    invoke-virtual {p2, p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 73
    sget-object p0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->PublicRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    invoke-virtual {p2, p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 75
    new-instance p0, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, p4, v1}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance p3, Lcom/amazonaws/services/s3/AmazonS3Client;

    sget-object p4, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    invoke-static {p4}, Lcom/amazonaws/regions/Region;->a(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;)V

    .line 78
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->getETag()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 80
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string p1, "Upload to S3 failed - no ETag"

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Lcom/callapp/contacts/util/aws/AWSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 86
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Upload to S3 failed - put exception"

    invoke-virtual {p1, v0, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-class p1, Lcom/callapp/contacts/util/aws/AWSUtils;

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://s3.amazonaws.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "jpg"

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 104
    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->a(IZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%s_%s.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getS3PutSessionCredentials()Lcom/callapp/common/model/json/JSONAWSSessionCredentials;
    .locals 6

    const-class v0, Lcom/callapp/contacts/util/aws/AWSUtils;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;

    const-string v3, "awss3putsessioncredentials"

    const/4 v4, 0x0

    .line 1215
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 109
    check-cast v1, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;

    if-nez v1, :cond_2

    .line 111
    new-instance v1, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;

    const-class v2, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;-><init>(Ljava/lang/Class;)V

    .line 113
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppServerHost()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getAWSCredentialsUrl()Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 2090
    iput-object v1, v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 115
    invoke-virtual {v3}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 118
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;

    if-eqz v1, :cond_1

    .line 120
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v2

    const-class v3, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;

    const-string v4, "awss3putsessioncredentials"

    const v5, 0x7f0b0003

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "AWS S3"

    const-string v4, "Upload to S3 failed - can\'t get credentials from server"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.class public Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;
.super Lcom/amazonaws/auth/AWS4Signer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>(Z)V

    return-void
.end method

.method private static f(Lcom/amazonaws/Request;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 123
    invoke-interface {p0}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-nez v0, :cond_1

    .line 124
    invoke-interface {p0}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p0

    instance-of p0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final a(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "x-amz-content-sha256"

    const-string v1, "required"

    .line 79
    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->f(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-interface {p1}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 2136
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v0

    .line 2137
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    const/16 v4, 0x1000

    new-array v4, v4, [B

    const/4 v5, -0x1

    .line 2144
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 2145
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v5, :cond_1

    int-to-long v6, v6

    add-long/2addr v2, v6

    goto :goto_0

    .line 2148
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "x-amz-decoded-content-length"

    .line 104
    invoke-interface {p1, v4, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v2, v3}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->a(J)J

    move-result-wide v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "STREAMING-AWS4-HMAC-SHA256-PAYLOAD"

    return-object p1

    .line 2138
    :cond_2
    :try_start_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Failed to get content length"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 99
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Cannot get the content-lenght of the request content."

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :cond_3
    invoke-super {p0, p1}, Lcom/amazonaws/auth/AWS4Signer;->a(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->f(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v2

    .line 1391
    iget-object v4, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->a:Ljava/lang/String;

    .line 1395
    iget-object v5, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->b:Ljava/lang/String;

    .line 1399
    iget-object v0, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->c:[B

    array-length v0, v0

    new-array v3, v0, [B

    .line 1400
    iget-object v0, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->c:[B

    iget-object v1, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->c:[B

    array-length v1, v1

    const/4 v6, 0x0

    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->a()[B

    move-result-object p2

    .line 56
    invoke-static {p2}, Lcom/amazonaws/util/BinaryUtils;->a([B)Ljava/lang/String;

    move-result-object v6

    .line 58
    new-instance p2, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    move-object v1, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V

    .line 60
    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

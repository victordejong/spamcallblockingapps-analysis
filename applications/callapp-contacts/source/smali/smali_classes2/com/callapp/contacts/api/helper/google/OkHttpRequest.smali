.class final Lcom/callapp/contacts/api/helper/google/OkHttpRequest;
.super Lcom/google/api/client/http/z;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/google/api/client/http/z;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->a:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final execute()Lcom/google/api/client/http/aa;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->a:Ljava/net/HttpURLConnection;

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->getStreamingContent()Lcom/google/api/client/a/ad;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Content-Type"

    .line 56
    invoke-virtual {p0, v2, v1}, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Content-Encoding"

    .line 60
    invoke-virtual {p0, v2, v1}, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {p0, v4, v3}, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_5

    const-string v4, "PUT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v3, v2, v6

    const-string v3, "%s with non-zero content length is not supported"

    .line 1067
    invoke-static {v1, v3, v2}, Lcom/google/common/base/m;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 68
    :cond_5
    :goto_1
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-ltz v5, :cond_6

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    long-to-int v2, v1

    .line 72
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 76
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->getStreamingContent()Lcom/google/api/client/a/ad;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/api/client/a/ad;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_8

    .line 78
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 76
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_7

    .line 78
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2

    .line 90
    :cond_8
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 91
    new-instance v1, Lcom/callapp/contacts/api/helper/google/OkHttpResponse;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/api/helper/google/OkHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-object v1

    :catchall_3
    move-exception v1

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    throw v1
.end method

.method public final setTimeout(II)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 46
    iget-object p2, p0, Lcom/callapp/contacts/api/helper/google/OkHttpRequest;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

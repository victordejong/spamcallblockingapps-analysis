.class public Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestRunner"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field public postData:Ljava/lang/String;

.field private requestId:J

.field public response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

.field private responseStreamer:Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;

.field public timeout:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->latch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p1, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->requestId:J

    iput-object p3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->postData:Ljava/lang/String;

    iput-object p5, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->contentType:Ljava/lang/String;

    iput p6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->timeout:I

    iput-object p7, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->responseStreamer:Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    return-object v0
.end method

.method public run()V
    .locals 14

    new-instance v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/HttpUtils$Response;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    const/4 v0, 0x2

    const/16 v1, 0x190

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URLConnection;

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->timeout:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->timeout:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v6, "User-Agent"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->headers:Ljava/util/Map;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HttpsURLConnection created"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->getInstance()Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v7, v5

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    iget-object v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->postData:Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Content-Type"

    iget-object v7, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Length"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->postData:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v7, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->postData:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/millennialmedia/internal/utils/IOUtils;->write(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Negotiated Cipher Suite: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    new-instance v7, Lcom/millennialmedia/internal/AdMetadata;

    invoke-direct {v7}, Lcom/millennialmedia/internal/AdMetadata;-><init>()V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v9, v3

    :goto_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iput-object v7, v6, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    :cond_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    iget-object v7, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iput v6, v7, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v8, 0xc8

    if-ne v6, v8, :cond_9

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v7, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->responseStreamer:Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;

    iget-object v8, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-interface {v7, v6, v8}, Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;->streamContent(Ljava/io/InputStream;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v3

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v7, v3

    move-object v3, v6

    move-object v6, v7

    goto/16 :goto_c

    :catch_0
    move-exception v7

    move-object v8, v7

    move-object v7, v3

    move-object v3, v6

    goto/16 :goto_7

    :catch_1
    move-object v7, v3

    move-object v3, v6

    move-object v6, v7

    goto/16 :goto_a

    :cond_9
    if-lt v6, v1, :cond_a

    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v8, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-static {v7}, Lcom/millennialmedia/internal/utils/IOUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "HTTP ERROR.\n\trequestId: %d\n\tcode: %d\n\tmessage: %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    iget-wide v12, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->requestId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v4

    iget-object v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v6, v6, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    aput-object v6, v11, v0

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v6, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v6, v3

    goto/16 :goto_c

    :catch_2
    move-exception v6

    move-object v8, v6

    move-object v6, v3

    goto :goto_8

    :catch_3
    move-object v6, v3

    goto/16 :goto_a

    :cond_a
    move-object v6, v3

    move-object v7, v6

    :goto_4
    invoke-static {v6}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    invoke-static {v7}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v5, :cond_d

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object v7, v3

    goto/16 :goto_c

    :catch_4
    move-exception v7

    move-object v8, v7

    move-object v7, v3

    goto :goto_8

    :catch_5
    move-object v7, v3

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    move-object v6, v3

    goto :goto_5

    :catch_6
    move-exception v6

    move-object v7, v3

    goto :goto_6

    :catch_7
    move-object v6, v3

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v5, v3

    move-object v6, v5

    :goto_5
    move-object v7, v6

    goto/16 :goto_c

    :catch_8
    move-exception v6

    move-object v5, v3

    move-object v7, v5

    :goto_6
    move-object v8, v6

    :goto_7
    move-object v6, v7

    :goto_8
    :try_start_7
    iget-object v9, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iput v1, v9, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "Error occurred when trying to get response content.\n\trequestId: %d\n\texception: %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v11, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->requestId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v0, v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    invoke-static {v9, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v9, "Debug info for requestId: %d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v10, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->requestId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v2

    invoke-static {v1, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_b
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    invoke-static {v7}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v5, :cond_d

    goto :goto_b

    :catch_9
    move-object v5, v3

    move-object v6, v5

    :goto_9
    move-object v7, v6

    :goto_a
    :try_start_8
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    const/16 v1, 0x198

    iput v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v8, "HTTP request socket timed out.\n\trequestId: %d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v9, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->requestId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v2

    invoke-static {v1, v8, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_c
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    invoke-static {v7}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v5, :cond_d

    :goto_b
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_5
    move-exception v0

    :goto_c
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    invoke-static {v7}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->requestId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->url:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->timeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "requestId: %d\n\turl: %s\n\ttimeout: %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->contentType:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "\n\tcontent type: %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->postData:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->postData:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "\n\tpost data: %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitForResponse(J)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->latch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "HTTP request timed out.\n\trequestId: %d\n\twait time: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->requestId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    const/16 p2, 0x198

    invoke-direct {p1, p2}, Lcom/millennialmedia/internal/utils/HttpUtils$Response;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Http request was interrupted.\n\trequestId: %d"

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    const/16 p2, 0x190

    invoke-direct {p1, p2}, Lcom/millennialmedia/internal/utils/HttpUtils$Response;-><init>(I)V

    return-object p1
.end method

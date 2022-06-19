.class public Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestRunner"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;

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

.field public postDataStream:Ljava/io/InputStream;

.field public response:Lcom/verizon/ads/utils/HttpUtils$Response;

.field public timeout:I

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/io/InputStream;Ljava/lang/String;ILcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->a:Ljava/util/concurrent/CountDownLatch;

    .line 152
    iput-wide p1, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->b:J

    .line 153
    iput-object p3, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->url:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->postDataStream:Ljava/io/InputStream;

    .line 155
    iput-object p5, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->c:Ljava/lang/String;

    .line 156
    iput p6, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->timeout:I

    .line 157
    iput-object p7, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->d:Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;

    return-void
.end method


# virtual methods
.method final a(J)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->a:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    iget-object p1, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    return-object p1

    :cond_0
    const/4 v2, 0x3

    .line 194
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-static {}, Lcom/verizon/ads/utils/HttpUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "HTTP request timed out.\n\trequestId: %d\n\twait time: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->b:J

    .line 196
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v1

    .line 195
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 199
    :cond_1
    new-instance p1, Lcom/verizon/ads/utils/HttpUtils$Response;

    const/16 p2, 0x198

    invoke-direct {p1, p2}, Lcom/verizon/ads/utils/HttpUtils$Response;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 203
    :catch_0
    invoke-static {}, Lcom/verizon/ads/utils/HttpUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Http request was interrupted.\n\trequestId: %d"

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 205
    new-instance p1, Lcom/verizon/ads/utils/HttpUtils$Response;

    const/16 p2, 0x190

    invoke-direct {p1, p2}, Lcom/verizon/ads/utils/HttpUtils$Response;-><init>(I)V

    return-object p1
.end method

.method public run()V
    .locals 15

    .line 213
    new-instance v0, Lcom/verizon/ads/utils/HttpUtils$Response;

    invoke-direct {v0}, Lcom/verizon/ads/utils/HttpUtils$Response;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    const/16 v0, 0x190

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 220
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 222
    :try_start_1
    iget v7, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->timeout:I

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 223
    iget v7, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->timeout:I

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 224
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 225
    invoke-virtual {v6, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 226
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 228
    iget-object v7, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->headers:Ljava/util/Map;

    if-eqz v7, :cond_0

    .line 229
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v9, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    instance-of v7, v6, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v7, :cond_1

    .line 235
    invoke-static {}, Lcom/verizon/ads/utils/HttpUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object v7

    const-string v8, "HttpsURLConnection created"

    invoke-virtual {v7, v8}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->getInstance()Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 239
    move-object v8, v6

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 244
    :cond_1
    iget-object v7, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->postDataStream:Ljava/io/InputStream;

    if-nez v7, :cond_2

    const-string v7, "GET"

    .line 245
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_2

    .line 250
    :cond_2
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v7, "POST"

    .line 251
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v7, "Content-Type"

    .line 252
    iget-object v8, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v6, v5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 254
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 256
    :try_start_2
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 258
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    iget-object v9, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->postDataStream:Ljava/io/InputStream;

    new-array v10, v1, [Ljava/io/OutputStream;

    aput-object v7, v10, v5

    aput-object v8, v10, v4

    invoke-static {v9, v10}, Lcom/verizon/ads/utils/IOUtils;->read(Ljava/io/InputStream;[Ljava/io/OutputStream;)I

    .line 260
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string v10, "UTF-8"

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/verizon/ads/utils/HttpUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object v8

    const-string v10, "Request URL: %s\nPost data: %s"

    new-array v11, v1, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->url:Ljava/lang/String;

    aput-object v12, v11, v5

    aput-object v9, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_3
    iget-object v8, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->postDataStream:Ljava/io/InputStream;

    new-array v9, v4, [Ljava/io/OutputStream;

    aput-object v7, v9, v5

    invoke-static {v8, v9}, Lcom/verizon/ads/utils/IOUtils;->read(Ljava/io/InputStream;[Ljava/io/OutputStream;)I

    .line 267
    :goto_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 268
    invoke-static {v7}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 272
    :goto_2
    :try_start_3
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    instance-of v7, v6, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v7, :cond_4

    .line 274
    move-object v7, v6

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    .line 276
    invoke-static {}, Lcom/verizon/ads/utils/HttpUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Negotiated Cipher Suite: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 281
    :cond_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 283
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 284
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 285
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 289
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 290
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v10, v3

    .line 293
    :goto_4
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 297
    :cond_7
    iget-object v7, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    iput-object v8, v7, Lcom/verizon/ads/utils/HttpUtils$Response;->adMetadata:Ljava/util/Map;

    .line 300
    :cond_8
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 301
    iget-object v8, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    iput v7, v8, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_9

    .line 304
    iget-object v7, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/verizon/ads/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    .line 305
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 306
    :try_start_4
    iget-object v8, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->d:Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;

    iget-object v9, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    invoke-interface {v8, v7, v9}, Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;->streamContent(Ljava/io/InputStream;Lcom/verizon/ads/utils/HttpUtils$Response;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v8, v3

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v3

    move-object v3, v7

    move-object v7, v8

    goto/16 :goto_d

    :catch_0
    move-exception v8

    move-object v9, v8

    move-object v8, v3

    move-object v3, v7

    goto/16 :goto_9

    :catch_1
    move-object v8, v3

    move-object v3, v7

    move-object v7, v8

    goto/16 :goto_c

    :cond_9
    if-lt v7, v0, :cond_a

    .line 309
    :try_start_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 310
    :try_start_6
    iget-object v9, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    invoke-static {v8}, Lcom/verizon/ads/utils/IOUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    .line 312
    invoke-static {}, Lcom/verizon/ads/utils/HttpUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "HTTP ERROR.\n\trequestId: %d\n\tcode: %d\n\tmessage: %s"

    new-array v12, v2, [Ljava/lang/Object;

    iget-wide v13, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->b:J

    .line 313
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v4

    iget-object v7, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    iget-object v7, v7, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    aput-object v7, v12, v1

    .line 312
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v7, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v7, v3

    goto/16 :goto_d

    :catch_2
    move-exception v7

    move-object v9, v7

    move-object v7, v3

    goto :goto_a

    :catch_3
    move-object v7, v3

    goto/16 :goto_c

    :cond_a
    move-object v7, v3

    move-object v8, v7

    .line 335
    :goto_5
    invoke-static {v7}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 336
    invoke-static {v3}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 337
    invoke-static {v8}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v6, :cond_b

    .line 340
    :goto_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 344
    :cond_b
    iget-object v0, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_2
    move-exception v0

    move-object v8, v3

    goto/16 :goto_d

    :catch_4
    move-exception v8

    move-object v9, v8

    move-object v8, v3

    goto :goto_a

    :catch_5
    move-object v8, v3

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object v7, v3

    goto :goto_7

    :catch_6
    move-exception v7

    move-object v8, v3

    goto :goto_8

    :catch_7
    move-object v7, v3

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v6, v3

    move-object v7, v6

    :goto_7
    move-object v8, v7

    goto/16 :goto_d

    :catch_8
    move-exception v7

    move-object v6, v3

    move-object v8, v6

    :goto_8
    move-object v9, v7

    :goto_9
    move-object v7, v8

    .line 324
    :goto_a
    :try_start_7
    iget-object v10, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    iput v0, v10, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    .line 326
    invoke-static {}, Lcom/verizon/ads/utils/HttpUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "Error occurred when trying to get response content.\n\trequestId: %d\n\texception: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v12, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->b:J

    .line 327
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v1, v5

    .line 328
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v4

    .line 326
    invoke-static {v10, v11, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 330
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 331
    invoke-static {}, Lcom/verizon/ads/utils/HttpUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Debug info for requestId: %d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v10, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 335
    :cond_c
    invoke-static {v3}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 336
    invoke-static {v7}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 337
    invoke-static {v8}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v6, :cond_b

    goto :goto_6

    :catch_9
    move-object v6, v3

    move-object v7, v6

    :goto_b
    move-object v8, v7

    .line 317
    :goto_c
    :try_start_8
    iget-object v0, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->response:Lcom/verizon/ads/utils/HttpUtils$Response;

    const/16 v1, 0x198

    iput v1, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    .line 319
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 320
    invoke-static {}, Lcom/verizon/ads/utils/HttpUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HTTP request socket timed out.\n\trequestId: %d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v9, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 335
    :cond_d
    invoke-static {v3}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 336
    invoke-static {v7}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 337
    invoke-static {v8}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v6, :cond_b

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    .line 335
    :goto_d
    invoke-static {v3}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 336
    invoke-static {v7}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 337
    invoke-static {v8}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v6, :cond_e

    .line 340
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 344
    :cond_e
    iget-object v1, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->url:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->timeout:I

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "requestId: %d\n\turl: %s\n\ttimeout: %d"

    .line 168
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "\n\tcontent type: %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

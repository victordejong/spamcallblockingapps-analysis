.class public Lcom/yanzhenjie/nohttp/URLConnectionNetworkExecutor;
.super Ljava/lang/Object;
.source "URLConnectionNetworkExecutor.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/NetworkExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getErrorStream(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/URLConnectionNetworkExecutor;->gzipInputStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static getInputStream(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/URLConnectionNetworkExecutor;->gzipInputStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getServerStream(ILjava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    .line 1
    invoke-static {p1, p2}, Lcom/yanzhenjie/nohttp/URLConnectionNetworkExecutor;->getErrorStream(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/yanzhenjie/nohttp/URLConnectionNetworkExecutor;->getInputStream(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static gzipInputStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yanzhenjie/nohttp/tools/HeaderUtils;->isGzipContent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private isAllowBody(Lcom/yanzhenjie/nohttp/RequestMethod;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/RequestMethod;->allowRequestBody()Z

    move-result v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->DELETE:Lcom/yanzhenjie/nohttp/RequestMethod;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public execute(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Network;
    .locals 8

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 8
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/RequestMethod;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanzhenjie/nohttp/URLConnectionNetworkExecutor;->isAllowBody(Lcom/yanzhenjie/nohttp/RequestMethod;)Z

    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v2

    const-string v3, "Connection"

    .line 18
    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x13

    if-eqz v4, :cond_3

    .line 19
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 20
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v5, :cond_4

    const-string v4, "keep-alive"

    goto :goto_1

    :cond_4
    const-string v4, "close"

    :goto_1
    invoke-virtual {v2, v3, v4}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getContentLength()J

    move-result-wide v3

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v3, v6

    if-gtz p1, :cond_6

    long-to-int p1, v3

    .line 22
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_2

    .line 23
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_7

    .line 24
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_2

    :cond_7
    const/high16 p1, 0x40000

    .line 25
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 26
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :cond_8
    invoke-virtual {v2}, Lcom/yanzhenjie/nohttp/Headers;->toRequestHeaders()Ljava/util/Map;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 33
    :cond_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 34
    new-instance p1, Lcom/yanzhenjie/nohttp/URLConnectionNetwork;

    invoke-direct {p1, v0}, Lcom/yanzhenjie/nohttp/URLConnectionNetwork;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

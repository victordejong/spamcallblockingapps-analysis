.class public Lcom/yanzhenjie/nohttp/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# instance fields
.field private mExecutor:Lcom/yanzhenjie/nohttp/NetworkExecutor;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/NetworkExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/HttpConnection;->mExecutor:Lcom/yanzhenjie/nohttp/NetworkExecutor;

    return-void
.end method

.method private createConnectionAndWriteData(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Network;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;)",
            "Lcom/yanzhenjie/nohttp/Network;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRetryCount()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/HttpConnection;->createNetwork(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Network;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move-object v3, v2

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/RequestMethod;->allowRequestBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v4}, Lcom/yanzhenjie/nohttp/Network;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/nohttp/HttpConnection;->writeRequestBody(Lcom/yanzhenjie/nohttp/BasicRequest;Ljava/io/OutputStream;)V

    :cond_1
    return-object v4

    .line 5
    :cond_2
    throw v3
.end method

.method private createNetwork(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Network;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;)",
            "Lcom/yanzhenjie/nohttp/Network;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->onPreExecute()V

    .line 2
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->url()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v1, v3, v2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "Connection"

    .line 7
    invoke-virtual {v1, v2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "keep-alive"

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/yanzhenjie/nohttp/RequestMethod;->allowRequestBody()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-virtual {v1, v3, v2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :cond_2
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yanzhenjie/nohttp/Headers;->addCookie(Ljava/net/URI;Ljava/net/CookieHandler;)V

    .line 14
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/HttpConnection;->mExecutor:Lcom/yanzhenjie/nohttp/NetworkExecutor;

    invoke-interface {v0, p1}, Lcom/yanzhenjie/nohttp/NetworkExecutor;->execute(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Network;

    move-result-object p1

    return-object p1
.end method

.method private handleRedirect(Lcom/yanzhenjie/nohttp/BasicRequest;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;",
            "Lcom/yanzhenjie/nohttp/Headers;",
            ")",
            "Lcom/yanzhenjie/nohttp/Connection;"
        }
    .end annotation

    const-string v0, "/"

    .line 1
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRedirectHandler()Lcom/yanzhenjie/nohttp/RedirectHandler;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p2}, Lcom/yanzhenjie/nohttp/RedirectHandler;->isDisallowedRedirect(Lcom/yanzhenjie/nohttp/Headers;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    new-instance p1, Lcom/yanzhenjie/nohttp/Connection;

    invoke-direct {p1, v2, p2, v2, v2}, Lcom/yanzhenjie/nohttp/Connection;-><init>(Lcom/yanzhenjie/nohttp/Network;Lcom/yanzhenjie/nohttp/Headers;Ljava/io/InputStream;Ljava/lang/Exception;)V

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/yanzhenjie/nohttp/RedirectHandler;->onRedirect(Lcom/yanzhenjie/nohttp/BasicRequest;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_4

    .line 5
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/Headers;->getLocation()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->url()Ljava/lang/String;

    move-result-object v1

    .line 8
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_3
    new-instance v2, Lcom/yanzhenjie/nohttp/BasicRequest;

    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    .line 12
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRedirectHandler()Lcom/yanzhenjie/nohttp/RedirectHandler;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->setRedirectHandler(Lcom/yanzhenjie/nohttp/RedirectHandler;)Lcom/yanzhenjie/nohttp/BasicRequest;

    .line 13
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/yanzhenjie/nohttp/BasicRequest;

    .line 14
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/yanzhenjie/nohttp/BasicRequest;

    .line 15
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->setParamsEncoding(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    .line 16
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getProxy()Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->setProxy(Ljava/net/Proxy;)Lcom/yanzhenjie/nohttp/BasicRequest;

    .line 17
    :cond_4
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/nohttp/HttpConnection;->getConnection(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Connection;

    move-result-object p1

    return-object p1
.end method

.method public static hasResponseBody(I)Z
    .locals 1

    const/16 v0, 0x64

    if-gt v0, p0, :cond_0

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xcc

    if-eq p0, v0, :cond_2

    const/16 v0, 0xcd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12c

    if-gt v0, p0, :cond_1

    const/16 v0, 0x190

    if-lt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasResponseBody(Lcom/yanzhenjie/nohttp/RequestMethod;I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->HEAD:Lcom/yanzhenjie/nohttp/RequestMethod;

    if-eq p0, v0, :cond_0

    invoke-static {p1}, Lcom/yanzhenjie/nohttp/HttpConnection;->hasResponseBody(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseResponseHeaders(Ljava/net/URI;ILjava/util/Map;)Lcom/yanzhenjie/nohttp/Headers;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/yanzhenjie/nohttp/Headers;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save cookie filed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3
    :goto_0
    new-instance p1, Lcom/yanzhenjie/nohttp/Headers;

    invoke-direct {p1}, Lcom/yanzhenjie/nohttp/Headers;-><init>()V

    .line 4
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ResponseCode"

    invoke-virtual {p1, p3, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p3}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method private writeRequestBody(Lcom/yanzhenjie/nohttp/BasicRequest;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    const-string v0, "-------Send handle data start-------"

    .line 1
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->toBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->onWriteRequestBody(Ljava/io/OutputStream;)V

    .line 4
    invoke-static {p2}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-string p1, "-------Send handle data end-------"

    .line 5
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getConnection(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Connection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;)",
            "Lcom/yanzhenjie/nohttp/Connection;"
        }
    .end annotation

    const-string v0, "."

    const-string v1, "--------------Request start--------------"

    .line 1
    invoke-static {v1}, Lcom/yanzhenjie/nohttp/Logger;->d(Ljava/lang/Object;)V

    .line 2
    new-instance v1, Lcom/yanzhenjie/nohttp/Headers;

    invoke-direct {v1}, Lcom/yanzhenjie/nohttp/Headers;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->url()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isNetworkAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/HttpConnection;->createConnectionAndWriteData(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Network;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "-------Response start-------"

    .line 6
    invoke-static {v5}, Lcom/yanzhenjie/nohttp/Logger;->d(Ljava/lang/Object;)V

    .line 7
    invoke-interface {v4}, Lcom/yanzhenjie/nohttp/Network;->getResponseCode()I

    move-result v5

    .line 8
    new-instance v6, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->url()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/yanzhenjie/nohttp/Network;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0, v6, v5, v7}, Lcom/yanzhenjie/nohttp/HttpConnection;->parseResponseHeaders(Ljava/net/URI;ILjava/util/Map;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v1

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_2

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_2

    const/16 v6, 0x12f

    if-eq v5, v6, :cond_2

    const/16 v6, 0x133

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/yanzhenjie/nohttp/HttpConnection;->hasResponseBody(Lcom/yanzhenjie/nohttp/RequestMethod;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {v4, v5, v1}, Lcom/yanzhenjie/nohttp/Network;->getServerStream(ILcom/yanzhenjie/nohttp/Headers;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/yanzhenjie/nohttp/HttpConnection;->handleRedirect(Lcom/yanzhenjie/nohttp/BasicRequest;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/Connection;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/Connection;->responseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/Connection;->serverStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/Connection;->exception()Ljava/lang/Exception;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p1

    move-object p1, v5

    :goto_1
    :try_start_3
    const-string v5, "-------Response end-------"

    .line 15
    invoke-static {v5}, Lcom/yanzhenjie/nohttp/Logger;->d(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    .line 16
    invoke-static {v3}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v3, v5

    goto :goto_2

    :catch_2
    move-object p1, v5

    goto :goto_3

    :catch_3
    move-object p1, v5

    goto :goto_4

    :catch_4
    move-object p1, v5

    goto/16 :goto_5

    :catch_5
    move-exception p1

    goto :goto_2

    :catch_6
    move-object p1, v3

    goto :goto_3

    :catch_7
    move-object p1, v3

    goto :goto_4

    :catch_8
    move-object p1, v3

    goto :goto_5

    .line 17
    :cond_3
    :try_start_4
    new-instance p1, Lcom/yanzhenjie/nohttp/error/NetworkError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The network is not available, please check the network. The requested url is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/yanzhenjie/nohttp/error/NetworkError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_9
    move-exception p1

    move-object v4, v3

    .line 18
    :goto_2
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V

    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    goto :goto_7

    :catch_a
    move-object p1, v3

    move-object v4, p1

    .line 19
    :catch_b
    :goto_3
    :try_start_5
    new-instance v5, Lcom/yanzhenjie/nohttp/error/TimeoutError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request time out: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/yanzhenjie/nohttp/error/TimeoutError;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :catch_c
    move-object p1, v3

    move-object v4, p1

    .line 20
    :catch_d
    :goto_4
    new-instance v5, Lcom/yanzhenjie/nohttp/error/UnKnownHostError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hostname can not be resolved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/yanzhenjie/nohttp/error/UnKnownHostError;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :catch_e
    move-object p1, v3

    move-object v4, p1

    .line 21
    :catch_f
    :goto_5
    new-instance v5, Lcom/yanzhenjie/nohttp/error/URLError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The url is malformed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/yanzhenjie/nohttp/error/URLError;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 22
    :goto_6
    invoke-static {v5}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V

    move-object v3, v5

    :cond_4
    :goto_7
    const-string v0, "--------------Request finish--------------"

    .line 23
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/Logger;->d(Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/yanzhenjie/nohttp/Connection;

    invoke-direct {v0, v4, v1, p1, v3}, Lcom/yanzhenjie/nohttp/Connection;-><init>(Lcom/yanzhenjie/nohttp/Network;Lcom/yanzhenjie/nohttp/Headers;Ljava/io/InputStream;Ljava/lang/Exception;)V

    return-object v0

    :goto_8
    if-eqz v3, :cond_5

    .line 25
    invoke-static {v3}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V

    :cond_5
    throw p1
.end method

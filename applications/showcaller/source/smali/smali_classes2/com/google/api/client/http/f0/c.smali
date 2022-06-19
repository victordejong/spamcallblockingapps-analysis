.class public final Lcom/google/api/client/http/f0/c;
.super Lcom/google/api/client/http/w;
.source "ApacheHttpTransport.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final c:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/client/http/f0/c;->g()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/f0/c;-><init>(Lorg/apache/http/client/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/api/client/http/w;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/api/client/http/f0/c;->c:Lorg/apache/http/client/HttpClient;

    .line 4
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/api/client/http/f0/c;->g()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .line 6
    :cond_0
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const/4 v0, 0x0

    const-string v1, "http.protocol.handle-redirects"

    .line 7
    invoke-interface {p1, v1, v0}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public static g()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 3

    .line 1
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {}, Lcom/google/api/client/http/f0/c;->i()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/api/client/http/f0/c;->h(Lorg/apache/http/conn/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static h(Lorg/apache/http/conn/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 2
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    const-string v3, "http"

    const/16 v4, 0x50

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 3
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p0, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 4
    new-instance p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 5
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 6
    new-instance p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    if-eqz p2, :cond_0

    .line 7
    new-instance p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;

    invoke-direct {p0, v0, p2}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    invoke-virtual {v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V

    :cond_0
    return-object v1
.end method

.method static i()Lorg/apache/http/params/HttpParams;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v1, 0x2000

    .line 3
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0xc8

    .line 4
    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 5
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/z;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/f0/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/f0/a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/f0/a;
    .locals 1

    const-string v0, "DELETE"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {p1, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "GET"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "HEAD"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p1, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {p1, p2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "POST"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "PUT"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {p1, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "TRACE"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance p1, Lorg/apache/http/client/methods/HttpTrace;

    invoke-direct {p1, p2}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "OPTIONS"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    new-instance p1, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {p1, p2}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_6
    new-instance v0, Lcom/google/api/client/http/f0/e;

    invoke-direct {v0, p1, p2}, Lcom/google/api/client/http/f0/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 16
    :goto_0
    new-instance p2, Lcom/google/api/client/http/f0/a;

    iget-object v0, p0, Lcom/google/api/client/http/f0/c;->c:Lorg/apache/http/client/HttpClient;

    invoke-direct {p2, v0, p1}, Lcom/google/api/client/http/f0/a;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object p2
.end method

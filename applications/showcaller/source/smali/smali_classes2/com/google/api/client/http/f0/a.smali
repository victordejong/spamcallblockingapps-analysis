.class final Lcom/google/api/client/http/f0/a;
.super Lcom/google/api/client/http/z;
.source "ApacheHttpRequest.java"


# instance fields
.field private final e:Lorg/apache/http/client/HttpClient;

.field private final f:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/http/z;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/http/f0/a;->e:Lorg/apache/http/client/HttpClient;

    .line 3
    iput-object p2, p0, Lcom/google/api/client/http/f0/a;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/f0/a;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/google/api/client/http/a0;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/z;->f()Lcom/google/api/client/util/z;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/api/client/http/f0/a;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    instance-of v1, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "Apache HTTP client does not support %s requests with content."

    .line 4
    invoke-static {v1, v0, v3}, Lcom/google/api/client/util/w;->h(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcom/google/api/client/http/f0/d;

    invoke-virtual {p0}, Lcom/google/api/client/http/z;->d()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/api/client/http/z;->f()Lcom/google/api/client/util/z;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/api/client/http/f0/d;-><init>(JLcom/google/api/client/util/z;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/api/client/http/z;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/api/client/http/z;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/api/client/http/z;->d()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setChunked(Z)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/http/f0/a;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 11
    :cond_1
    new-instance v0, Lcom/google/api/client/http/f0/b;

    iget-object v1, p0, Lcom/google/api/client/http/f0/a;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v2, p0, Lcom/google/api/client/http/f0/a;->e:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/f0/b;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method

.method public k(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/f0/a;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    int-to-long v1, p1

    .line 2
    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 3
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 4
    invoke-static {v0, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

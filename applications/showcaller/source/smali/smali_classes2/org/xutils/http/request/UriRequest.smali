.class public abstract Lorg/xutils/http/request/UriRequest;
.super Ljava/lang/Object;
.source "UriRequest.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected final loader:Lorg/xutils/http/loader/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/http/loader/Loader<",
            "*>;"
        }
    .end annotation
.end field

.field protected final params:Lorg/xutils/http/RequestParams;

.field protected progressHandler:Lorg/xutils/http/ProgressHandler;

.field protected final queryUrl:Ljava/lang/String;

.field protected requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

.field protected responseParser:Lorg/xutils/http/app/ResponseParser;


# direct methods
.method public constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/xutils/http/request/UriRequest;->progressHandler:Lorg/xutils/http/ProgressHandler;

    .line 3
    iput-object v0, p0, Lorg/xutils/http/request/UriRequest;->responseParser:Lorg/xutils/http/app/ResponseParser;

    .line 4
    iput-object v0, p0, Lorg/xutils/http/request/UriRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    .line 5
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    .line 6
    invoke-virtual {p0, p1}, Lorg/xutils/http/request/UriRequest;->buildQueryUrl(Lorg/xutils/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Lorg/xutils/http/loader/LoaderFactory;->getLoader(Ljava/lang/reflect/Type;)Lorg/xutils/http/loader/Loader;

    move-result-object p2

    iput-object p2, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    .line 8
    invoke-virtual {p2, p1}, Lorg/xutils/http/loader/Loader;->setParams(Lorg/xutils/http/RequestParams;)V

    return-void
.end method


# virtual methods
.method protected buildQueryUrl(Lorg/xutils/http/RequestParams;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract clearCacheHeader()V
.end method

.method public abstract close()V
.end method

.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getETag()Ljava/lang/String;
.end method

.method public abstract getExpiration()J
.end method

.method public abstract getHeaderFieldDate(Ljava/lang/String;J)J
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getLastModified()J
.end method

.method public getParams()Lorg/xutils/http/RequestParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    return-object v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getResponseMessage()Ljava/lang/String;
.end method

.method public abstract isLoading()Z
.end method

.method public loadResult()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p0}, Lorg/xutils/http/loader/Loader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract loadResultFromCache()Ljava/lang/Object;
.end method

.method public save2Cache()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/request/UriRequest$a;

    invoke-direct {v1, p0}, Lorg/xutils/http/request/UriRequest$a;-><init>(Lorg/xutils/http/request/UriRequest;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract sendRequest()V
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest;->progressHandler:Lorg/xutils/http/ProgressHandler;

    .line 2
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    return-void
.end method

.method public setRequestInterceptListener(Lorg/xutils/http/app/RequestInterceptListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    return-void
.end method

.method public setResponseParser(Lorg/xutils/http/app/ResponseParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/request/UriRequest;->responseParser:Lorg/xutils/http/app/ResponseParser;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

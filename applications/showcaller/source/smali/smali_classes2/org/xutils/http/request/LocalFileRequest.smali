.class public Lorg/xutils/http/request/LocalFileRequest;
.super Lorg/xutils/http/request/UriRequest;
.source "LocalFileRequest.java"


# instance fields
.field private d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/UriRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private a()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    .line 4
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public clearCacheHeader()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->d:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->d:Ljava/io/InputStream;

    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 0

    return-wide p2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->d:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->d:Ljava/io/InputStream;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/LocalFileRequest;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/16 v0, 0x194

    :goto_0
    return v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadResult()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    instance-of v1, v0, Lorg/xutils/http/loader/FileLoader;

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/xutils/http/request/LocalFileRequest;->a()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Lorg/xutils/http/loader/Loader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadResultFromCache()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public save2Cache()V
    .locals 0

    return-void
.end method

.method public sendRequest()V
    .locals 0

    return-void
.end method

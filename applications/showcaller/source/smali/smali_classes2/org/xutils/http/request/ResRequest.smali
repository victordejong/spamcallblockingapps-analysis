.class public Lorg/xutils/http/request/ResRequest;
.super Lorg/xutils/http/request/UriRequest;
.source "ResRequest.java"


# static fields
.field private static d:J


# instance fields
.field protected contentLength:J

.field protected inputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/UriRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lorg/xutils/http/request/ResRequest;->contentLength:J

    return-void
.end method

.method private a()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resId not found in url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearCacheHeader()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

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
    :try_start_0
    invoke-virtual {p0}, Lorg/xutils/http/request/ResRequest;->getInputStream()Ljava/io/InputStream;

    .line 2
    iget-wide v0, p0, Lorg/xutils/http/request/ResRequest;->contentLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 0

    return-wide p2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lorg/xutils/http/request/ResRequest;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/xutils/http/request/ResRequest;->contentLength:J

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()J
    .locals 6

    .line 1
    sget-wide v0, Lorg/xutils/http/request/ResRequest;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sput-wide v0, Lorg/xutils/http/request/ResRequest;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    sget-wide v0, Lorg/xutils/http/request/ResRequest;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    sput-wide v2, Lorg/xutils/http/request/ResRequest;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v0, v2, v2

    if-nez v0, :cond_2

    .line 10
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/xutils/http/request/ResRequest;->d:J

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 11
    sget-wide v4, Lorg/xutils/http/request/ResRequest;->d:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/xutils/http/request/ResRequest;->d:J

    .line 13
    :cond_1
    throw v0

    .line 14
    :cond_2
    :goto_1
    sget-wide v0, Lorg/xutils/http/request/ResRequest;->d:J

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/xutils/http/request/ResRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

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
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p0}, Lorg/xutils/http/loader/Loader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadResultFromCache()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    .line 2
    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/xutils/cache/LruDiskCache;->setMaxSize(J)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/xutils/http/request/ResRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getLastModify()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/xutils/http/request/ResRequest;->getLastModified()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v1, v0}, Lorg/xutils/http/loader/Loader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public sendRequest()V
    .locals 0

    return-void
.end method

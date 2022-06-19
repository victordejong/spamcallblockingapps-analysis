.class public abstract Lorg/xutils/http/loader/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected progressHandler:Lorg/xutils/http/ProgressHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;[B)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v0}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 3
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 5
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setEtag(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getExpiration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/xutils/cache/DiskCacheEntity;->setExpires(J)V

    .line 7
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setLastModify(Ljava/util/Date;)V

    .line 8
    invoke-virtual {v0, p2}, Lorg/xutils/cache/DiskCacheEntity;->setTextContent(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p3}, Lorg/xutils/cache/DiskCacheEntity;->setBytesContent([B)V

    .line 10
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/xutils/cache/LruDiskCache;->put(Lorg/xutils/cache/DiskCacheEntity;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/http/request/UriRequest;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/cache/DiskCacheEntity;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract newInstance()Lorg/xutils/http/loader/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract save2Cache(Lorg/xutils/http/request/UriRequest;)V
.end method

.method protected saveByteArrayCache(Lorg/xutils/http/request/UriRequest;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lorg/xutils/http/loader/Loader;->a(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;[B)V

    return-void
.end method

.method protected saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/xutils/http/loader/Loader;->a(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;[B)V

    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 0

    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/loader/Loader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    return-void
.end method

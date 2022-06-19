.class Lorg/xutils/http/loader/b;
.super Lorg/xutils/http/loader/Loader;
.source "ByteArrayLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader<",
        "[B>;"
    }
.end annotation


# instance fields
.field private a:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/b;->load(Lorg/xutils/http/request/UriRequest;)[B

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)[B
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 3
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/loader/b;->a:[B

    return-object p1
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/b;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)[B

    move-result-object p1

    return-object p1
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)[B
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getBytesContent()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    array-length v0, p1

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/xutils/http/loader/b;

    invoke-direct {v0}, Lorg/xutils/http/loader/b;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/loader/b;->a:[B

    invoke-virtual {p0, p1, v0}, Lorg/xutils/http/loader/Loader;->saveByteArrayCache(Lorg/xutils/http/request/UriRequest;[B)V

    return-void
.end method

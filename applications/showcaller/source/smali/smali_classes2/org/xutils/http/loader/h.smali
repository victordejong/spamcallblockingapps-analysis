.class Lorg/xutils/http/loader/h;
.super Lorg/xutils/http/loader/Loader;
.source "StringLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    const-string v0, "UTF-8"

    .line 2
    iput-object v0, p0, Lorg/xutils/http/loader/h;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/xutils/http/loader/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/h;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 3
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lorg/xutils/http/loader/h;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/loader/h;->b:Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/h;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getTextContent()Ljava/lang/String;

    move-result-object p1

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/xutils/http/loader/h;

    invoke-direct {v0}, Lorg/xutils/http/loader/h;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/loader/h;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/xutils/http/loader/Loader;->saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V

    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/xutils/http/BaseParams;->getCharset()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/xutils/http/loader/h;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

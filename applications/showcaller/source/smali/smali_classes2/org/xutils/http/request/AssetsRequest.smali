.class public Lorg/xutils/http/request/AssetsRequest;
.super Lorg/xutils/http/request/ResRequest;
.source "AssetsRequest.java"


# direct methods
.method public constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/ResRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    const-string v2, "assets://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/xutils/http/request/ResRequest;->contentLength:J

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/ResRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

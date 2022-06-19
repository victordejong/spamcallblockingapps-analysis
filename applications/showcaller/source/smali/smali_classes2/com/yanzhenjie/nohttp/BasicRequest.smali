.class public Lcom/yanzhenjie/nohttp/BasicRequest;
.super Ljava/lang/Object;
.source "BasicRequest.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/able/Startable;
.implements Lcom/yanzhenjie/nohttp/able/Cancelable;
.implements Lcom/yanzhenjie/nohttp/able/Finishable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yanzhenjie/nohttp/BasicRequest;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yanzhenjie/nohttp/able/Startable;",
        "Lcom/yanzhenjie/nohttp/able/Cancelable;",
        "Lcom/yanzhenjie/nohttp/able/Finishable;"
    }
.end annotation


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final endBoundary:Ljava/lang/String;

.field private isFinished:Z

.field private isMultipartFormEnable:Z

.field private isStart:Z

.field private mCancelSign:Ljava/lang/Object;

.field private mCancelable:Lcom/yanzhenjie/nohttp/able/Cancelable;

.field private mConnectTimeout:I

.field private mHeaders:Lcom/yanzhenjie/nohttp/Headers;

.field private mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private mParamEncoding:Ljava/lang/String;

.field private mParams:Lcom/yanzhenjie/nohttp/Params;

.field private mPriority:Lcom/yanzhenjie/nohttp/Priority;

.field private mProxy:Ljava/net/Proxy;

.field private mReadTimeout:I

.field private mRedirectHandler:Lcom/yanzhenjie/nohttp/RedirectHandler;

.field private mRequestBody:Ljava/io/InputStream;

.field private mRequestMethod:Lcom/yanzhenjie/nohttp/RequestMethod;

.field private mRetryCount:I

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mTag:Ljava/lang/Object;

.field private final startBoundary:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/yanzhenjie/nohttp/BasicRequest;->createBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->boundary:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->startBoundary:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->endBoundary:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/yanzhenjie/nohttp/Priority;->DEFAULT:Lcom/yanzhenjie/nohttp/Priority;

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mPriority:Lcom/yanzhenjie/nohttp/Priority;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->isMultipartFormEnable:Z

    .line 8
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 9
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iput-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 10
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getConnectTimeout()I

    move-result v1

    iput v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mConnectTimeout:I

    .line 11
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getReadTimeout()I

    move-result v1

    iput v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mReadTimeout:I

    .line 12
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getRetryCount()I

    move-result v1

    iput v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRetryCount:I

    .line 13
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->isStart:Z

    .line 14
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->isFinished:Z

    .line 15
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestMethod:Lcom/yanzhenjie/nohttp/RequestMethod;

    .line 17
    new-instance p1, Lcom/yanzhenjie/nohttp/Headers;

    invoke-direct {p1}, Lcom/yanzhenjie/nohttp/Headers;-><init>()V

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    const-string p2, "Accept"

    const-string v0, "application/json,application/xml,application/xhtml+xml,text/html;q=0.9,image/webp,*/*;q=0.8"

    .line 18
    invoke-virtual {p1, p2, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    const-string p2, "Accept-Encoding"

    const-string v0, "gzip, deflate"

    invoke-virtual {p1, p2, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/HeaderUtils;->systemAcceptLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Accept-Language"

    invoke-virtual {p1, v0, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-static {}, Lcom/yanzhenjie/nohttp/UserAgent;->instance()Ljava/lang/String;

    move-result-object p2

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getHeaders()Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/yanzhenjie/nohttp/tools/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v2, v0, v1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_1
    new-instance p1, Lcom/yanzhenjie/nohttp/Params;

    invoke-direct {p1}, Lcom/yanzhenjie/nohttp/Params;-><init>()V

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    .line 29
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getParams()Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Lcom/yanzhenjie/nohttp/tools/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static buildCommonParams(Lcom/yanzhenjie/nohttp/tools/MultiValueMap;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/tools/MultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Lcom/yanzhenjie/nohttp/tools/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0, v2}, Lcom/yanzhenjie/nohttp/tools/MultiValueMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    instance-of v5, v4, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    const-string v5, "&"

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    return-object v0
.end method

.method private buildUrl(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamKeyValues()Lcom/yanzhenjie/nohttp/tools/MultiValueMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yanzhenjie/nohttp/BasicRequest;->buildCommonParams(Lcom/yanzhenjie/nohttp/tools/MultiValueMap;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static createBoundary()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----NoHttpFormBoundary"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3

    .line 3
    rem-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    long-to-int v3, v2

    int-to-char v2, v3

    .line 4
    rem-int/lit8 v2, v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1a

    cmp-long v10, v4, v6

    if-nez v10, :cond_1

    const-wide/16 v4, 0x41

    .line 5
    rem-long/2addr v2, v8

    add-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x61

    .line 6
    rem-long/2addr v2, v8

    add-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasBinary()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lcom/yanzhenjie/nohttp/Binary;

    if-nez v3, :cond_2

    instance-of v2, v2, Ljava/io/File;

    if-eqz v2, :cond_1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private hasDefineRequestBody()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestBody:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private validateMethodForBody(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/RequestMethod;->allowRequestBody()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " only supports these handle methods: POST/PUT/PATCH/DELETE."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateParamForBody(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The requestBody and contentType must be can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeFormBinary(Ljava/io/OutputStream;Ljava/lang/String;Lcom/yanzhenjie/nohttp/Binary;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->startBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"; filename=\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p3}, Lcom/yanzhenjie/nohttp/Binary;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Content-Type: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/yanzhenjie/nohttp/Binary;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 4
    instance-of p2, p1, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;

    invoke-interface {p3}, Lcom/yanzhenjie/nohttp/Binary;->getLength()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;->writeLength(J)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p3, p1}, Lcom/yanzhenjie/nohttp/Binary;->onWriteBinary(Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method private writeFormStreamData(Ljava/io/OutputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 8
    instance-of v4, p1, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 9
    :cond_3
    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/yanzhenjie/nohttp/BasicRequest;->writeFormString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_4
    instance-of v4, v3, Lcom/yanzhenjie/nohttp/Binary;

    if-eqz v4, :cond_6

    .line 11
    instance-of v4, p1, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is Binary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 12
    :cond_5
    check-cast v3, Lcom/yanzhenjie/nohttp/Binary;

    invoke-direct {p0, p1, v1, v3}, Lcom/yanzhenjie/nohttp/BasicRequest;->writeFormBinary(Ljava/io/OutputStream;Ljava/lang/String;Lcom/yanzhenjie/nohttp/Binary;)V

    :cond_6
    :goto_2
    const-string v3, "\r\n"

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->endBoundary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeFormString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->startBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"\r\n\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 3
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeParamStreamData(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yanzhenjie/nohttp/BasicRequest;->buildCommonParams(Lcom/yanzhenjie/nohttp/tools/MultiValueMap;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    instance-of v1, p1, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->write([BLjava/io/OutputStream;)V

    :cond_1
    return-void
.end method

.method private writeRequestBody(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestBody:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, p1, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;->writeLength(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0, p1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->write(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 5
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestBody:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestBody:Ljava/io/InputStream;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)TT;"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public add(Ljava/lang/String;D)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TT;"
        }
    .end annotation

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public add(Ljava/lang/String;F)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)TT;"
        }
    .end annotation

    .line 6
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public add(Ljava/lang/String;Lcom/yanzhenjie/nohttp/Binary;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/nohttp/Binary;",
            ")TT;"
        }
    .end annotation

    const-string v0, "The Binary param"

    .line 11
    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateMethodForBody(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/io/File;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    const-string v0, "The File param"

    .line 9
    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateMethodForBody(Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/yanzhenjie/nohttp/FileBinary;

    invoke-direct {v0, p2}, Lcom/yanzhenjie/nohttp/FileBinary;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Lcom/yanzhenjie/nohttp/Binary;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/util/List;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/yanzhenjie/nohttp/Binary;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "The List<Binary> param"

    .line 13
    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateMethodForBody(Ljava/lang/String;)V

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/nohttp/Binary;

    .line 15
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v1, p1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/String;S)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S)TT;"
        }
    .end annotation

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public add(Ljava/lang/String;Z)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public add(Ljava/util/Map;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_1

    move-object v0, v2

    .line 19
    :cond_1
    instance-of v3, v0, Ljava/io/File;

    if-eqz v3, :cond_2

    .line 20
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    new-instance v3, Lcom/yanzhenjie/nohttp/FileBinary;

    check-cast v0, Ljava/io/File;

    invoke-direct {v3, v0}, Lcom/yanzhenjie/nohttp/FileBinary;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v1, v3}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_2
    instance-of v3, v0, Lcom/yanzhenjie/nohttp/Binary;

    if-eqz v3, :cond_3

    .line 22
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v2, v1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 23
    :cond_3
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_7

    .line 24
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 25
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 26
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v2

    .line 27
    :cond_4
    instance-of v6, v5, Ljava/io/File;

    if-eqz v6, :cond_5

    .line 28
    iget-object v6, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    new-instance v7, Lcom/yanzhenjie/nohttp/FileBinary;

    check-cast v5, Ljava/io/File;

    invoke-direct {v7, v5}, Lcom/yanzhenjie/nohttp/FileBinary;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v1, v7}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 29
    :cond_5
    instance-of v6, v5, Lcom/yanzhenjie/nohttp/Binary;

    if-eqz v6, :cond_6

    .line 30
    iget-object v5, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v5, v1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 31
    :cond_6
    iget-object v6, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v1, v5}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 32
    :cond_7
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addHeader(Ljava/net/HttpCookie;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpCookie;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cookie"

    invoke-virtual {v0, v1, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mCancelable:Lcom/yanzhenjie/nohttp/able/Cancelable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/yanzhenjie/nohttp/able/Cancelable;->cancel()V

    :cond_0
    return-void
.end method

.method public cancelBySign(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mCancelSign:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->cancel()V

    :cond_1
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->isFinished:Z

    return-void
.end method

.method public getCancelSign()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mCancelSign:Ljava/lang/Object;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mConnectTimeout:I

    return v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->onWriteRequestBody(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-static {v1}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/tools/CounterOutputStream;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/RequestMethod;->allowRequestBody()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->isMultipartFormEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefineRequestBody()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestBody:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaders()Lcom/yanzhenjie/nohttp/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getParamKeyValues()Lcom/yanzhenjie/nohttp/tools/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yanzhenjie/nohttp/tools/MultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    return-object v0
.end method

.method public getParamsEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParamEncoding:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParamEncoding:Ljava/lang/String;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParamEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/yanzhenjie/nohttp/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mPriority:Lcom/yanzhenjie/nohttp/Priority;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mReadTimeout:I

    return v0
.end method

.method public getRedirectHandler()Lcom/yanzhenjie/nohttp/RedirectHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRedirectHandler:Lcom/yanzhenjie/nohttp/RedirectHandler;

    return-object v0
.end method

.method public getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestMethod:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRetryCount:I

    return v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mCancelable:Lcom/yanzhenjie/nohttp/able/Cancelable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yanzhenjie/nohttp/able/Cancelable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinished()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->isFinished:Z

    return v0
.end method

.method public isMultipartFormEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->isMultipartFormEnable:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->hasBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStarted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->isStart:Z

    return v0
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method

.method public onWriteRequestBody(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->hasDefineRequestBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->writeRequestBody(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->isMultipartFormEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->writeFormStreamData(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->writeParamStreamData(Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method public path(C)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TT;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->path(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object p1

    return-object p1
.end method

.method public path(D)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->path(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object p1

    return-object p1
.end method

.method public path(F)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->path(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object p1

    return-object p1
.end method

.method public path(I)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->path(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object p1

    return-object p1
.end method

.method public path(J)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->path(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object p1

    return-object p1
.end method

.method public path(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public path(Z)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->path(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    return-object p0
.end method

.method public removeAll()Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->clear()V

    return-object p0
.end method

.method public removeAllHeader()Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->clear()V

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    return-object p0
.end method

.method public set(Ljava/lang/String;Lcom/yanzhenjie/nohttp/Binary;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/nohttp/Binary;",
            ")TT;"
        }
    .end annotation

    const-string v0, "The Binary param"

    .line 2
    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateMethodForBody(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/util/List;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/yanzhenjie/nohttp/Binary;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "The List<Binary> param"

    .line 4
    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateMethodForBody(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/nohttp/Binary;

    .line 7
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v1, p1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public set(Ljava/util/Map;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_1

    move-object v0, v2

    .line 11
    :cond_1
    instance-of v3, v0, Ljava/io/File;

    if-eqz v3, :cond_2

    .line 12
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    new-instance v3, Lcom/yanzhenjie/nohttp/FileBinary;

    check-cast v0, Ljava/io/File;

    invoke-direct {v3, v0}, Lcom/yanzhenjie/nohttp/FileBinary;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v1, v3}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_2
    instance-of v3, v0, Lcom/yanzhenjie/nohttp/Binary;

    if-eqz v3, :cond_3

    .line 14
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v2, v1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_3
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_7

    .line 16
    iget-object v3, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v3, v1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 18
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 19
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v2

    .line 20
    :cond_4
    instance-of v6, v5, Ljava/io/File;

    if-eqz v6, :cond_5

    .line 21
    iget-object v6, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    new-instance v7, Lcom/yanzhenjie/nohttp/FileBinary;

    check-cast v5, Ljava/io/File;

    invoke-direct {v7, v5}, Lcom/yanzhenjie/nohttp/FileBinary;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v1, v7}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 22
    :cond_5
    instance-of v6, v5, Lcom/yanzhenjie/nohttp/Binary;

    if-eqz v6, :cond_6

    .line 23
    iget-object v5, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v5, v1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 24
    :cond_6
    iget-object v6, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v1, v5}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 25
    :cond_7
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParams:Lcom/yanzhenjie/nohttp/Params;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    return-object p0
.end method

.method public setAccept(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    const-string v1, "Accept"

    invoke-virtual {v0, v1, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setAcceptLanguage(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    const-string v1, "Accept-Language"

    invoke-virtual {v0, v1, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setCancelSign(Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mCancelSign:Ljava/lang/Object;

    return-object p0
.end method

.method public setCancelable(Lcom/yanzhenjie/nohttp/able/Cancelable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mCancelable:Lcom/yanzhenjie/nohttp/able/Cancelable;

    return-void
.end method

.method public setConnectTimeout(I)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mConnectTimeout:I

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setDefineRequestBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Request body"

    .line 1
    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateMethodForBody(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateParamForBody(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only accept ByteArrayInputStream and FileInputStream type of stream"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestBody:Ljava/io/InputStream;

    .line 6
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setDefineRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Content-Type"

    const-string v1, "Request body"

    .line 7
    invoke-direct {p0, v1}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateMethodForBody(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateParamForBody(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestBody:Ljava/io/InputStream;

    .line 10
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRequestBody:Ljava/io/InputStream;

    .line 12
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {p1, v0, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public setDefineRequestBodyForJson(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "application/json"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->setDefineRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public setDefineRequestBodyForJson(Lorg/json/JSONObject;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json"

    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->setDefineRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public setDefineRequestBodyForXML(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "application/xml"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->setDefineRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public setMultipartFormEnable(Z)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    const-string v0, "Form body"

    .line 1
    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->validateMethodForBody(Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->isMultipartFormEnable:Z

    return-object p0
.end method

.method public setParamsEncoding(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mParamEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public setPriority(Lcom/yanzhenjie/nohttp/Priority;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/Priority;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mPriority:Lcom/yanzhenjie/nohttp/Priority;

    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mProxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public setReadTimeout(I)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mReadTimeout:I

    return-object p0
.end method

.method public setRedirectHandler(Lcom/yanzhenjie/nohttp/RedirectHandler;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/RedirectHandler;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRedirectHandler:Lcom/yanzhenjie/nohttp/RedirectHandler;

    return-object p0
.end method

.method public setRetryCount(I)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mRetryCount:I

    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->mHeaders:Lcom/yanzhenjie/nohttp/Headers;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public start()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->isStart:Z

    return-void
.end method

.method public url()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicRequest;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->hasDefineRequestBody()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->buildUrl(Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getRequestMethod()Lcom/yanzhenjie/nohttp/RequestMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/RequestMethod;->allowRequestBody()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->buildUrl(Ljava/lang/StringBuilder;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

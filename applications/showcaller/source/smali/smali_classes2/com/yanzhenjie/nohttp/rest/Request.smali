.class public abstract Lcom/yanzhenjie/nohttp/rest/Request;
.super Lcom/yanzhenjie/nohttp/BasicRequest;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yanzhenjie/nohttp/BasicRequest<",
        "Lcom/yanzhenjie/nohttp/rest/Request;",
        ">;"
    }
.end annotation


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mCacheMode:Lcom/yanzhenjie/nohttp/rest/CacheMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/nohttp/rest/Request;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    .line 3
    sget-object p1, Lcom/yanzhenjie/nohttp/rest/CacheMode;->DEFAULT:Lcom/yanzhenjie/nohttp/rest/CacheMode;

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/Request;->mCacheMode:Lcom/yanzhenjie/nohttp/rest/CacheMode;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Request;->mCacheKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Request;->mCacheKey:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCacheMode()Lcom/yanzhenjie/nohttp/rest/CacheMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Request;->mCacheMode:Lcom/yanzhenjie/nohttp/rest/CacheMode;

    return-object v0
.end method

.method public abstract parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/Headers;",
            "[B)TResult;"
        }
    .end annotation
.end method

.method public setCacheKey(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/Request;->mCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public setCacheMode(Lcom/yanzhenjie/nohttp/rest/CacheMode;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/Request;->mCacheMode:Lcom/yanzhenjie/nohttp/rest/CacheMode;

    return-object p0
.end method

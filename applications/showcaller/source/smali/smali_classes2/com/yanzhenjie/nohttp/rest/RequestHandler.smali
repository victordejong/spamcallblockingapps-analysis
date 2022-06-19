.class public Lcom/yanzhenjie/nohttp/rest/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;
    }
.end annotation


# instance fields
.field private mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/tools/CacheStore<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpConnection:Lcom/yanzhenjie/nohttp/HttpConnection;

.field private mInterceptor:Lcom/yanzhenjie/nohttp/rest/Interceptor;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/tools/CacheStore;Lcom/yanzhenjie/nohttp/HttpConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/tools/CacheStore<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;",
            "Lcom/yanzhenjie/nohttp/HttpConnection;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    .line 4
    iput-object p2, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mHttpConnection:Lcom/yanzhenjie/nohttp/HttpConnection;

    return-void
.end method

.method public constructor <init>(Lcom/yanzhenjie/nohttp/tools/CacheStore;Lcom/yanzhenjie/nohttp/NetworkExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/tools/CacheStore<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;",
            "Lcom/yanzhenjie/nohttp/NetworkExecutor;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/HttpConnection;

    invoke-direct {v0, p2}, Lcom/yanzhenjie/nohttp/HttpConnection;-><init>(Lcom/yanzhenjie/nohttp/NetworkExecutor;)V

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;-><init>(Lcom/yanzhenjie/nohttp/tools/CacheStore;Lcom/yanzhenjie/nohttp/HttpConnection;)V

    return-void
.end method

.method public constructor <init>(Lcom/yanzhenjie/nohttp/tools/CacheStore;Lcom/yanzhenjie/nohttp/NetworkExecutor;Lcom/yanzhenjie/nohttp/rest/Interceptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/tools/CacheStore<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;",
            "Lcom/yanzhenjie/nohttp/NetworkExecutor;",
            "Lcom/yanzhenjie/nohttp/rest/Interceptor;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    .line 7
    new-instance p1, Lcom/yanzhenjie/nohttp/HttpConnection;

    invoke-direct {p1, p2}, Lcom/yanzhenjie/nohttp/HttpConnection;-><init>(Lcom/yanzhenjie/nohttp/NetworkExecutor;)V

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mHttpConnection:Lcom/yanzhenjie/nohttp/HttpConnection;

    .line 8
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mInterceptor:Lcom/yanzhenjie/nohttp/rest/Interceptor;

    return-void
.end method

.method private getHttpProtocol(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;)",
            "Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;-><init>(Lcom/yanzhenjie/nohttp/rest/RequestHandler$1;)V

    .line 2
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mHttpConnection:Lcom/yanzhenjie/nohttp/HttpConnection;

    invoke-virtual {v1, p1}, Lcom/yanzhenjie/nohttp/HttpConnection;->getConnection(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Connection;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/Connection;->responseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$102(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/Headers;

    .line 4
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/Connection;->exception()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$002(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 5
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$000(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/Connection;->serverStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/Connection;->serverStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$202(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;[B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-static {v0, v1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$002(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 8
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method private handleCache(Ljava/lang/String;Lcom/yanzhenjie/nohttp/rest/CacheMode;Lcom/yanzhenjie/nohttp/cache/CacheEntity;Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)V
    .locals 5

    .line 1
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$000(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/Headers;->getResponseCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_5

    const/4 p1, 0x1

    .line 3
    invoke-static {p4, p1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$302(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Z)Z

    .line 4
    invoke-virtual {p3}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getResponseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$102(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/Headers;

    .line 5
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p1

    const-string p2, "ResponseCode"

    const-string v0, "304"

    invoke-virtual {p1, p2, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p3}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getData()[B

    move-result-object p1

    invoke-static {p4, p1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$202(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;[B)[B

    goto/16 :goto_0

    :cond_0
    if-nez p3, :cond_4

    .line 7
    sget-object p3, Lcom/yanzhenjie/nohttp/rest/RequestHandler$1;->$SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_3

    const/4 p3, 0x4

    if-eq p2, p3, :cond_3

    const/4 p3, 0x5

    if-eq p2, p3, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p2

    invoke-static {p2}, Lcom/yanzhenjie/nohttp/tools/HeaderUtils;->getLocalExpires(Lcom/yanzhenjie/nohttp/Headers;)J

    move-result-wide p2

    .line 9
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/Headers;->getLastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    return-void

    .line 10
    :cond_2
    new-instance v0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;-><init>()V

    .line 11
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setResponseHeaders(Lcom/yanzhenjie/nohttp/Headers;)V

    .line 12
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$200(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)[B

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setData([B)V

    .line 13
    invoke-virtual {v0, p2, p3}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setLocalExpire(J)V

    .line 14
    iget-object p2, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    invoke-interface {p2, p1, v0}, Lcom/yanzhenjie/nohttp/tools/CacheStore;->replace(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p2

    invoke-static {p2}, Lcom/yanzhenjie/nohttp/tools/HeaderUtils;->getLocalExpires(Lcom/yanzhenjie/nohttp/Headers;)J

    move-result-wide p2

    .line 16
    new-instance v0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;-><init>()V

    .line 17
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setResponseHeaders(Lcom/yanzhenjie/nohttp/Headers;)V

    .line 18
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$200(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)[B

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setData([B)V

    .line 19
    invoke-virtual {v0, p2, p3}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setLocalExpire(J)V

    .line 20
    iget-object p2, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    invoke-interface {p2, p1, v0}, Lcom/yanzhenjie/nohttp/tools/CacheStore;->replace(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$300(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 22
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p2

    invoke-static {p2}, Lcom/yanzhenjie/nohttp/tools/HeaderUtils;->getLocalExpires(Lcom/yanzhenjie/nohttp/Headers;)J

    move-result-wide v0

    .line 23
    invoke-virtual {p3, v0, v1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setLocalExpire(J)V

    .line 24
    invoke-virtual {p3}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getResponseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p2

    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yanzhenjie/nohttp/Headers;->setAll(Lcom/yanzhenjie/nohttp/Headers;)V

    .line 25
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$200(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)[B

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setData([B)V

    .line 26
    iget-object p2, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    invoke-interface {p2, p1, p3}, Lcom/yanzhenjie/nohttp/tools/CacheStore;->replace(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method private requestCacheOrNetwork(Lcom/yanzhenjie/nohttp/rest/CacheMode;Lcom/yanzhenjie/nohttp/cache/CacheEntity;Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/rest/CacheMode;",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "*>;)",
            "Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$1;->$SwitchMap$com$yanzhenjie$nohttp$rest$CacheMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 3
    new-instance p1, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;

    invoke-direct {p1, v1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;-><init>(Lcom/yanzhenjie/nohttp/rest/RequestHandler$1;)V

    .line 4
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getResponseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$102(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/Headers;

    .line 5
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getData()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$202(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;[B)[B

    .line 6
    invoke-static {p1, v0}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$302(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Z)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->setRequestCacheHeader(Lcom/yanzhenjie/nohttp/BasicRequest;Lcom/yanzhenjie/nohttp/cache/CacheEntity;)V

    .line 8
    invoke-direct {p0, p3}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->getHttpProtocol(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;

    move-result-object v1

    goto/16 :goto_1

    .line 9
    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->setRequestCacheHeader(Lcom/yanzhenjie/nohttp/BasicRequest;Lcom/yanzhenjie/nohttp/cache/CacheEntity;)V

    .line 10
    invoke-direct {p0, p3}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->getHttpProtocol(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$000(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Ljava/lang/Exception;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getResponseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$102(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/Headers;

    .line 13
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getData()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$202(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;[B)[B

    .line 14
    invoke-static {p1, v0}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$302(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Z)Z

    .line 15
    invoke-static {p1, v1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$002(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Ljava/lang/Exception;)Ljava/lang/Exception;

    :cond_3
    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 16
    new-instance p1, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;

    invoke-direct {p1, v1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;-><init>(Lcom/yanzhenjie/nohttp/rest/RequestHandler$1;)V

    .line 17
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getResponseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$102(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/Headers;

    .line 18
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getData()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$202(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;[B)[B

    .line 19
    invoke-static {p1, v0}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$302(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Z)Z

    goto :goto_0

    .line 20
    :cond_5
    invoke-direct {p0, p3}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->getHttpProtocol(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;

    move-result-object v1

    goto :goto_1

    .line 21
    :cond_6
    invoke-direct {p0, p3}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->getHttpProtocol(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;

    move-result-object v1

    goto :goto_1

    .line 22
    :cond_7
    new-instance p1, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;

    invoke-direct {p1, v1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;-><init>(Lcom/yanzhenjie/nohttp/rest/RequestHandler$1;)V

    if-nez p2, :cond_8

    .line 23
    new-instance p2, Lcom/yanzhenjie/nohttp/error/NotFoundCacheError;

    const-string p3, "The cache mode is ONLY_READ_CACHE, but did not find the cache."

    invoke-direct {p2, p3}, Lcom/yanzhenjie/nohttp/error/NotFoundCacheError;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$002(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0

    .line 24
    :cond_8
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getResponseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$102(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/Headers;

    .line 25
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getData()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$202(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;[B)[B

    .line 26
    invoke-static {p1, v0}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$302(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Z)Z

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method private setRequestCacheHeader(Lcom/yanzhenjie/nohttp/BasicRequest;Lcom/yanzhenjie/nohttp/cache/CacheEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ")V"
        }
    .end annotation

    const-string v0, "If-Modified-Since"

    const-string v1, "If-None-Match"

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getResponseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/Headers;->getETag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/Headers;->getLastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object p1

    invoke-static {v1, v2}, Lcom/yanzhenjie/nohttp/tools/HeaderUtils;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "TT;>;)",
            "Lcom/yanzhenjie/nohttp/rest/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mInterceptor:Lcom/yanzhenjie/nohttp/rest/Interceptor;

    if-eqz v2, :cond_0

    .line 3
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mHttpConnection:Lcom/yanzhenjie/nohttp/HttpConnection;

    invoke-direct {v0, v1, v2}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;-><init>(Lcom/yanzhenjie/nohttp/tools/CacheStore;Lcom/yanzhenjie/nohttp/HttpConnection;)V

    .line 4
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mInterceptor:Lcom/yanzhenjie/nohttp/rest/Interceptor;

    invoke-interface {v1, v0, p1}, Lcom/yanzhenjie/nohttp/rest/Interceptor;->intercept(Lcom/yanzhenjie/nohttp/rest/RequestHandler;Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/Response;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/rest/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/rest/Request;->getCacheMode()Lcom/yanzhenjie/nohttp/rest/CacheMode;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->mCacheStore:Lcom/yanzhenjie/nohttp/tools/CacheStore;

    invoke-interface {v4, v2}, Lcom/yanzhenjie/nohttp/tools/CacheStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    .line 8
    invoke-direct {p0, v3, v4, p1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->requestCacheOrNetwork(Lcom/yanzhenjie/nohttp/rest/CacheMode;Lcom/yanzhenjie/nohttp/cache/CacheEntity;Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;

    move-result-object v5

    .line 9
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->handleCache(Ljava/lang/String;Lcom/yanzhenjie/nohttp/rest/CacheMode;Lcom/yanzhenjie/nohttp/cache/CacheEntity;Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)V

    const/4 v2, 0x0

    .line 10
    invoke-static {v5}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$000(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Ljava/lang/Exception;

    move-result-object v3

    if-nez v3, :cond_1

    .line 11
    :try_start_0
    invoke-static {v5}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v3

    invoke-static {v5}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$200(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/yanzhenjie/nohttp/rest/Request;->parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 12
    invoke-static {v5, v3}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$002(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Ljava/lang/Exception;)Ljava/lang/Exception;

    :cond_1
    :goto_0
    move-object v10, v2

    .line 13
    new-instance v2, Lcom/yanzhenjie/nohttp/rest/RestResponse;

    invoke-static {v5}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$300(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Z

    move-result v8

    invoke-static {v5}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v9

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v11, v3, v0

    invoke-static {v5}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->access$000(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Ljava/lang/Exception;

    move-result-object v13

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v13}, Lcom/yanzhenjie/nohttp/rest/RestResponse;-><init>(Lcom/yanzhenjie/nohttp/rest/Request;ZLcom/yanzhenjie/nohttp/Headers;Ljava/lang/Object;JLjava/lang/Exception;)V

    return-object v2
.end method

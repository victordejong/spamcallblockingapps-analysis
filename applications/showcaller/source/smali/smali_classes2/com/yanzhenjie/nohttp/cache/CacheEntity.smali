.class public Lcom/yanzhenjie/nohttp/cache/CacheEntity;
.super Ljava/lang/Object;
.source "CacheEntity.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/db/BasicEntity;


# instance fields
.field private data:[B

.field private id:J

.field private key:Ljava/lang/String;

.field private localExpire:J

.field private responseHeaders:Lcom/yanzhenjie/nohttp/Headers;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/yanzhenjie/nohttp/Headers;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/Headers;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->responseHeaders:Lcom/yanzhenjie/nohttp/Headers;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->data:[B

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/yanzhenjie/nohttp/Headers;[BJ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/yanzhenjie/nohttp/Headers;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/Headers;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->responseHeaders:Lcom/yanzhenjie/nohttp/Headers;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->data:[B

    .line 7
    iput-wide p1, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->id:J

    .line 8
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->key:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->responseHeaders:Lcom/yanzhenjie/nohttp/Headers;

    .line 10
    iput-object p5, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->data:[B

    .line 11
    iput-wide p6, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->localExpire:J

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->data:[B

    return-object v0
.end method

.method public getDataBase64()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalExpire()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->localExpire:J

    return-wide v0
.end method

.method public getLocalExpireString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->localExpire:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaders()Lcom/yanzhenjie/nohttp/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->responseHeaders:Lcom/yanzhenjie/nohttp/Headers;

    return-object v0
.end method

.method public getResponseHeadersJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->responseHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/Headers;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->data:[B

    return-void
.end method

.method public setDataBase64(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->data:[B

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->id:J

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->key:Ljava/lang/String;

    return-void
.end method

.method public setLocalExpire(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->localExpire:J

    return-void
.end method

.method public setLocalExpireString(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->localExpire:J

    return-void
.end method

.method public setResponseHeaders(Lcom/yanzhenjie/nohttp/Headers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->responseHeaders:Lcom/yanzhenjie/nohttp/Headers;

    return-void
.end method

.method public setResponseHeadersJson(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->responseHeaders:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/Headers;->setJSONString(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.class public Lcom/yanzhenjie/nohttp/rest/RestResponse;
.super Ljava/lang/Object;
.source "RestResponse.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/rest/Response;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yanzhenjie/nohttp/rest/Response<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final headers:Lcom/yanzhenjie/nohttp/Headers;

.field private final isFromCache:Z

.field private mException:Ljava/lang/Exception;

.field private final mNetworkMillis:J

.field private request:Lcom/yanzhenjie/nohttp/rest/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/rest/Request;ZLcom/yanzhenjie/nohttp/Headers;Ljava/lang/Object;JLjava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "TT;>;Z",
            "Lcom/yanzhenjie/nohttp/Headers;",
            "TT;J",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->request:Lcom/yanzhenjie/nohttp/rest/Request;

    .line 3
    iput-boolean p2, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->isFromCache:Z

    .line 4
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->headers:Lcom/yanzhenjie/nohttp/Headers;

    .line 5
    iput-object p4, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->result:Ljava/lang/Object;

    .line 6
    iput-wide p5, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->mNetworkMillis:J

    .line 7
    iput-object p7, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->mException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getHeaders()Lcom/yanzhenjie/nohttp/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->headers:Lcom/yanzhenjie/nohttp/Headers;

    return-object v0
.end method

.method public getNetworkMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->mNetworkMillis:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->request:Lcom/yanzhenjie/nohttp/rest/Request;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isFromCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->isFromCache:Z

    return v0
.end method

.method public isSucceed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public request()Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->request:Lcom/yanzhenjie/nohttp/rest/Request;

    return-object v0
.end method

.method public responseCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RestResponse;->headers:Lcom/yanzhenjie/nohttp/Headers;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/Headers;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/rest/RestResponse;->getHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/rest/RestResponse;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

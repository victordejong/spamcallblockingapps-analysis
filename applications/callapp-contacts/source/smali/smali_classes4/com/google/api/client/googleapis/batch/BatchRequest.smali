.class public final Lcom/google/api/client/googleapis/batch/BatchRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;,
        Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;
    }
.end annotation


# instance fields
.field private batchUrl:Lcom/google/api/client/http/i;

.field private final requestFactory:Lcom/google/api/client/http/r;

.field requestInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<",
            "**>;>;"
        }
    .end annotation
.end field

.field private sleeper:Lcom/google/api/client/a/ac;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/google/api/client/http/i;

    const-string v1, "https://www.googleapis.com/batch"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/i;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    .line 109
    sget-object v0, Lcom/google/api/client/a/ac;->a:Lcom/google/api/client/a/ac;

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->sleeper:Lcom/google/api/client/a/ac;

    if-nez p2, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->createRequestFactory()Lcom/google/api/client/http/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/api/client/http/w;->createRequestFactory(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestFactory:Lcom/google/api/client/http/r;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/api/client/a/aa;->b(Z)V

    .line 218
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestFactory:Lcom/google/api/client/http/r;

    iget-object v2, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/i;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/http/r;->a(Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/google/api/client/http/q;->h()Lcom/google/api/client/http/m;

    move-result-object v2

    .line 221
    new-instance v3, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;

    invoke-direct {v3, p0, v2}, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;-><init>(Lcom/google/api/client/googleapis/batch/BatchRequest;Lcom/google/api/client/http/m;)V

    invoke-virtual {v0, v3}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/m;)Lcom/google/api/client/http/q;

    .line 222
    invoke-virtual {v0}, Lcom/google/api/client/http/q;->l()I

    move-result v2

    .line 223
    invoke-virtual {v0}, Lcom/google/api/client/http/q;->e()Lcom/google/api/client/http/c;

    move-result-object v3

    :cond_0
    if-lez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 232
    :goto_0
    new-instance v5, Lcom/google/api/client/http/ab;

    invoke-direct {v5}, Lcom/google/api/client/http/ab;-><init>()V

    .line 233
    invoke-virtual {v5}, Lcom/google/api/client/http/ab;->getMediaType()Lcom/google/api/client/http/p;

    move-result-object v6

    const-string v7, "mixed"

    invoke-virtual {v6, v7}, Lcom/google/api/client/http/p;->a(Ljava/lang/String;)Lcom/google/api/client/http/p;

    .line 235
    iget-object v6, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    .line 236
    new-instance v9, Lcom/google/api/client/http/ab$a;

    new-instance v10, Lcom/google/api/client/http/n;

    invoke-direct {v10}, Lcom/google/api/client/http/n;-><init>()V

    .line 237
    invoke-virtual {v10}, Lcom/google/api/client/http/n;->a()Lcom/google/api/client/http/n;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v12, "Content-ID"

    invoke-virtual {v10, v12, v7}, Lcom/google/api/client/http/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    move-result-object v7

    new-instance v10, Lcom/google/api/client/googleapis/batch/HttpRequestContent;

    iget-object v8, v8, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/q;

    invoke-direct {v10, v8}, Lcom/google/api/client/googleapis/batch/HttpRequestContent;-><init>(Lcom/google/api/client/http/q;)V

    invoke-direct {v9, v7, v10}, Lcom/google/api/client/http/ab$a;-><init>(Lcom/google/api/client/http/n;Lcom/google/api/client/http/j;)V

    .line 236
    invoke-virtual {v5, v9}, Lcom/google/api/client/http/ab;->a(Lcom/google/api/client/http/ab$a;)Lcom/google/api/client/http/ab;

    move v7, v11

    goto :goto_1

    .line 240
    :cond_2
    invoke-virtual {v0, v5}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    .line 241
    invoke-virtual {v0}, Lcom/google/api/client/http/q;->o()Lcom/google/api/client/http/t;

    move-result-object v5

    .line 245
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/api/client/http/t;->b()Lcom/google/api/client/http/p;

    move-result-object v7

    const-string v8, "boundary"

    invoke-virtual {v7, v8}, Lcom/google/api/client/http/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 248
    invoke-virtual {v5}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object v7

    .line 249
    new-instance v8, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;

    iget-object v9, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-direct {v8, v7, v6, v9, v4}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/List;Z)V

    .line 252
    :goto_2
    iget-boolean v6, v8, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->hasNext:Z

    if-eqz v6, :cond_3

    .line 253
    invoke-virtual {v8}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->parseNextResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 256
    :cond_3
    invoke-virtual {v5}, Lcom/google/api/client/http/t;->j()V

    .line 259
    iget-object v5, v8, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->unsuccessfulRequestInfos:Ljava/util/List;

    .line 260
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 261
    iput-object v5, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    .line 263
    iget-boolean v5, v8, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->backOffRequired:Z

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 264
    invoke-interface {v3}, Lcom/google/api/client/http/c;->b()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4

    .line 267
    :try_start_1
    iget-object v7, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->sleeper:Lcom/google/api/client/a/ac;

    invoke-interface {v7, v5, v6}, Lcom/google/api/client/a/ac;->a(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    nop

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-nez v4, :cond_0

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catchall_0
    move-exception v0

    .line 256
    invoke-virtual {v5}, Lcom/google/api/client/http/t;->j()V

    throw v0
.end method

.method public final getBatchUrl()Lcom/google/api/client/http/i;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/i;

    return-object v0
.end method

.method public final getSleeper()Lcom/google/api/client/a/ac;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->sleeper:Lcom/google/api/client/a/ac;

    return-object v0
.end method

.method public final queue(Lcom/google/api/client/http/q;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/q;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/google/api/client/googleapis/batch/BatchCallback<",
            "TT;TE;>;)",
            "Lcom/google/api/client/googleapis/batch/BatchRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {p4}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p2}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p3}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    new-instance v1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    invoke-direct {v1, p4, p2, p3, p1}, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;-><init>(Lcom/google/api/client/googleapis/batch/BatchCallback;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/http/q;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setBatchUrl(Lcom/google/api/client/http/i;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/i;

    return-object p0
.end method

.method public final setSleeper(Lcom/google/api/client/a/ac;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 0

    .line 168
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/a/ac;

    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->sleeper:Lcom/google/api/client/a/ac;

    return-object p0
.end method

.method public final size()I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

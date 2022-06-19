.class public abstract Lcom/google/api/client/googleapis/services/b;
.super Lcom/google/api/client/a/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/a/n;"
    }
.end annotation


# static fields
.field public static final USER_AGENT_SUFFIX:Ljava/lang/String; = "Google-API-Java-Client"


# instance fields
.field private final abstractGoogleClient:Lcom/google/api/client/googleapis/services/a;

.field private disableGZipContent:Z

.field private downloader:Lcom/google/api/client/googleapis/a/a;

.field private final httpContent:Lcom/google/api/client/http/j;

.field private lastResponseHeaders:Lcom/google/api/client/http/n;

.field private lastStatusCode:I

.field private lastStatusMessage:Ljava/lang/String;

.field private requestHeaders:Lcom/google/api/client/http/n;

.field private final requestMethod:Ljava/lang/String;

.field private responseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private uploader:Lcom/google/api/client/googleapis/a/b;

.field private final uriTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/services/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/j;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/j;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/google/api/client/a/n;-><init>()V

    .line 75
    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0}, Lcom/google/api/client/http/n;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/b;->requestHeaders:Lcom/google/api/client/http/n;

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/google/api/client/googleapis/services/b;->lastStatusCode:I

    .line 110
    invoke-static {p5}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/api/client/googleapis/services/b;->responseClass:Ljava/lang/Class;

    .line 111
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/api/client/googleapis/services/a;

    iput-object p5, p0, Lcom/google/api/client/googleapis/services/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/a;

    .line 112
    invoke-static {p2}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/api/client/googleapis/services/b;->requestMethod:Ljava/lang/String;

    .line 113
    invoke-static {p3}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/api/client/googleapis/services/b;->uriTemplate:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/google/api/client/googleapis/services/b;->httpContent:Lcom/google/api/client/http/j;

    .line 116
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/a;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p2, p0, Lcom/google/api/client/googleapis/services/b;->requestHeaders:Lcom/google/api/client/http/n;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Google-API-Java-Client"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/api/client/http/n;->f(Ljava/lang/String;)Lcom/google/api/client/http/n;

    return-void

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/google/api/client/googleapis/services/b;->requestHeaders:Lcom/google/api/client/http/n;

    const-string p2, "Google-API-Java-Client"

    invoke-virtual {p1, p2}, Lcom/google/api/client/http/n;->f(Ljava/lang/String;)Lcom/google/api/client/http/n;

    return-void
.end method

.method private buildHttpRequest(Z)Lcom/google/api/client/http/q;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->uploader:Lcom/google/api/client/googleapis/a/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/a/aa;->a(Z)V

    if-eqz p1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->requestMethod:Ljava/lang/String;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/google/api/client/a/aa;->a(Z)V

    if-eqz p1, :cond_3

    const-string p1, "HEAD"

    goto :goto_2

    .line 299
    :cond_3
    iget-object p1, p0, Lcom/google/api/client/googleapis/services/b;->requestMethod:Ljava/lang/String;

    .line 300
    :goto_2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/a;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/a;->getRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->buildHttpRequestUrl()Lcom/google/api/client/http/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/b;->httpContent:Lcom/google/api/client/http/j;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    .line 302
    new-instance v0, Lcom/google/api/client/googleapis/b;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/b;->intercept(Lcom/google/api/client/http/q;)V

    .line 303
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/a;->getObjectParser()Lcom/google/api/client/a/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/a/x;)Lcom/google/api/client/http/q;

    .line 305
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->httpContent:Lcom/google/api/client/http/j;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->requestMethod:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->requestMethod:Ljava/lang/String;

    const-string v1, "PUT"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->requestMethod:Ljava/lang/String;

    const-string v1, "PATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    :cond_4
    new-instance v0, Lcom/google/api/client/http/f;

    invoke-direct {v0}, Lcom/google/api/client/http/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    .line 309
    :cond_5
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/b;->requestHeaders:Lcom/google/api/client/http/n;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/n;->putAll(Ljava/util/Map;)V

    .line 310
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/b;->disableGZipContent:Z

    if-nez v0, :cond_6

    .line 311
    new-instance v0, Lcom/google/api/client/http/h;

    invoke-direct {v0}, Lcom/google/api/client/http/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/q;

    .line 313
    :cond_6
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->k()Lcom/google/api/client/http/u;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/google/api/client/googleapis/services/b$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/api/client/googleapis/services/b$1;-><init>(Lcom/google/api/client/googleapis/services/b;Lcom/google/api/client/http/u;Lcom/google/api/client/http/q;)V

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/u;)Lcom/google/api/client/http/q;

    return-object p1
.end method

.method private executeUnparsed(Z)Lcom/google/api/client/http/t;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->uploader:Lcom/google/api/client/googleapis/a/b;

    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/b;->buildHttpRequest(Z)Lcom/google/api/client/http/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/http/q;->o()Lcom/google/api/client/http/t;

    move-result-object p1

    goto :goto_2

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->buildHttpRequestUrl()Lcom/google/api/client/http/i;

    move-result-object p1

    .line 423
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/a;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/a;->getRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/b;->requestMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/b;->httpContent:Lcom/google/api/client/http/j;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/google/api/client/http/q;->n()Z

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/b;->uploader:Lcom/google/api/client/googleapis/a/b;

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/b;->requestHeaders:Lcom/google/api/client/http/n;

    .line 2882
    iput-object v2, v1, Lcom/google/api/client/googleapis/a/b;->d:Lcom/google/api/client/http/n;

    .line 427
    iget-boolean v2, p0, Lcom/google/api/client/googleapis/services/b;->disableGZipContent:Z

    .line 3826
    iput-boolean v2, v1, Lcom/google/api/client/googleapis/a/b;->g:Z

    .line 4331
    iget v2, v1, Lcom/google/api/client/googleapis/a/b;->a:I

    sget v3, Lcom/google/api/client/googleapis/a/b$a;->a:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/api/client/a/aa;->a(Z)V

    .line 4333
    iget-boolean v2, v1, Lcom/google/api/client/googleapis/a/b;->e:Z

    if-eqz v2, :cond_2

    .line 4334
    invoke-virtual {v1, p1}, Lcom/google/api/client/googleapis/a/b;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;

    move-result-object p1

    goto :goto_1

    .line 4336
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/api/client/googleapis/a/b;->b(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 429
    :goto_1
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->g()Lcom/google/api/client/http/q;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/googleapis/services/a;->getObjectParser()Lcom/google/api/client/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/a/x;)Lcom/google/api/client/http/q;

    if-eqz v0, :cond_4

    .line 431
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 432
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/b;->newExceptionOnError(Lcom/google/api/client/http/t;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 436
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->c()Lcom/google/api/client/http/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/b;->lastResponseHeaders:Lcom/google/api/client/http/n;

    .line 437
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->e()I

    move-result v0

    iput v0, p0, Lcom/google/api/client/googleapis/services/b;->lastStatusCode:I

    .line 438
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/b;->lastStatusMessage:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public buildHttpRequest()Lcom/google/api/client/http/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/b;->buildHttpRequest(Z)Lcom/google/api/client/http/q;

    move-result-object v0

    return-object v0
.end method

.method public buildHttpRequestUrl()Lcom/google/api/client/http/i;
    .locals 3

    .line 265
    new-instance v0, Lcom/google/api/client/http/i;

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/a;

    .line 266
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/a;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/b;->uriTemplate:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/google/api/client/http/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 292
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/b;->buildHttpRequest(Z)Lcom/google/api/client/http/q;

    move-result-object v0

    return-object v0
.end method

.method protected final checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/a;

    .line 607
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/a;->getSuppressRequiredParameterChecks()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Required parameter %s must be specified"

    .line 606
    invoke-static {p1, p2, v0}, Lcom/google/api/client/a/aa;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->executeUnparsed()Lcom/google/api/client/http/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/b;->responseClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/t;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeAndDownloadTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->executeUnparsed()Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/t;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public executeAsInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->executeUnparsed()Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public executeMedia()Lcom/google/api/client/http/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "alt"

    const-string v1, "media"

    .line 379
    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/googleapis/services/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;

    .line 380
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->executeUnparsed()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public executeMediaAndDownloadTo(Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-object v6, p0, Lcom/google/api/client/googleapis/services/b;->downloader:Lcom/google/api/client/googleapis/a/a;

    if-nez v6, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->executeMedia()Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/t;->a(Ljava/io/OutputStream;)V

    return-void

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->buildHttpRequestUrl()Lcom/google/api/client/http/i;

    move-result-object v7

    iget-object v8, p0, Lcom/google/api/client/googleapis/services/b;->requestHeaders:Lcom/google/api/client/http/n;

    .line 5177
    iget v0, v6, Lcom/google/api/client/googleapis/a/a;->d:I

    sget v1, Lcom/google/api/client/googleapis/a/a$a;->a:I

    const/4 v9, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/a/aa;->a(Z)V

    const-string v0, "alt"

    const-string v1, "media"

    .line 5178
    invoke-virtual {v7, v0, v1}, Lcom/google/api/client/http/i;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5180
    iget-boolean v0, v6, Lcom/google/api/client/googleapis/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 5181
    sget v0, Lcom/google/api/client/googleapis/a/a$a;->b:I

    .line 5423
    iput v0, v6, Lcom/google/api/client/googleapis/a/a;->d:I

    .line 5182
    iget-wide v1, v6, Lcom/google/api/client/googleapis/a/a;->f:J

    move-object v0, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, p1

    .line 5183
    invoke-virtual/range {v0 .. v5}, Lcom/google/api/client/googleapis/a/a;->a(JLcom/google/api/client/http/i;Lcom/google/api/client/http/n;Ljava/io/OutputStream;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 5185
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->c()Lcom/google/api/client/http/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/http/n;->c()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/api/client/googleapis/a/a;->c:J

    .line 5186
    iget-wide v0, v6, Lcom/google/api/client/googleapis/a/a;->c:J

    iput-wide v0, v6, Lcom/google/api/client/googleapis/a/a;->e:J

    .line 5187
    sget p1, Lcom/google/api/client/googleapis/a/a$a;->c:I

    .line 6423
    iput p1, v6, Lcom/google/api/client/googleapis/a/a;->d:I

    return-void

    .line 5193
    :cond_2
    :goto_1
    iget-wide v0, v6, Lcom/google/api/client/googleapis/a/a;->e:J

    iget v2, v6, Lcom/google/api/client/googleapis/a/a;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v10, 0x1

    sub-long/2addr v0, v10

    .line 5194
    iget-wide v2, v6, Lcom/google/api/client/googleapis/a/a;->f:J

    const-wide/16 v4, -0x1

    cmp-long v12, v2, v4

    if-eqz v12, :cond_3

    .line 5196
    iget-wide v2, v6, Lcom/google/api/client/googleapis/a/a;->f:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_3
    move-wide v1, v0

    move-object v0, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, p1

    .line 5198
    invoke-virtual/range {v0 .. v5}, Lcom/google/api/client/googleapis/a/a;->a(JLcom/google/api/client/http/i;Lcom/google/api/client/http/n;Ljava/io/OutputStream;)Lcom/google/api/client/http/t;

    move-result-object v0

    .line 5201
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->c()Lcom/google/api/client/http/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/n;->d()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x2f

    if-nez v0, :cond_4

    move-wide v4, v1

    goto :goto_2

    :cond_4
    const/16 v4, 0x2d

    .line 7266
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7265
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v10

    :goto_2
    if-eqz v0, :cond_5

    .line 7328
    iget-wide v10, v6, Lcom/google/api/client/googleapis/a/a;->c:J

    cmp-long v12, v10, v1

    if-nez v12, :cond_5

    .line 7329
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/api/client/googleapis/a/a;->c:J

    .line 5205
    :cond_5
    iget-wide v0, v6, Lcom/google/api/client/googleapis/a/a;->c:J

    cmp-long v2, v0, v4

    if-gtz v2, :cond_6

    .line 5207
    iget-wide v0, v6, Lcom/google/api/client/googleapis/a/a;->c:J

    iput-wide v0, v6, Lcom/google/api/client/googleapis/a/a;->e:J

    .line 5208
    sget p1, Lcom/google/api/client/googleapis/a/a$a;->c:I

    .line 7423
    iput p1, v6, Lcom/google/api/client/googleapis/a/a;->d:I

    return-void

    .line 5212
    :cond_6
    iput-wide v4, v6, Lcom/google/api/client/googleapis/a/a;->e:J

    .line 5213
    sget v0, Lcom/google/api/client/googleapis/a/a$a;->b:I

    .line 8423
    iput v0, v6, Lcom/google/api/client/googleapis/a/a;->d:I

    goto :goto_1
.end method

.method public executeMediaAsInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->executeMedia()Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public executeUnparsed()Lcom/google/api/client/http/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/b;->executeUnparsed(Z)Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->uploader:Lcom/google/api/client/googleapis/a/b;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/a/aa;->a(Z)V

    .line 406
    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/services/b;->executeUnparsed(Z)Lcom/google/api/client/http/t;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->i()V

    return-object v0
.end method

.method public getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/a;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/a;

    return-object v0
.end method

.method public final getDisableGZipContent()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/b;->disableGZipContent:Z

    return v0
.end method

.method public final getHttpContent()Lcom/google/api/client/http/j;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->httpContent:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final getLastResponseHeaders()Lcom/google/api/client/http/n;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->lastResponseHeaders:Lcom/google/api/client/http/n;

    return-object v0
.end method

.method public final getLastStatusCode()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/google/api/client/googleapis/services/b;->lastStatusCode:I

    return v0
.end method

.method public final getLastStatusMessage()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->lastStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaHttpDownloader()Lcom/google/api/client/googleapis/a/a;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->downloader:Lcom/google/api/client/googleapis/a/a;

    return-object v0
.end method

.method public final getMediaHttpUploader()Lcom/google/api/client/googleapis/a/b;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->uploader:Lcom/google/api/client/googleapis/a/b;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/google/api/client/http/n;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->requestHeaders:Lcom/google/api/client/http/n;

    return-object v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->responseClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getUriTemplate()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->uriTemplate:Ljava/lang/String;

    return-object v0
.end method

.method protected final initializeMediaDownload()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/a;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/a;->getRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/google/api/client/googleapis/a/a;

    .line 252
    invoke-virtual {v0}, Lcom/google/api/client/http/r;->a()Lcom/google/api/client/http/w;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/r;->b()Lcom/google/api/client/http/s;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/googleapis/a/a;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/b;->downloader:Lcom/google/api/client/googleapis/a/a;

    return-void
.end method

.method protected final initializeMediaUpload(Lcom/google/api/client/http/b;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/a;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/a;->getRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/google/api/client/googleapis/a/b;

    .line 236
    invoke-virtual {v0}, Lcom/google/api/client/http/r;->a()Lcom/google/api/client/http/w;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/r;->b()Lcom/google/api/client/http/s;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/google/api/client/googleapis/a/b;-><init>(Lcom/google/api/client/http/b;Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/b;->uploader:Lcom/google/api/client/googleapis/a/b;

    .line 237
    iget-object p1, p0, Lcom/google/api/client/googleapis/services/b;->requestMethod:Ljava/lang/String;

    const-string v0, "POST"

    .line 1873
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PUT"

    .line 1874
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    .line 1875
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1873
    :goto_1
    invoke-static {v0}, Lcom/google/api/client/a/aa;->a(Z)V

    .line 1876
    iput-object p1, v1, Lcom/google/api/client/googleapis/a/b;->c:Ljava/lang/String;

    .line 238
    iget-object p1, p0, Lcom/google/api/client/googleapis/services/b;->httpContent:Lcom/google/api/client/http/j;

    if-eqz p1, :cond_2

    .line 239
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->uploader:Lcom/google/api/client/googleapis/a/b;

    .line 2708
    iput-object p1, v0, Lcom/google/api/client/googleapis/a/b;->b:Lcom/google/api/client/http/j;

    :cond_2
    return-void
.end method

.method protected newExceptionOnError(Lcom/google/api/client/http/t;)Ljava/io/IOException;
    .locals 1

    .line 456
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/t;)V

    return-object v0
.end method

.method public final queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/googleapis/batch/BatchRequest;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/google/api/client/googleapis/batch/BatchCallback<",
            "TT;TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b;->uploader:Lcom/google/api/client/googleapis/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Batching media requests is not supported"

    invoke-static {v0, v1}, Lcom/google/api/client/a/aa;->a(ZLjava/lang/Object;)V

    .line 582
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->buildHttpRequest()Lcom/google/api/client/http/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/b;->getResponseClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/q;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/services/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/services/b<",
            "TT;>;"
        }
    .end annotation

    .line 592
    invoke-super {p0, p1, p2}, Lcom/google/api/client/a/n;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/services/b;

    return-object p1
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/client/googleapis/services/b<",
            "TT;>;"
        }
    .end annotation

    .line 142
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/services/b;->disableGZipContent:Z

    return-object p0
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/services/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/n;",
            ")",
            "Lcom/google/api/client/googleapis/services/b<",
            "TT;>;"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/b;->requestHeaders:Lcom/google/api/client/http/n;

    return-object p0
.end method

.class public abstract Lcom/google/api/client/googleapis/d/b;
.super Lcom/google/api/client/util/GenericData;
.source "AbstractGoogleClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/d/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/util/GenericData;"
    }
.end annotation


# static fields
.field private static final API_VERSION_HEADER:Ljava/lang/String; = "X-Goog-Api-Client"

.field public static final USER_AGENT_SUFFIX:Ljava/lang/String; = "Google-API-Java-Client"


# instance fields
.field private final abstractGoogleClient:Lcom/google/api/client/googleapis/d/a;

.field private disableGZipContent:Z

.field private downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

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

.field private returnRawInputStream:Z

.field private uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

.field private final uriTemplate:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/d/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/j;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/d/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/j;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 2
    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0}, Lcom/google/api/client/http/n;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/d/b;->requestHeaders:Lcom/google/api/client/http/n;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/api/client/googleapis/d/b;->lastStatusCode:I

    .line 4
    invoke-static {p5}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/api/client/googleapis/d/b;->responseClass:Ljava/lang/Class;

    .line 5
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/api/client/googleapis/d/a;

    iput-object p5, p0, Lcom/google/api/client/googleapis/d/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/d/a;

    .line 6
    invoke-static {p2}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/api/client/googleapis/d/b;->requestMethod:Ljava/lang/String;

    .line 7
    invoke-static {p3}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/api/client/googleapis/d/b;->uriTemplate:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/api/client/googleapis/d/b;->httpContent:Lcom/google/api/client/http/j;

    .line 9
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/d/a;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p2, p0, Lcom/google/api/client/googleapis/d/b;->requestHeaders:Lcom/google/api/client/http/n;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Google-API-Java-Client"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/google/api/client/googleapis/GoogleUtils;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/api/client/http/n;->I(Ljava/lang/String;)Lcom/google/api/client/http/n;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/api/client/googleapis/d/b;->requestHeaders:Lcom/google/api/client/http/n;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Google-API-Java-Client/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/google/api/client/googleapis/GoogleUtils;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/api/client/http/n;->I(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/google/api/client/googleapis/d/b;->requestHeaders:Lcom/google/api/client/http/n;

    sget-object p2, Lcom/google/api/client/googleapis/d/b$b;->a:Ljava/lang/String;

    const-string p3, "X-Goog-Api-Client"

    invoke-virtual {p1, p3, p2}, Lcom/google/api/client/http/n;->s(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    return-void
.end method

.method private buildHttpRequest(Z)Lcom/google/api/client/http/q;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/w;->a(Z)V

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->requestMethod:Ljava/lang/String;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/google/api/client/util/w;->a(Z)V

    if-eqz p1, :cond_3

    const-string p1, "HEAD"

    goto :goto_2

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/google/api/client/googleapis/d/b;->requestMethod:Ljava/lang/String;

    .line 5
    :goto_2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/d/a;->getRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->buildHttpRequestUrl()Lcom/google/api/client/http/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/d/b;->httpContent:Lcom/google/api/client/http/j;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/api/client/http/r;->d(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/google/api/client/googleapis/a;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/a;->a(Lcom/google/api/client/http/q;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/d/a;->getObjectParser()Lcom/google/api/client/util/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->y(Lcom/google/api/client/util/u;)Lcom/google/api/client/http/q;

    .line 9
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->httpContent:Lcom/google/api/client/http/j;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->requestMethod:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->requestMethod:Ljava/lang/String;

    const-string v1, "PUT"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->requestMethod:Ljava/lang/String;

    const-string v1, "PATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    :cond_4
    new-instance v0, Lcom/google/api/client/http/f;

    invoke-direct {v0}, Lcom/google/api/client/http/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->u(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->f()Lcom/google/api/client/http/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/d/b;->requestHeaders:Lcom/google/api/client/http/n;

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/GenericData;->putAll(Ljava/util/Map;)V

    .line 13
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/d/b;->disableGZipContent:Z

    if-nez v0, :cond_6

    .line 14
    new-instance v0, Lcom/google/api/client/http/h;

    invoke-direct {v0}, Lcom/google/api/client/http/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->v(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/q;

    .line 15
    :cond_6
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/d/b;->returnRawInputStream:Z

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->B(Z)Lcom/google/api/client/http/q;

    .line 16
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->l()Lcom/google/api/client/http/u;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/google/api/client/googleapis/d/b$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/api/client/googleapis/d/b$a;-><init>(Lcom/google/api/client/googleapis/d/b;Lcom/google/api/client/http/u;Lcom/google/api/client/http/q;)V

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/q;->A(Lcom/google/api/client/http/u;)Lcom/google/api/client/http/q;

    return-object p1
.end method

.method private executeUnparsed(Z)Lcom/google/api/client/http/t;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/d/b;->buildHttpRequest(Z)Lcom/google/api/client/http/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/http/q;->b()Lcom/google/api/client/http/t;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->buildHttpRequestUrl()Lcom/google/api/client/http/i;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/d/a;->getRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/d/b;->requestMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/api/client/googleapis/d/b;->httpContent:Lcom/google/api/client/http/j;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/api/client/http/r;->d(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/api/client/http/q;->n()Z

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/api/client/googleapis/d/b;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v2, p0, Lcom/google/api/client/googleapis/d/b;->requestHeaders:Lcom/google/api/client/http/n;

    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->l(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/api/client/googleapis/d/b;->disableGZipContent:Z

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->p(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->g()Lcom/google/api/client/http/q;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/googleapis/d/a;->getObjectParser()Lcom/google/api/client/util/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/q;->y(Lcom/google/api/client/util/u;)Lcom/google/api/client/http/q;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/b;->newExceptionOnError(Lcom/google/api/client/http/t;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->f()Lcom/google/api/client/http/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/d/b;->lastResponseHeaders:Lcom/google/api/client/http/n;

    .line 14
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->h()I

    move-result v0

    iput v0, p0, Lcom/google/api/client/googleapis/d/b;->lastStatusCode:I

    .line 15
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/d/b;->lastStatusMessage:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public buildHttpRequest()Lcom/google/api/client/http/q;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/d/b;->buildHttpRequest(Z)Lcom/google/api/client/http/q;

    move-result-object v0

    return-object v0
.end method

.method public buildHttpRequestUrl()Lcom/google/api/client/http/i;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/api/client/http/i;

    iget-object v1, p0, Lcom/google/api/client/googleapis/d/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/d/a;

    .line 2
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/d/a;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/d/b;->uriTemplate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lcom/google/api/client/http/UriTemplate;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildHttpRequestUsingHead()Lcom/google/api/client/http/q;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/d/b;->buildHttpRequest(Z)Lcom/google/api/client/http/q;

    move-result-object v0

    return-object v0
.end method

.method protected final checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/d/a;

    .line 2
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/d/a;->getSuppressRequiredParameterChecks()Z

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

    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/api/client/util/w;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->executeUnparsed()Lcom/google/api/client/http/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/d/b;->responseClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/t;->m(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeAndDownloadTo(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->executeUnparsed()Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/t;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public executeAsInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->executeUnparsed()Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected executeMedia()Lcom/google/api/client/http/t;
    .locals 2

    const-string v0, "alt"

    const-string v1, "media"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/googleapis/d/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/b;

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->executeUnparsed()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method protected executeMediaAndDownloadTo(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->executeMedia()Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/t;->b(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->buildHttpRequestUrl()Lcom/google/api/client/http/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/d/b;->requestHeaders:Lcom/google/api/client/http/n;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->a(Lcom/google/api/client/http/i;Lcom/google/api/client/http/n;Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method protected executeMediaAsInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->executeMedia()Lcom/google/api/client/http/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public executeUnparsed()Lcom/google/api/client/http/t;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/d/b;->executeUnparsed(Z)Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method protected executeUsingHead()Lcom/google/api/client/http/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/w;->a(Z)V

    .line 2
    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/d/b;->executeUnparsed(Z)Lcom/google/api/client/http/t;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->k()V

    return-object v0
.end method

.method public getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/d/a;

    return-object v0
.end method

.method public final getDisableGZipContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/d/b;->disableGZipContent:Z

    return v0
.end method

.method public final getHttpContent()Lcom/google/api/client/http/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->httpContent:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final getLastResponseHeaders()Lcom/google/api/client/http/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->lastResponseHeaders:Lcom/google/api/client/http/n;

    return-object v0
.end method

.method public final getLastStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/client/googleapis/d/b;->lastStatusCode:I

    return v0
.end method

.method public final getLastStatusMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->lastStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaHttpDownloader()Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    return-object v0
.end method

.method public final getMediaHttpUploader()Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/google/api/client/http/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->requestHeaders:Lcom/google/api/client/http/n;

    return-object v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->requestMethod:Ljava/lang/String;

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

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->responseClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getReturnRawInputSteam()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/d/b;->returnRawInputStream:Z

    return v0
.end method

.method public final getUriTemplate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->uriTemplate:Ljava/lang/String;

    return-object v0
.end method

.method protected final initializeMediaDownload()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/d/a;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/d/a;->getRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/http/r;->f()Lcom/google/api/client/http/w;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/r;->e()Lcom/google/api/client/http/s;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/d/b;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    return-void
.end method

.method protected final initializeMediaUpload(Lcom/google/api/client/http/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->abstractGoogleClient:Lcom/google/api/client/googleapis/d/a;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/d/a;->getRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/http/r;->f()Lcom/google/api/client/http/w;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/r;->e()Lcom/google/api/client/http/s;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;-><init>(Lcom/google/api/client/http/b;Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/d/b;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 4
    iget-object p1, p0, Lcom/google/api/client/googleapis/d/b;->requestMethod:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->m(Ljava/lang/String;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 5
    iget-object p1, p0, Lcom/google/api/client/googleapis/d/b;->httpContent:Lcom/google/api/client/http/j;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->n(Lcom/google/api/client/http/j;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    :cond_0
    return-void
.end method

.method protected newExceptionOnError(Lcom/google/api/client/http/t;)Ljava/io/IOException;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/t;)V

    return-object v0
.end method

.method public final queue(Lcom/google/api/client/googleapis/b/b;Ljava/lang/Class;Lcom/google/api/client/googleapis/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/googleapis/b/b;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/google/api/client/googleapis/b/a<",
            "TT;TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Batching media requests is not supported"

    invoke-static {v0, v1}, Lcom/google/api/client/util/w;->b(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->buildHttpRequest()Lcom/google/api/client/http/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/b;->getResponseClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/google/api/client/googleapis/b/b;->a(Lcom/google/api/client/http/q;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/b/a;)Lcom/google/api/client/googleapis/b/b;

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/d/b<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/b;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/d/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/b;

    move-result-object p1

    return-object p1
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/client/googleapis/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/client/googleapis/d/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/d/b;->disableGZipContent:Z

    return-object p0
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/n;",
            ")",
            "Lcom/google/api/client/googleapis/d/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/d/b;->requestHeaders:Lcom/google/api/client/http/n;

    return-object p0
.end method

.method public setReturnRawInputStream(Z)Lcom/google/api/client/googleapis/d/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/client/googleapis/d/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/d/b;->returnRawInputStream:Z

    return-object p0
.end method

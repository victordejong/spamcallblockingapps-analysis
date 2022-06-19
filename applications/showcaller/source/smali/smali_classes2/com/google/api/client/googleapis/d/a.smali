.class public abstract Lcom/google/api/client/googleapis/d/a;
.super Ljava/lang/Object;
.source "AbstractGoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/d/a$a;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private final batchPath:Ljava/lang/String;

.field private final googleClientRequestInitializer:Lcom/google/api/client/googleapis/d/d;

.field private final objectParser:Lcom/google/api/client/util/u;

.field private final requestFactory:Lcom/google/api/client/http/r;

.field private final rootUrl:Ljava/lang/String;

.field private final servicePath:Ljava/lang/String;

.field private final suppressPatternChecks:Z

.field private final suppressRequiredParameterChecks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/client/googleapis/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/d/a;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/googleapis/d/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/api/client/googleapis/d/a$a;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/d/d;

    iput-object v0, p0, Lcom/google/api/client/googleapis/d/a;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/d/d;

    .line 3
    iget-object v0, p1, Lcom/google/api/client/googleapis/d/a$a;->rootUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/googleapis/d/a;->normalizeRootUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/d/a;->rootUrl:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/api/client/googleapis/d/a$a;->servicePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/googleapis/d/a;->normalizeServicePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/d/a;->servicePath:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/api/client/googleapis/d/a$a;->batchPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/d/a;->batchPath:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/google/api/client/googleapis/d/a$a;->applicationName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/b0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/google/api/client/googleapis/d/a;->logger:Ljava/util/logging/Logger;

    const-string v1, "Application name is not set. Call Builder#setApplicationName."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/google/api/client/googleapis/d/a$a;->applicationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/d/a;->applicationName:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/google/api/client/googleapis/d/a$a;->httpRequestInitializer:Lcom/google/api/client/http/s;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/api/client/googleapis/d/a$a;->transport:Lcom/google/api/client/http/w;

    .line 10
    invoke-virtual {v0}, Lcom/google/api/client/http/w;->c()Lcom/google/api/client/http/r;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/google/api/client/googleapis/d/a$a;->transport:Lcom/google/api/client/http/w;

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/api/client/http/w;->d(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/googleapis/d/a;->requestFactory:Lcom/google/api/client/http/r;

    .line 12
    iget-object v0, p1, Lcom/google/api/client/googleapis/d/a$a;->objectParser:Lcom/google/api/client/util/u;

    iput-object v0, p0, Lcom/google/api/client/googleapis/d/a;->objectParser:Lcom/google/api/client/util/u;

    .line 13
    iget-boolean v0, p1, Lcom/google/api/client/googleapis/d/a$a;->suppressPatternChecks:Z

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/d/a;->suppressPatternChecks:Z

    .line 14
    iget-boolean p1, p1, Lcom/google/api/client/googleapis/d/a$a;->suppressRequiredParameterChecks:Z

    iput-boolean p1, p0, Lcom/google/api/client/googleapis/d/a;->suppressRequiredParameterChecks:Z

    return-void
.end method

.method static normalizeRootUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "root URL cannot be null."

    .line 1
    invoke-static {p0, v0}, Lcom/google/api/client/util/w;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static normalizeServicePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "service path cannot be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/api/client/util/w;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "/"

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "service path must equal \"/\" if it is of length 1."

    .line 4
    invoke-static {p0, v0}, Lcom/google/api/client/util/w;->b(ZLjava/lang/Object;)V

    const-string p0, ""

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final batch()Lcom/google/api/client/googleapis/b/b;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/d/a;->batch(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final batch(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/b/b;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/api/client/googleapis/b/b;

    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/a;->getRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/r;->f()Lcom/google/api/client/http/w;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/googleapis/b/b;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V

    .line 4
    iget-object p1, p0, Lcom/google/api/client/googleapis/d/a;->batchPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/api/client/util/b0;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/google/api/client/http/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/a;->getRootUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "batch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/b/b;->b(Lcom/google/api/client/http/i;)Lcom/google/api/client/googleapis/b/b;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/google/api/client/http/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/a;->getRootUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/api/client/googleapis/d/a;->batchPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/b/b;->b(Lcom/google/api/client/http/i;)Lcom/google/api/client/googleapis/b/b;

    :goto_0
    return-object v0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/googleapis/d/a;->rootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/client/googleapis/d/a;->servicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/d/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/d/d;

    return-object v0
.end method

.method public getObjectParser()Lcom/google/api/client/util/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a;->objectParser:Lcom/google/api/client/util/u;

    return-object v0
.end method

.method public final getRequestFactory()Lcom/google/api/client/http/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a;->requestFactory:Lcom/google/api/client/http/r;

    return-object v0
.end method

.method public final getRootUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a;->rootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getServicePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a;->servicePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuppressPatternChecks()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/d/a;->suppressPatternChecks:Z

    return v0
.end method

.method public final getSuppressRequiredParameterChecks()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/d/a;->suppressRequiredParameterChecks:Z

    return v0
.end method

.method protected initialize(Lcom/google/api/client/googleapis/d/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/d/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/a;->getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/a;->getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/d/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/api/client/googleapis/d/d;->initialize(Lcom/google/api/client/googleapis/d/b;)V

    :cond_0
    return-void
.end method

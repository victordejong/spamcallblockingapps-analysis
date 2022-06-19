.class public abstract Lcom/google/api/client/googleapis/d/a$a;
.super Ljava/lang/Object;
.source "AbstractGoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field applicationName:Ljava/lang/String;

.field batchPath:Ljava/lang/String;

.field googleClientRequestInitializer:Lcom/google/api/client/googleapis/d/d;

.field httpRequestInitializer:Lcom/google/api/client/http/s;

.field final objectParser:Lcom/google/api/client/util/u;

.field rootUrl:Ljava/lang/String;

.field servicePath:Ljava/lang/String;

.field suppressPatternChecks:Z

.field suppressRequiredParameterChecks:Z

.field final transport:Lcom/google/api/client/http/w;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/w;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/util/u;Lcom/google/api/client/http/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/w;

    iput-object p1, p0, Lcom/google/api/client/googleapis/d/a$a;->transport:Lcom/google/api/client/http/w;

    .line 3
    iput-object p4, p0, Lcom/google/api/client/googleapis/d/a$a;->objectParser:Lcom/google/api/client/util/u;

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/api/client/googleapis/d/a$a;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/api/client/googleapis/d/a$a;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;

    .line 6
    iput-object p5, p0, Lcom/google/api/client/googleapis/d/a$a;->httpRequestInitializer:Lcom/google/api/client/http/s;

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/api/client/googleapis/d/a;
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a$a;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/d/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a$a;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/d/d;

    return-object v0
.end method

.method public final getHttpRequestInitializer()Lcom/google/api/client/http/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a$a;->httpRequestInitializer:Lcom/google/api/client/http/s;

    return-object v0
.end method

.method public getObjectParser()Lcom/google/api/client/util/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a$a;->objectParser:Lcom/google/api/client/util/u;

    return-object v0
.end method

.method public final getRootUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a$a;->rootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getServicePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a$a;->servicePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuppressPatternChecks()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/d/a$a;->suppressPatternChecks:Z

    return v0
.end method

.method public final getSuppressRequiredParameterChecks()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/d/a$a;->suppressRequiredParameterChecks:Z

    return v0
.end method

.method public final getTransport()Lcom/google/api/client/http/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/a$a;->transport:Lcom/google/api/client/http/w;

    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/d/a$a;->applicationName:Ljava/lang/String;

    return-object p0
.end method

.method public setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/d/a$a;->batchPath:Ljava/lang/String;

    return-object p0
.end method

.method public setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/d/a$a;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/d/d;

    return-object p0
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/d/a$a;->httpRequestInitializer:Lcom/google/api/client/http/s;

    return-object p0
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/api/client/googleapis/d/a;->normalizeRootUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/d/a$a;->rootUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/api/client/googleapis/d/a;->normalizeServicePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/d/a$a;->servicePath:Ljava/lang/String;

    return-object p0
.end method

.method public setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/d/a$a;
    .locals 1

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/d/a$a;->suppressPatternChecks:Z

    return-object p0
.end method

.method public setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/d/a$a;->suppressRequiredParameterChecks:Z

    return-object p0
.end method

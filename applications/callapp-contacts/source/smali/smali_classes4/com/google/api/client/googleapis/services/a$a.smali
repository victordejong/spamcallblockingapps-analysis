.class public abstract Lcom/google/api/client/googleapis/services/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/services/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field applicationName:Ljava/lang/String;

.field batchPath:Ljava/lang/String;

.field googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/d;

.field httpRequestInitializer:Lcom/google/api/client/http/s;

.field final objectParser:Lcom/google/api/client/a/x;

.field rootUrl:Ljava/lang/String;

.field servicePath:Ljava/lang/String;

.field suppressPatternChecks:Z

.field suppressRequiredParameterChecks:Z

.field final transport:Lcom/google/api/client/http/w;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/a/x;Lcom/google/api/client/http/s;)V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/w;

    iput-object p1, p0, Lcom/google/api/client/googleapis/services/a$a;->transport:Lcom/google/api/client/http/w;

    .line 346
    iput-object p4, p0, Lcom/google/api/client/googleapis/services/a$a;->objectParser:Lcom/google/api/client/a/x;

    .line 347
    invoke-virtual {p0, p2}, Lcom/google/api/client/googleapis/services/a$a;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;

    .line 348
    invoke-virtual {p0, p3}, Lcom/google/api/client/googleapis/services/a$a;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;

    .line 349
    iput-object p5, p0, Lcom/google/api/client/googleapis/services/a$a;->httpRequestInitializer:Lcom/google/api/client/http/s;

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/api/client/googleapis/services/a;
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/a$a;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/services/d;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/a$a;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/d;

    return-object v0
.end method

.method public final getHttpRequestInitializer()Lcom/google/api/client/http/s;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/a$a;->httpRequestInitializer:Lcom/google/api/client/http/s;

    return-object v0
.end method

.method public getObjectParser()Lcom/google/api/client/a/x;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/a$a;->objectParser:Lcom/google/api/client/a/x;

    return-object v0
.end method

.method public final getRootUrl()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/a$a;->rootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getServicePath()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/a$a;->servicePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuppressPatternChecks()Z
    .locals 1

    .line 506
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/a$a;->suppressPatternChecks:Z

    return v0
.end method

.method public final getSuppressRequiredParameterChecks()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/a$a;->suppressRequiredParameterChecks:Z

    return v0
.end method

.method public final getTransport()Lcom/google/api/client/http/w;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/a$a;->transport:Lcom/google/api/client/http/w;

    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/a$a;->applicationName:Ljava/lang/String;

    return-object p0
.end method

.method public setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/a$a;->batchPath:Ljava/lang/String;

    return-object p0
.end method

.method public setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/a$a;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/d;

    return-object p0
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/a$a;->httpRequestInitializer:Lcom/google/api/client/http/s;

    return-object p0
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 397
    invoke-static {p1}, Lcom/google/api/client/googleapis/services/a;->normalizeRootUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/services/a$a;->rootUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 433
    invoke-static {p1}, Lcom/google/api/client/googleapis/services/a;->normalizeServicePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/services/a$a;->servicePath:Ljava/lang/String;

    return-object p0
.end method

.method public setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/a$a;
    .locals 1

    const/4 p1, 0x1

    .line 565
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/a$a;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/services/a$a;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 522
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/services/a$a;->suppressPatternChecks:Z

    return-object p0
.end method

.method public setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 550
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/services/a$a;->suppressRequiredParameterChecks:Z

    return-object p0
.end method

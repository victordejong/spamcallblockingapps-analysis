.class public abstract Lcom/google/api/client/googleapis/d/e/a$a;
.super Lcom/google/api/client/googleapis/d/a$a;
.source "AbstractGoogleJsonClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/d/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/s;Z)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/api/client/json/e$a;

    invoke-direct {v0, p2}, Lcom/google/api/client/json/e$a;-><init>(Lcom/google/api/client/json/c;)V

    if-eqz p6, :cond_0

    const-string p2, "data"

    const-string p6, "error"

    filled-new-array {p2, p6}, [Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    .line 3
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/api/client/json/e$a;->b(Ljava/util/Collection;)Lcom/google/api/client/json/e$a;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/google/api/client/json/e$a;->a()Lcom/google/api/client/json/e;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/d/a$a;-><init>(Lcom/google/api/client/http/w;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/util/u;Lcom/google/api/client/http/s;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/api/client/googleapis/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/e/a$a;->build()Lcom/google/api/client/googleapis/d/e/a;

    move-result-object v0

    return-object v0
.end method

.method public abstract build()Lcom/google/api/client/googleapis/d/e/a;
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/e/a$a;->getObjectParser()Lcom/google/api/client/json/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/json/e;->b()Lcom/google/api/client/json/c;

    move-result-object v0

    return-object v0
.end method

.method public final getObjectParser()Lcom/google/api/client/json/e;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/api/client/googleapis/d/a$a;->getObjectParser()Lcom/google/api/client/util/u;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/e;

    return-object v0
.end method

.method public bridge synthetic getObjectParser()Lcom/google/api/client/util/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/e/a$a;->getObjectParser()Lcom/google/api/client/json/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/a$a;

    return-object p1
.end method

.method public bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/a$a;

    return-object p1
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/a$a;

    return-object p1
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/a$a;

    return-object p1
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/a$a;

    return-object p1
.end method

.method public bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/a$a;

    return-object p1
.end method

.method public bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/a$a;

    return-object p1
.end method

.method public bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/a$a;

    return-object p1
.end method

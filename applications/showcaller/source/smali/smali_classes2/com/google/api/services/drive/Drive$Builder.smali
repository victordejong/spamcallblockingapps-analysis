.class public final Lcom/google/api/services/drive/Drive$Builder;
.super Lcom/google/api/client/googleapis/d/e/a$a;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/c;Lcom/google/api/client/http/s;)V
    .locals 7

    const-string v3, "https://www.googleapis.com/"

    const-string v4, "drive/v3/"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/d/e/a$a;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/c;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/s;Z)V

    const-string p1, "batch/drive/v3"

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/api/client/googleapis/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/api/client/googleapis/d/e/a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/api/services/drive/Drive;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/api/services/drive/Drive;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive;-><init>(Lcom/google/api/services/drive/Drive$Builder;)V

    return-object v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

.method public bridge synthetic setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBatchPath(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/a$a;->setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

.method public setDriveRequestInitializer(Lcom/google/api/services/drive/DriveRequestInitializer;)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

.method public bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/d/d;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

.method public bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressAllChecks(Z)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

.method public bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressPatternChecks(Z)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

.method public bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/d/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/drive/Drive$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/a$a;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/d/e/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Builder;

    return-object p1
.end method

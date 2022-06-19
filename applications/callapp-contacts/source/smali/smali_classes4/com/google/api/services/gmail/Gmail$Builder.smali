.class public final Lcom/google/api/services/gmail/Gmail$Builder;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/s;)V
    .locals 7

    const-string v3, "https://www.googleapis.com/"

    const-string v4, "gmail/v1/users/"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 9844
    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/s;Z)V

    const-string p1, "batch/gmail/v1"

    .line 9851
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/api/client/googleapis/services/a;
    .locals 1

    .line 9818
    invoke-virtual {p0}, Lcom/google/api/services/gmail/Gmail$Builder;->build()Lcom/google/api/services/gmail/Gmail;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .locals 1

    .line 9818
    invoke-virtual {p0}, Lcom/google/api/services/gmail/Gmail$Builder;->build()Lcom/google/api/services/gmail/Gmail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/google/api/services/gmail/Gmail;
    .locals 1

    .line 9857
    new-instance v0, Lcom/google/api/services/gmail/Gmail;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail;-><init>(Lcom/google/api/services/gmail/Gmail$Builder;)V

    return-object v0
.end method

.method public final bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setApplicationName(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9882
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

.method public final bridge synthetic setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setBatchPath(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9872
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

.method public final setGmailRequestInitializer(Lcom/google/api/services/gmail/GmailRequestInitializer;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9907
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

.method public final bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9913
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

.method public final bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9877
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRootUrl(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9862
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

.method public final bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setServicePath(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9867
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

.method public final bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSuppressAllChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9897
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

.method public final bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSuppressPatternChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9887
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

.method public final bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 9818
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/gmail/Gmail$Builder;
    .locals 0

    .line 9892
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Builder;

    return-object p1
.end method

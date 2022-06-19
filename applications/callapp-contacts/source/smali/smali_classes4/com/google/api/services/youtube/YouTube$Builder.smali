.class public final Lcom/google/api/services/youtube/YouTube$Builder;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/s;)V
    .locals 7

    const-string v3, "https://www.googleapis.com/"

    const-string/jumbo v4, "youtube/v3/"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 16663
    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/s;Z)V

    const-string p1, "batch/youtube/v3"

    .line 16670
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/api/client/googleapis/services/a;
    .locals 1

    .line 16637
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube$Builder;->build()Lcom/google/api/services/youtube/YouTube;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .locals 1

    .line 16637
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube$Builder;->build()Lcom/google/api/services/youtube/YouTube;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/google/api/services/youtube/YouTube;
    .locals 1

    .line 16676
    new-instance v0, Lcom/google/api/services/youtube/YouTube;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube;-><init>(Lcom/google/api/services/youtube/YouTube$Builder;)V

    return-object v0
.end method

.method public final bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setApplicationName(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16701
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

.method public final bridge synthetic setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setBatchPath(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16691
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

.method public final bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16732
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

.method public final bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16696
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/s;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRootUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16681
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

.method public final bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setServicePath(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16686
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

.method public final bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSuppressAllChecks(Z)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16716
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

.method public final bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSuppressPatternChecks(Z)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16706
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

.method public final bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/a$a;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 16637
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16711
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

.method public final setYouTubeRequestInitializer(Lcom/google/api/services/youtube/YouTubeRequestInitializer;)Lcom/google/api/services/youtube/YouTube$Builder;
    .locals 0

    .line 16726
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/d;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Builder;

    return-object p1
.end method

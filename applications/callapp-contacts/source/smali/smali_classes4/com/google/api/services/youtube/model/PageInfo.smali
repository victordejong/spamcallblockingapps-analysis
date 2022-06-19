.class public final Lcom/google/api/services/youtube/model/PageInfo;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private resultsPerPage:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private totalResults:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PageInfo;->clone()Lcom/google/api/services/youtube/model/PageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PageInfo;->clone()Lcom/google/api/services/youtube/model/PageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/PageInfo;
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/PageInfo;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PageInfo;->clone()Lcom/google/api/services/youtube/model/PageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getResultsPerPage()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PageInfo;->resultsPerPage:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTotalResults()Ljava/lang/Integer;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PageInfo;->totalResults:Ljava/lang/Integer;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PageInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PageInfo;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PageInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PageInfo;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PageInfo;
    .locals 0

    .line 87
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/PageInfo;

    return-object p1
.end method

.method public final setResultsPerPage(Ljava/lang/Integer;)Lcom/google/api/services/youtube/model/PageInfo;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PageInfo;->resultsPerPage:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setTotalResults(Ljava/lang/Integer;)Lcom/google/api/services/youtube/model/PageInfo;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PageInfo;->totalResults:Ljava/lang/Integer;

    return-object p0
.end method

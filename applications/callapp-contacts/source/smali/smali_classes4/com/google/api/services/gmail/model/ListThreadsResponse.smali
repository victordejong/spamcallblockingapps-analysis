.class public final Lcom/google/api/services/gmail/model/ListThreadsResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private resultSizeEstimate:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private threads:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->clone()Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->clone()Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ListThreadsResponse;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->clone()Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultSizeEstimate()Ljava/lang/Long;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->resultSizeEstimate:Ljava/lang/Long;

    return-object v0
.end method

.method public final getThreads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/Thread;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->threads:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListThreadsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListThreadsResponse;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/ListThreadsResponse;

    return-object p1
.end method

.method public final setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->nextPageToken:Ljava/lang/String;

    return-object p0
.end method

.method public final setResultSizeEstimate(Ljava/lang/Long;)Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->resultSizeEstimate:Ljava/lang/Long;

    return-object p0
.end method

.method public final setThreads(Ljava/util/List;)Lcom/google/api/services/gmail/model/ListThreadsResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/Thread;",
            ">;)",
            "Lcom/google/api/services/gmail/model/ListThreadsResponse;"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListThreadsResponse;->threads:Ljava/util/List;

    return-object p0
.end method

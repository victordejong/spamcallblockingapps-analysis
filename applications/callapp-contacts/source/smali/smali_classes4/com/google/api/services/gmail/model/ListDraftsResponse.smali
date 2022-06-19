.class public final Lcom/google/api/services/gmail/model/ListDraftsResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private drafts:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private resultSizeEstimate:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/google/api/services/gmail/model/Draft;

    invoke-static {v0}, Lcom/google/api/client/a/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListDraftsResponse;->clone()Lcom/google/api/services/gmail/model/ListDraftsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListDraftsResponse;->clone()Lcom/google/api/services/gmail/model/ListDraftsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/ListDraftsResponse;
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ListDraftsResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListDraftsResponse;->clone()Lcom/google/api/services/gmail/model/ListDraftsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getDrafts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/Draft;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListDraftsResponse;->drafts:Ljava/util/List;

    return-object v0
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListDraftsResponse;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultSizeEstimate()Ljava/lang/Long;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListDraftsResponse;->resultSizeEstimate:Ljava/lang/Long;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListDraftsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListDraftsResponse;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListDraftsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListDraftsResponse;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListDraftsResponse;
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/ListDraftsResponse;

    return-object p1
.end method

.method public final setDrafts(Ljava/util/List;)Lcom/google/api/services/gmail/model/ListDraftsResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/Draft;",
            ">;)",
            "Lcom/google/api/services/gmail/model/ListDraftsResponse;"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListDraftsResponse;->drafts:Ljava/util/List;

    return-object p0
.end method

.method public final setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/gmail/model/ListDraftsResponse;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListDraftsResponse;->nextPageToken:Ljava/lang/String;

    return-object p0
.end method

.method public final setResultSizeEstimate(Ljava/lang/Long;)Lcom/google/api/services/gmail/model/ListDraftsResponse;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListDraftsResponse;->resultSizeEstimate:Ljava/lang/Long;

    return-object p0
.end method

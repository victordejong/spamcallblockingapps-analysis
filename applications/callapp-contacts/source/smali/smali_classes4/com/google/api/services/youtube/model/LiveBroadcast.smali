.class public final Lcom/google/api/services/youtube/model/LiveBroadcast;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private contentDetails:Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private statistics:Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private status:Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .annotation runtime Lcom/google/api/client/a/q;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->clone()Lcom/google/api/services/youtube/model/LiveBroadcast;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->clone()Lcom/google/api/services/youtube/model/LiveBroadcast;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 1

    .line 226
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcast;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->clone()Lcom/google/api/services/youtube/model/LiveBroadcast;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDetails()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->contentDetails:Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->snippet:Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    return-object v0
.end method

.method public final getStatistics()Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->statistics:Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;

    return-object v0
.end method

.method public final getStatus()Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->status:Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcast;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcast;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 0

    .line 221
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveBroadcast;

    return-object p1
.end method

.method public final setContentDetails(Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;)Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->contentDetails:Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    return-object p0
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;)Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->snippet:Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    return-object p0
.end method

.method public final setStatistics(Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;)Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->statistics:Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;

    return-object p0
.end method

.method public final setStatus(Lcom/google/api/services/youtube/model/LiveBroadcastStatus;)Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcast;->status:Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    return-object p0
.end method

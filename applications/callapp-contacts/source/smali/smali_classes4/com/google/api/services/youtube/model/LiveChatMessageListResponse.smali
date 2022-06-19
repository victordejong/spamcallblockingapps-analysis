.class public final Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private eventId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LiveChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private offlineAt:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pageInfo:Lcom/google/api/services/youtube/model/PageInfo;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pollingIntervalMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private tokenPagination:Lcom/google/api/services/youtube/model/TokenPagination;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private visitorId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/google/api/services/youtube/model/LiveChatMessage;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 1

    .line 292
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LiveChatMessage;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfflineAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->offlineAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getPageInfo()Lcom/google/api/services/youtube/model/PageInfo;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->pageInfo:Lcom/google/api/services/youtube/model/PageInfo;

    return-object v0
.end method

.method public final getPollingIntervalMillis()Ljava/lang/Long;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->pollingIntervalMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTokenPagination()Lcom/google/api/services/youtube/model/TokenPagination;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->tokenPagination:Lcom/google/api/services/youtube/model/TokenPagination;

    return-object v0
.end method

.method public final getVisitorId()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->visitorId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 287
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    return-object p1
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setEventId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public final setItems(Ljava/util/List;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LiveChatMessage;",
            ">;)",
            "Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->items:Ljava/util/List;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->nextPageToken:Ljava/lang/String;

    return-object p0
.end method

.method public final setOfflineAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->offlineAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setPageInfo(Lcom/google/api/services/youtube/model/PageInfo;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->pageInfo:Lcom/google/api/services/youtube/model/PageInfo;

    return-object p0
.end method

.method public final setPollingIntervalMillis(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->pollingIntervalMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public final setTokenPagination(Lcom/google/api/services/youtube/model/TokenPagination;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->tokenPagination:Lcom/google/api/services/youtube/model/TokenPagination;

    return-object p0
.end method

.method public final setVisitorId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->visitorId:Ljava/lang/String;

    return-object p0
.end method

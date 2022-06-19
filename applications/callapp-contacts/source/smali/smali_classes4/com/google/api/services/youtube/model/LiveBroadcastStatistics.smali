.class public final Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private concurrentViewers:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private totalChatCount:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;

    move-result-object v0

    return-object v0
.end method

.method public final getConcurrentViewers()Ljava/math/BigInteger;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;->concurrentViewers:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getTotalChatCount()Ljava/math/BigInteger;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;->totalChatCount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;

    return-object p1
.end method

.method public final setConcurrentViewers(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;->concurrentViewers:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setTotalChatCount(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatistics;->totalChatCount:Ljava/math/BigInteger;

    return-object p0
.end method

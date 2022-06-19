.class public final Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private activeLiveChatId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private actualEndTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private actualStartTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private concurrentViewers:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private scheduledEndTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private scheduledStartTime:Lcom/google/api/client/a/l;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->clone()Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->clone()Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 1

    .line 226
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->clone()Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getActiveLiveChatId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->activeLiveChatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getActualEndTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->actualEndTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getActualStartTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->actualStartTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getConcurrentViewers()Ljava/math/BigInteger;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->concurrentViewers:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getScheduledEndTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->scheduledEndTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getScheduledStartTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->scheduledStartTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 0

    .line 221
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    return-object p1
.end method

.method public final setActiveLiveChatId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->activeLiveChatId:Ljava/lang/String;

    return-object p0
.end method

.method public final setActualEndTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->actualEndTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setActualStartTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->actualStartTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setConcurrentViewers(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->concurrentViewers:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setScheduledEndTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->scheduledEndTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setScheduledStartTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->scheduledStartTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.class public final Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private actualEndTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private actualStartTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private broadcastType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isDefaultBroadcast:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private liveChatId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishedAt:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
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

.field private thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private title:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 1

    .line 361
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getActualEndTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->actualEndTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getActualStartTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->actualStartTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getBroadcastType()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->broadcastType:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsDefaultBroadcast()Ljava/lang/Boolean;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->isDefaultBroadcast:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLiveChatId()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->liveChatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getScheduledEndTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->scheduledEndTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getScheduledStartTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->scheduledStartTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getThumbnails()Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 356
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    return-object p1
.end method

.method public final setActualEndTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->actualEndTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setActualStartTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->actualStartTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setBroadcastType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->broadcastType:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setIsDefaultBroadcast(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->isDefaultBroadcast:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setLiveChatId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->liveChatId:Ljava/lang/String;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setScheduledEndTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->scheduledEndTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setScheduledStartTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->scheduledStartTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setThumbnails(Lcom/google/api/services/youtube/model/ThumbnailDetails;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->title:Ljava/lang/String;

    return-object p0
.end method

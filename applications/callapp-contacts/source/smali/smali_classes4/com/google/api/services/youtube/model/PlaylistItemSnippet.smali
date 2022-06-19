.class public final Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private playlistId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private position:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishedAt:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private resourceId:Lcom/google/api/services/youtube/model/ResourceId;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->clone()Lcom/google/api/services/youtube/model/PlaylistItemSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->clone()Lcom/google/api/services/youtube/model/PlaylistItemSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 1

    .line 274
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->clone()Lcom/google/api/services/youtube/model/PlaylistItemSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelTitle()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->channelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Ljava/lang/Long;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->position:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getResourceId()Lcom/google/api/services/youtube/model/ResourceId;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->resourceId:Lcom/google/api/services/youtube/model/ResourceId;

    return-object v0
.end method

.method public final getThumbnails()Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 269
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;

    return-object p1
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannelTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->channelTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setPlaylistId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->playlistId:Ljava/lang/String;

    return-object p0
.end method

.method public final setPosition(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->position:Ljava/lang/Long;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setResourceId(Lcom/google/api/services/youtube/model/ResourceId;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->resourceId:Lcom/google/api/services/youtube/model/ResourceId;

    return-object p0
.end method

.method public final setThumbnails(Lcom/google/api/services/youtube/model/ThumbnailDetails;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemSnippet;->title:Ljava/lang/String;

    return-object p0
.end method

.class public final Lcom/google/api/services/youtube/model/ResourceId;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private playlistId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private videoId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ResourceId;->clone()Lcom/google/api/services/youtube/model/ResourceId;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ResourceId;->clone()Lcom/google/api/services/youtube/model/ResourceId;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ResourceId;
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ResourceId;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ResourceId;->clone()Lcom/google/api/services/youtube/model/ResourceId;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ResourceId;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ResourceId;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ResourceId;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ResourceId;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ResourceId;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ResourceId;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ResourceId;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ResourceId;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ResourceId;
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ResourceId;

    return-object p1
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ResourceId;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ResourceId;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ResourceId;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ResourceId;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setPlaylistId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ResourceId;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ResourceId;->playlistId:Ljava/lang/String;

    return-object p0
.end method

.method public final setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ResourceId;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ResourceId;->videoId:Ljava/lang/String;

    return-object p0
.end method

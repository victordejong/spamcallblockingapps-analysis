.class public final Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private endAt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private note:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private startAt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private videoId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private videoPublishedAt:Lcom/google/api/client/a/l;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->clone()Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->clone()Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
    .locals 1

    .line 184
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->clone()Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getEndAt()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->endAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->note:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartAt()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->startAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->videoPublishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
    .locals 0

    .line 179
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;

    return-object p1
.end method

.method public final setEndAt(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->endAt:Ljava/lang/String;

    return-object p0
.end method

.method public final setNote(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->note:Ljava/lang/String;

    return-object p0
.end method

.method public final setStartAt(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->startAt:Ljava/lang/String;

    return-object p0
.end method

.method public final setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method public final setVideoPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;->videoPublishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

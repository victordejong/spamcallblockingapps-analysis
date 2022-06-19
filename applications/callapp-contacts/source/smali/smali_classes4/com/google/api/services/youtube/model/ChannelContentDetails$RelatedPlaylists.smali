.class public final Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/model/ChannelContentDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelatedPlaylists"
.end annotation


# instance fields
.field private favorites:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private likes:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private uploads:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private watchHistory:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private watchLater:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->clone()Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->clone()Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
    .locals 1

    .line 214
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->clone()Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;

    move-result-object v0

    return-object v0
.end method

.method public final getFavorites()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->favorites:Ljava/lang/String;

    return-object v0
.end method

.method public final getLikes()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->likes:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploads()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->uploads:Ljava/lang/String;

    return-object v0
.end method

.method public final getWatchHistory()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->watchHistory:Ljava/lang/String;

    return-object v0
.end method

.method public final getWatchLater()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->watchLater:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
    .locals 0

    .line 209
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;

    return-object p1
.end method

.method public final setFavorites(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->favorites:Ljava/lang/String;

    return-object p0
.end method

.method public final setLikes(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->likes:Ljava/lang/String;

    return-object p0
.end method

.method public final setUploads(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->uploads:Ljava/lang/String;

    return-object p0
.end method

.method public final setWatchHistory(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->watchHistory:Ljava/lang/String;

    return-object p0
.end method

.method public final setWatchLater(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;->watchLater:Ljava/lang/String;

    return-object p0
.end method

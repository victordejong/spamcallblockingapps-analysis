.class public final Lcom/google/api/services/youtube/model/ChannelContentDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
    }
.end annotation


# instance fields
.field private relatedPlaylists:Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelContentDetails;->clone()Lcom/google/api/services/youtube/model/ChannelContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelContentDetails;->clone()Lcom/google/api/services/youtube/model/ChannelContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ChannelContentDetails;
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelContentDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelContentDetails;->clone()Lcom/google/api/services/youtube/model/ChannelContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getRelatedPlaylists()Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails;->relatedPlaylists:Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelContentDetails;
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ChannelContentDetails;

    return-object p1
.end method

.method public final setRelatedPlaylists(Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;)Lcom/google/api/services/youtube/model/ChannelContentDetails;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelContentDetails;->relatedPlaylists:Lcom/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists;

    return-object p0
.end method

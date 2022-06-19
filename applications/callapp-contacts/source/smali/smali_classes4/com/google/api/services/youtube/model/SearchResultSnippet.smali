.class public final Lcom/google/api/services/youtube/model/SearchResultSnippet;
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

.field private liveBroadcastContent:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishedAt:Lcom/google/api/client/a/l;
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

    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SearchResultSnippet;->clone()Lcom/google/api/services/youtube/model/SearchResultSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SearchResultSnippet;->clone()Lcom/google/api/services/youtube/model/SearchResultSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/SearchResultSnippet;
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/SearchResultSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SearchResultSnippet;->clone()Lcom/google/api/services/youtube/model/SearchResultSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelTitle()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->channelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveBroadcastContent()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->liveBroadcastContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getThumbnails()Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/SearchResultSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SearchResultSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/SearchResultSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SearchResultSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SearchResultSnippet;
    .locals 0

    .line 222
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/SearchResultSnippet;

    return-object p1
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SearchResultSnippet;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannelTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SearchResultSnippet;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->channelTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SearchResultSnippet;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setLiveBroadcastContent(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SearchResultSnippet;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->liveBroadcastContent:Ljava/lang/String;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/SearchResultSnippet;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setThumbnails(Lcom/google/api/services/youtube/model/ThumbnailDetails;)Lcom/google/api/services/youtube/model/SearchResultSnippet;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SearchResultSnippet;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SearchResultSnippet;->title:Ljava/lang/String;

    return-object p0
.end method

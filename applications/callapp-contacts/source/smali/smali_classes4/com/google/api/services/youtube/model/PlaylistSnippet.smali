.class public final Lcom/google/api/services/youtube/model/PlaylistSnippet;
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

.field private defaultLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private localized:Lcom/google/api/services/youtube/model/PlaylistLocalization;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishedAt:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistSnippet;->clone()Lcom/google/api/services/youtube/model/PlaylistSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistSnippet;->clone()Lcom/google/api/services/youtube/model/PlaylistSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 1

    .line 268
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/PlaylistSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistSnippet;->clone()Lcom/google/api/services/youtube/model/PlaylistSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelTitle()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->channelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalized()Lcom/google/api/services/youtube/model/PlaylistLocalization;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->localized:Lcom/google/api/services/youtube/model/PlaylistLocalization;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getThumbnails()Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PlaylistSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PlaylistSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0

    .line 263
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/PlaylistSnippet;

    return-object p1
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannelTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->channelTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultLanguage(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->defaultLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocalized(Lcom/google/api/services/youtube/model/PlaylistLocalization;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->localized:Lcom/google/api/services/youtube/model/PlaylistLocalization;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setTags(Ljava/util/List;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/PlaylistSnippet;"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->tags:Ljava/util/List;

    return-object p0
.end method

.method public final setThumbnails(Lcom/google/api/services/youtube/model/ThumbnailDetails;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistSnippet;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistSnippet;->title:Ljava/lang/String;

    return-object p0
.end method

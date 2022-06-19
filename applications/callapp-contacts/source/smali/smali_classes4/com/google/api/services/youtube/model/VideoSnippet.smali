.class public final Lcom/google/api/services/youtube/model/VideoSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private categoryId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private defaultAudioLanguage:Ljava/lang/String;
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

.field private liveBroadcastContent:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private localized:Lcom/google/api/services/youtube/model/VideoLocalization;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoSnippet;->clone()Lcom/google/api/services/youtube/model/VideoSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoSnippet;->clone()Lcom/google/api/services/youtube/model/VideoSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 1

    .line 349
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoSnippet;->clone()Lcom/google/api/services/youtube/model/VideoSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getCategoryId()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelTitle()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->channelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultAudioLanguage()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->defaultAudioLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveBroadcastContent()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->liveBroadcastContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalized()Lcom/google/api/services/youtube/model/VideoLocalization;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->localized:Lcom/google/api/services/youtube/model/VideoLocalization;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->publishedAt:Lcom/google/api/client/a/l;

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

    .line 292
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getThumbnails()Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 344
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoSnippet;

    return-object p1
.end method

.method public final setCategoryId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->categoryId:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannelTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->channelTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultAudioLanguage(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->defaultAudioLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultLanguage(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->defaultLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setLiveBroadcastContent(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->liveBroadcastContent:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocalized(Lcom/google/api/services/youtube/model/VideoLocalization;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->localized:Lcom/google/api/services/youtube/model/VideoLocalization;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setTags(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoSnippet;"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->tags:Ljava/util/List;

    return-object p0
.end method

.method public final setThumbnails(Lcom/google/api/services/youtube/model/ThumbnailDetails;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoSnippet;->title:Ljava/lang/String;

    return-object p0
.end method

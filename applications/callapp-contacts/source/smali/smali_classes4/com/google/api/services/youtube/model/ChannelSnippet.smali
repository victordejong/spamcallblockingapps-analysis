.class public final Lcom/google/api/services/youtube/model/ChannelSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private customUrl:Ljava/lang/String;
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

.field private localized:Lcom/google/api/services/youtube/model/ChannelLocalization;
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

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSnippet;->clone()Lcom/google/api/services/youtube/model/ChannelSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSnippet;->clone()Lcom/google/api/services/youtube/model/ChannelSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 1

    .line 268
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSnippet;->clone()Lcom/google/api/services/youtube/model/ChannelSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomUrl()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->customUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalized()Lcom/google/api/services/youtube/model/ChannelLocalization;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->localized:Lcom/google/api/services/youtube/model/ChannelLocalization;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getThumbnails()Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 0

    .line 263
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ChannelSnippet;

    return-object p1
.end method

.method public final setCountry(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final setCustomUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->customUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultLanguage(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->defaultLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocalized(Lcom/google/api/services/youtube/model/ChannelLocalization;)Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->localized:Lcom/google/api/services/youtube/model/ChannelLocalization;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setThumbnails(Lcom/google/api/services/youtube/model/ThumbnailDetails;)Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSnippet;->title:Ljava/lang/String;

    return-object p0
.end method

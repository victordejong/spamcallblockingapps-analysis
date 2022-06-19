.class public final Lcom/google/api/services/youtube/model/ActivitySnippet;
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

.field private groupId:Ljava/lang/String;
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

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivitySnippet;->clone()Lcom/google/api/services/youtube/model/ActivitySnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivitySnippet;->clone()Lcom/google/api/services/youtube/model/ActivitySnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 1

    .line 257
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ActivitySnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivitySnippet;->clone()Lcom/google/api/services/youtube/model/ActivitySnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelTitle()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->channelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getThumbnails()Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivitySnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivitySnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivitySnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivitySnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 0

    .line 252
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ActivitySnippet;

    return-object p1
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannelTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->channelTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setGroupId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setThumbnails(Lcom/google/api/services/youtube/model/ThumbnailDetails;)Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->thumbnails:Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivitySnippet;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivitySnippet;->type:Ljava/lang/String;

    return-object p0
.end method

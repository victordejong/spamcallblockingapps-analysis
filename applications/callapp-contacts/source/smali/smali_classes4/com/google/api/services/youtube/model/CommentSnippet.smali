.class public final Lcom/google/api/services/youtube/model/CommentSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private authorChannelId:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private authorChannelUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private authorDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private authorProfileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canRate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private likeCount:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private moderationStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishedAt:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private textDisplay:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private textOriginal:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private updatedAt:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private videoId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private viewerRating:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentSnippet;->clone()Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentSnippet;->clone()Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 1

    .line 430
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/CommentSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentSnippet;->clone()Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthorChannelId()Ljava/lang/Object;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorChannelId:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAuthorChannelUrl()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorDisplayName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorProfileImageUrl()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorProfileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanRate()Ljava/lang/Boolean;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->canRate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLikeCount()Ljava/lang/Long;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->likeCount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getModerationStatus()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->moderationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getTextDisplay()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->textDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextOriginal()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->textOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdatedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->updatedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewerRating()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->viewerRating:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 425
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/CommentSnippet;

    return-object p1
.end method

.method public final setAuthorChannelId(Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorChannelId:Ljava/lang/Object;

    return-object p0
.end method

.method public final setAuthorChannelUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorChannelUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setAuthorDisplayName(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public final setAuthorProfileImageUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorProfileImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setCanRate(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->canRate:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setLikeCount(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->likeCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final setModerationStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->moderationStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final setParentId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setTextDisplay(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->textDisplay:Ljava/lang/String;

    return-object p0
.end method

.method public final setTextOriginal(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->textOriginal:Ljava/lang/String;

    return-object p0
.end method

.method public final setUpdatedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->updatedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method public final setViewerRating(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->viewerRating:Ljava/lang/String;

    return-object p0
.end method

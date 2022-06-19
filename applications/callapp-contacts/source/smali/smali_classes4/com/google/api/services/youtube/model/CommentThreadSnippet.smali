.class public final Lcom/google/api/services/youtube/model/CommentThreadSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private canReply:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isPublic:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private topLevelComment:Lcom/google/api/services/youtube/model/Comment;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private totalReplyCount:Ljava/lang/Long;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->clone()Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->clone()Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 1

    .line 196
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->clone()Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getCanReply()Ljava/lang/Boolean;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->canReply:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsPublic()Ljava/lang/Boolean;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->isPublic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTopLevelComment()Lcom/google/api/services/youtube/model/Comment;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->topLevelComment:Lcom/google/api/services/youtube/model/Comment;

    return-object v0
.end method

.method public final getTotalReplyCount()Ljava/lang/Long;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->totalReplyCount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .line 191
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    return-object p1
.end method

.method public final setCanReply(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->canReply:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setIsPublic(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->isPublic:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setTopLevelComment(Lcom/google/api/services/youtube/model/Comment;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->topLevelComment:Lcom/google/api/services/youtube/model/Comment;

    return-object p0
.end method

.method public final setTotalReplyCount(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->totalReplyCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->videoId:Ljava/lang/String;

    return-object p0
.end method

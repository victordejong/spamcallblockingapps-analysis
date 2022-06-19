.class public final Lcom/google/api/services/youtube/model/CommentThread;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private replies:Lcom/google/api/services/youtube/model/CommentThreadReplies;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/CommentThreadSnippet;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentThread;->clone()Lcom/google/api/services/youtube/model/CommentThread;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentThread;->clone()Lcom/google/api/services/youtube/model/CommentThread;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/CommentThread;
    .locals 1

    .line 170
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/CommentThread;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentThread;->clone()Lcom/google/api/services/youtube/model/CommentThread;

    move-result-object v0

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThread;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThread;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThread;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getReplies()Lcom/google/api/services/youtube/model/CommentThreadReplies;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThread;->replies:Lcom/google/api/services/youtube/model/CommentThreadReplies;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThread;->snippet:Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentThread;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentThread;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentThread;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentThread;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentThread;
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/CommentThread;

    return-object p1
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentThread;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThread;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentThread;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThread;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentThread;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThread;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setReplies(Lcom/google/api/services/youtube/model/CommentThreadReplies;)Lcom/google/api/services/youtube/model/CommentThread;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThread;->replies:Lcom/google/api/services/youtube/model/CommentThreadReplies;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/CommentThreadSnippet;)Lcom/google/api/services/youtube/model/CommentThread;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThread;->snippet:Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    return-object p0
.end method

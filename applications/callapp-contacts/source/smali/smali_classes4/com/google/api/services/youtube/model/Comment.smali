.class public final Lcom/google/api/services/youtube/model/Comment;
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

.field private snippet:Lcom/google/api/services/youtube/model/CommentSnippet;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Comment;->clone()Lcom/google/api/services/youtube/model/Comment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Comment;->clone()Lcom/google/api/services/youtube/model/Comment;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/Comment;
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/Comment;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Comment;->clone()Lcom/google/api/services/youtube/model/Comment;

    move-result-object v0

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Comment;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Comment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Comment;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Comment;->snippet:Lcom/google/api/services/youtube/model/CommentSnippet;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Comment;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Comment;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Comment;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Comment;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Comment;
    .locals 0

    .line 134
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/Comment;

    return-object p1
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Comment;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Comment;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Comment;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Comment;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Comment;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Comment;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/CommentSnippet;)Lcom/google/api/services/youtube/model/Comment;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Comment;->snippet:Lcom/google/api/services/youtube/model/CommentSnippet;

    return-object p0
.end method

.class public final Lcom/google/api/services/youtube/model/LiveChatMessage;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private authorDetails:Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

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

.field private snippet:Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessage;->clone()Lcom/google/api/services/youtube/model/LiveChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessage;->clone()Lcom/google/api/services/youtube/model/LiveChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveChatMessage;
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessage;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessage;->clone()Lcom/google/api/services/youtube/model/LiveChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthorDetails()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->authorDetails:Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->snippet:Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessage;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessage;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessage;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessage;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessage;
    .locals 0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveChatMessage;

    return-object p1
.end method

.method public final setAuthorDetails(Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;)Lcom/google/api/services/youtube/model/LiveChatMessage;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->authorDetails:Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    return-object p0
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessage;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessage;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessage;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;)Lcom/google/api/services/youtube/model/LiveChatMessage;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessage;->snippet:Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    return-object p0
.end method

.class public final Lcom/google/api/services/youtube/model/PlaylistItem;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private contentDetails:Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
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

.field private snippet:Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private status:Lcom/google/api/services/youtube/model/PlaylistItemStatus;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistItem;->clone()Lcom/google/api/services/youtube/model/PlaylistItem;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistItem;->clone()Lcom/google/api/services/youtube/model/PlaylistItem;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/PlaylistItem;
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/PlaylistItem;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/PlaylistItem;->clone()Lcom/google/api/services/youtube/model/PlaylistItem;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDetails()Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->contentDetails:Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/PlaylistItemSnippet;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->snippet:Lcom/google/api/services/youtube/model/PlaylistItemSnippet;

    return-object v0
.end method

.method public final getStatus()Lcom/google/api/services/youtube/model/PlaylistItemStatus;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->status:Lcom/google/api/services/youtube/model/PlaylistItemStatus;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PlaylistItem;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistItem;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/PlaylistItem;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistItem;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/PlaylistItem;
    .locals 0

    .line 201
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/PlaylistItem;

    return-object p1
.end method

.method public final setContentDetails(Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;)Lcom/google/api/services/youtube/model/PlaylistItem;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->contentDetails:Lcom/google/api/services/youtube/model/PlaylistItemContentDetails;

    return-object p0
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItem;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItem;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/PlaylistItem;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/PlaylistItemSnippet;)Lcom/google/api/services/youtube/model/PlaylistItem;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->snippet:Lcom/google/api/services/youtube/model/PlaylistItemSnippet;

    return-object p0
.end method

.method public final setStatus(Lcom/google/api/services/youtube/model/PlaylistItemStatus;)Lcom/google/api/services/youtube/model/PlaylistItem;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/google/api/services/youtube/model/PlaylistItem;->status:Lcom/google/api/services/youtube/model/PlaylistItemStatus;

    return-object p0
.end method

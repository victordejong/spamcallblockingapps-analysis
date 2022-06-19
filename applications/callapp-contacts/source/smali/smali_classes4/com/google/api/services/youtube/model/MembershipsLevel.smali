.class public final Lcom/google/api/services/youtube/model/MembershipsLevel;
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

.field private snippet:Lcom/google/api/services/youtube/model/MembershipsLevelSnippet;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MembershipsLevel;->clone()Lcom/google/api/services/youtube/model/MembershipsLevel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MembershipsLevel;->clone()Lcom/google/api/services/youtube/model/MembershipsLevel;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/MembershipsLevel;
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/MembershipsLevel;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MembershipsLevel;->clone()Lcom/google/api/services/youtube/model/MembershipsLevel;

    move-result-object v0

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsLevel;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsLevel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsLevel;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/MembershipsLevelSnippet;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsLevel;->snippet:Lcom/google/api/services/youtube/model/MembershipsLevelSnippet;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/MembershipsLevel;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MembershipsLevel;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/MembershipsLevel;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MembershipsLevel;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MembershipsLevel;
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/MembershipsLevel;

    return-object p1
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/MembershipsLevel;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsLevel;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/MembershipsLevel;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsLevel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/MembershipsLevel;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsLevel;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/MembershipsLevelSnippet;)Lcom/google/api/services/youtube/model/MembershipsLevel;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsLevel;->snippet:Lcom/google/api/services/youtube/model/MembershipsLevelSnippet;

    return-object p0
.end method

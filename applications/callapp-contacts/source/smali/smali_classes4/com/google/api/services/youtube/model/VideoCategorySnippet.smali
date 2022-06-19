.class public final Lcom/google/api/services/youtube/model/VideoCategorySnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private assignable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->clone()Lcom/google/api/services/youtube/model/VideoCategorySnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->clone()Lcom/google/api/services/youtube/model/VideoCategorySnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoCategorySnippet;
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoCategorySnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->clone()Lcom/google/api/services/youtube/model/VideoCategorySnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getAssignable()Ljava/lang/Boolean;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->assignable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoCategorySnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoCategorySnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoCategorySnippet;
    .locals 0

    .line 107
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoCategorySnippet;

    return-object p1
.end method

.method public final setAssignable(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoCategorySnippet;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->assignable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoCategorySnippet;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoCategorySnippet;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoCategorySnippet;->title:Ljava/lang/String;

    return-object p0
.end method

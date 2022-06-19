.class public final Lcom/google/api/services/youtube/model/LiveStreamSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isDefaultStream:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishedAt:Lcom/google/api/client/a/l;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->clone()Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->clone()Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->clone()Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsDefaultStream()Ljava/lang/Boolean;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->isDefaultStream:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    .locals 0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    return-object p1
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setIsDefaultStream(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->isDefaultStream:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->title:Ljava/lang/String;

    return-object p0
.end method

.class public final Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private liveChatId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private moderatorDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getLiveChatId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;->liveChatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getModeratorDetails()Lcom/google/api/services/youtube/model/ChannelProfileDetails;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;->moderatorDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;

    return-object p1
.end method

.method public final setLiveChatId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;->liveChatId:Ljava/lang/String;

    return-object p0
.end method

.method public final setModeratorDetails(Lcom/google/api/services/youtube/model/ChannelProfileDetails;)Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatModeratorSnippet;->moderatorDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object p0
.end method

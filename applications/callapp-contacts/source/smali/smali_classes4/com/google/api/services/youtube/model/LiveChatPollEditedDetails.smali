.class public final Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LiveChatPollItem;",
            ">;"
        }
    .end annotation
.end field

.field private prompt:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LiveChatPollItem;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPrompt()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setItems(Ljava/util/List;)Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LiveChatPollItem;",
            ">;)",
            "Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->items:Ljava/util/List;

    return-object p0
.end method

.method public final setPrompt(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;->prompt:Ljava/lang/String;

    return-object p0
.end method

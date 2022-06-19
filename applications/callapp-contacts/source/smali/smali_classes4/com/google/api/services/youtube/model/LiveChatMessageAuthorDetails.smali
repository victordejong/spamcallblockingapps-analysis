.class public final Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isChatModerator:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isChatOwner:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isChatSponsor:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isVerified:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private profileImageUrl:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 1

    .line 235
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelUrl()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->channelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsChatModerator()Ljava/lang/Boolean;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatModerator:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsChatOwner()Ljava/lang/Boolean;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatOwner:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsChatSponsor()Ljava/lang/Boolean;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatSponsor:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsVerified()Ljava/lang/Boolean;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isVerified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .line 230
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    return-object p1
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setChannelUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->channelUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setDisplayName(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final setIsChatModerator(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatModerator:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsChatOwner(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatOwner:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsChatSponsor(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatSponsor:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsVerified(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isVerified:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setProfileImageUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->profileImageUrl:Ljava/lang/String;

    return-object p0
.end method

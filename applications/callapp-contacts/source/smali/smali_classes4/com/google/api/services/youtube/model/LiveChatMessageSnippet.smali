.class public final Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private authorChannelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private displayMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private fanFundingEventDetails:Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private hasDisplayContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private liveChatId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private messageDeletedDetails:Lcom/google/api/services/youtube/model/LiveChatMessageDeletedDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private messageRetractedDetails:Lcom/google/api/services/youtube/model/LiveChatMessageRetractedDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pollClosedDetails:Lcom/google/api/services/youtube/model/LiveChatPollClosedDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pollEditedDetails:Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pollOpenedDetails:Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pollVotedDetails:Lcom/google/api/services/youtube/model/LiveChatPollVotedDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishedAt:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private superChatDetails:Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private superStickerDetails:Lcom/google/api/services/youtube/model/LiveChatSuperStickerDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private textMessageDetails:Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private userBannedDetails:Lcom/google/api/services/youtube/model/LiveChatUserBannedMessageDetails;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 1

    .line 451
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthorChannelId()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->authorChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayMessage()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->displayMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getFanFundingEventDetails()Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->fanFundingEventDetails:Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;

    return-object v0
.end method

.method public final getHasDisplayContent()Ljava/lang/Boolean;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->hasDisplayContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLiveChatId()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->liveChatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageDeletedDetails()Lcom/google/api/services/youtube/model/LiveChatMessageDeletedDetails;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->messageDeletedDetails:Lcom/google/api/services/youtube/model/LiveChatMessageDeletedDetails;

    return-object v0
.end method

.method public final getMessageRetractedDetails()Lcom/google/api/services/youtube/model/LiveChatMessageRetractedDetails;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->messageRetractedDetails:Lcom/google/api/services/youtube/model/LiveChatMessageRetractedDetails;

    return-object v0
.end method

.method public final getPollClosedDetails()Lcom/google/api/services/youtube/model/LiveChatPollClosedDetails;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->pollClosedDetails:Lcom/google/api/services/youtube/model/LiveChatPollClosedDetails;

    return-object v0
.end method

.method public final getPollEditedDetails()Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->pollEditedDetails:Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;

    return-object v0
.end method

.method public final getPollOpenedDetails()Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->pollOpenedDetails:Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;

    return-object v0
.end method

.method public final getPollVotedDetails()Lcom/google/api/services/youtube/model/LiveChatPollVotedDetails;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->pollVotedDetails:Lcom/google/api/services/youtube/model/LiveChatPollVotedDetails;

    return-object v0
.end method

.method public final getPublishedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getSuperChatDetails()Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->superChatDetails:Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;

    return-object v0
.end method

.method public final getSuperStickerDetails()Lcom/google/api/services/youtube/model/LiveChatSuperStickerDetails;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->superStickerDetails:Lcom/google/api/services/youtube/model/LiveChatSuperStickerDetails;

    return-object v0
.end method

.method public final getTextMessageDetails()Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->textMessageDetails:Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserBannedDetails()Lcom/google/api/services/youtube/model/LiveChatUserBannedMessageDetails;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->userBannedDetails:Lcom/google/api/services/youtube/model/LiveChatUserBannedMessageDetails;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 446
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    return-object p1
.end method

.method public final setAuthorChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->authorChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setDisplayMessage(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->displayMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final setFanFundingEventDetails(Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->fanFundingEventDetails:Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;

    return-object p0
.end method

.method public final setHasDisplayContent(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->hasDisplayContent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setLiveChatId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->liveChatId:Ljava/lang/String;

    return-object p0
.end method

.method public final setMessageDeletedDetails(Lcom/google/api/services/youtube/model/LiveChatMessageDeletedDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->messageDeletedDetails:Lcom/google/api/services/youtube/model/LiveChatMessageDeletedDetails;

    return-object p0
.end method

.method public final setMessageRetractedDetails(Lcom/google/api/services/youtube/model/LiveChatMessageRetractedDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->messageRetractedDetails:Lcom/google/api/services/youtube/model/LiveChatMessageRetractedDetails;

    return-object p0
.end method

.method public final setPollClosedDetails(Lcom/google/api/services/youtube/model/LiveChatPollClosedDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->pollClosedDetails:Lcom/google/api/services/youtube/model/LiveChatPollClosedDetails;

    return-object p0
.end method

.method public final setPollEditedDetails(Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->pollEditedDetails:Lcom/google/api/services/youtube/model/LiveChatPollEditedDetails;

    return-object p0
.end method

.method public final setPollOpenedDetails(Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->pollOpenedDetails:Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;

    return-object p0
.end method

.method public final setPollVotedDetails(Lcom/google/api/services/youtube/model/LiveChatPollVotedDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->pollVotedDetails:Lcom/google/api/services/youtube/model/LiveChatPollVotedDetails;

    return-object p0
.end method

.method public final setPublishedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->publishedAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setSuperChatDetails(Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->superChatDetails:Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;

    return-object p0
.end method

.method public final setSuperStickerDetails(Lcom/google/api/services/youtube/model/LiveChatSuperStickerDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->superStickerDetails:Lcom/google/api/services/youtube/model/LiveChatSuperStickerDetails;

    return-object p0
.end method

.method public final setTextMessageDetails(Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->textMessageDetails:Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final setUserBannedDetails(Lcom/google/api/services/youtube/model/LiveChatUserBannedMessageDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->userBannedDetails:Lcom/google/api/services/youtube/model/LiveChatUserBannedMessageDetails;

    return-object p0
.end method

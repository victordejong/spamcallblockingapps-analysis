.class public final Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private amountMicros:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private commentText:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private createdAt:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private displayString:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isSuperChatForGood:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isSuperStickerEvent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private messageType:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private nonprofit:Lcom/google/api/services/youtube/model/Nonprofit;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private superStickerMetadata:Lcom/google/api/services/youtube/model/SuperStickerMetadata;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private supporterDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->clone()Lcom/google/api/services/youtube/model/SuperChatEventSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->clone()Lcom/google/api/services/youtube/model/SuperChatEventSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 1

    .line 346
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->clone()Lcom/google/api/services/youtube/model/SuperChatEventSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getAmountMicros()Ljava/math/BigInteger;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->amountMicros:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCommentText()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->commentText:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->createdAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayString()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->displayString:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsSuperChatForGood()Ljava/lang/Boolean;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->isSuperChatForGood:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSuperStickerEvent()Ljava/lang/Boolean;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->isSuperStickerEvent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getMessageType()Ljava/lang/Long;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->messageType:Ljava/lang/Long;

    return-object v0
.end method

.method public final getNonprofit()Lcom/google/api/services/youtube/model/Nonprofit;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->nonprofit:Lcom/google/api/services/youtube/model/Nonprofit;

    return-object v0
.end method

.method public final getSuperStickerMetadata()Lcom/google/api/services/youtube/model/SuperStickerMetadata;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->superStickerMetadata:Lcom/google/api/services/youtube/model/SuperStickerMetadata;

    return-object v0
.end method

.method public final getSupporterDetails()Lcom/google/api/services/youtube/model/ChannelProfileDetails;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->supporterDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 341
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;

    return-object p1
.end method

.method public final setAmountMicros(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->amountMicros:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setCommentText(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->commentText:Ljava/lang/String;

    return-object p0
.end method

.method public final setCreatedAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->createdAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setCurrency(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final setDisplayString(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->displayString:Ljava/lang/String;

    return-object p0
.end method

.method public final setIsSuperChatForGood(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->isSuperChatForGood:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsSuperStickerEvent(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->isSuperStickerEvent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setMessageType(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->messageType:Ljava/lang/Long;

    return-object p0
.end method

.method public final setNonprofit(Lcom/google/api/services/youtube/model/Nonprofit;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->nonprofit:Lcom/google/api/services/youtube/model/Nonprofit;

    return-object p0
.end method

.method public final setSuperStickerMetadata(Lcom/google/api/services/youtube/model/SuperStickerMetadata;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->superStickerMetadata:Lcom/google/api/services/youtube/model/SuperStickerMetadata;

    return-object p0
.end method

.method public final setSupporterDetails(Lcom/google/api/services/youtube/model/ChannelProfileDetails;)Lcom/google/api/services/youtube/model/SuperChatEventSnippet;
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperChatEventSnippet;->supporterDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object p0
.end method

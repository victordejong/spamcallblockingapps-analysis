.class public final Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private amountDisplayString:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private amountMicros:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private tier:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private userComment:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getAmountDisplayString()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->amountDisplayString:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmountMicros()Ljava/math/BigInteger;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->amountMicros:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getTier()Ljava/lang/Long;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->tier:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUserComment()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->userComment:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;

    return-object p1
.end method

.method public final setAmountDisplayString(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->amountDisplayString:Ljava/lang/String;

    return-object p0
.end method

.method public final setAmountMicros(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->amountMicros:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setCurrency(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final setTier(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->tier:Ljava/lang/Long;

    return-object p0
.end method

.method public final setUserComment(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatSuperChatDetails;->userComment:Ljava/lang/String;

    return-object p0
.end method

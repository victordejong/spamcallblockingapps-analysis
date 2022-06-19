.class public final Lcom/google/api/services/gmail/model/Message;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private historyId:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private internalDate:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private labelIds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private payload:Lcom/google/api/services/gmail/model/MessagePart;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private raw:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private sizeEstimate:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private snippet:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private threadId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Message;->clone()Lcom/google/api/services/gmail/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Message;->clone()Lcom/google/api/services/gmail/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/Message;
    .locals 1

    .line 310
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/Message;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Message;->clone()Lcom/google/api/services/gmail/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public final decodeRaw()[B
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->raw:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final encodeRaw([B)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 242
    invoke-static {p1}, Lcom/google/api/client/a/d;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->raw:Ljava/lang/String;

    return-object p0
.end method

.method public final getHistoryId()Ljava/math/BigInteger;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->historyId:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInternalDate()Ljava/lang/Long;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->internalDate:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLabelIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->labelIds:Ljava/util/List;

    return-object v0
.end method

.method public final getPayload()Lcom/google/api/services/gmail/model/MessagePart;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->payload:Lcom/google/api/services/gmail/model/MessagePart;

    return-object v0
.end method

.method public final getRaw()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public final getSizeEstimate()Ljava/lang/Integer;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->sizeEstimate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public final getThreadId()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Message;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Message;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Message;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Message;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Message;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 305
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/Message;

    return-object p1
.end method

.method public final setHistoryId(Ljava/math/BigInteger;)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->historyId:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setInternalDate(Ljava/lang/Long;)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->internalDate:Ljava/lang/Long;

    return-object p0
.end method

.method public final setLabelIds(Ljava/util/List;)Lcom/google/api/services/gmail/model/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/gmail/model/Message;"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->labelIds:Ljava/util/List;

    return-object p0
.end method

.method public final setPayload(Lcom/google/api/services/gmail/model/MessagePart;)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->payload:Lcom/google/api/services/gmail/model/MessagePart;

    return-object p0
.end method

.method public final setRaw(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->raw:Ljava/lang/String;

    return-object p0
.end method

.method public final setSizeEstimate(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->sizeEstimate:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setSnippet(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->snippet:Ljava/lang/String;

    return-object p0
.end method

.method public final setThreadId(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Message;
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Message;->threadId:Ljava/lang/String;

    return-object p0
.end method

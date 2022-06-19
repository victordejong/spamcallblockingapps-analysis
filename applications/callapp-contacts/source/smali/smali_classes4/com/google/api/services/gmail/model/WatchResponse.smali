.class public final Lcom/google/api/services/gmail/model/WatchResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private expiration:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private historyId:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/WatchResponse;->clone()Lcom/google/api/services/gmail/model/WatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/WatchResponse;->clone()Lcom/google/api/services/gmail/model/WatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/WatchResponse;
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/WatchResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/WatchResponse;->clone()Lcom/google/api/services/gmail/model/WatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiration()Ljava/lang/Long;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/api/services/gmail/model/WatchResponse;->expiration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getHistoryId()Ljava/math/BigInteger;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/api/services/gmail/model/WatchResponse;->historyId:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/WatchResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/WatchResponse;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/WatchResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/WatchResponse;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/WatchResponse;
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/WatchResponse;

    return-object p1
.end method

.method public final setExpiration(Ljava/lang/Long;)Lcom/google/api/services/gmail/model/WatchResponse;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/api/services/gmail/model/WatchResponse;->expiration:Ljava/lang/Long;

    return-object p0
.end method

.method public final setHistoryId(Ljava/math/BigInteger;)Lcom/google/api/services/gmail/model/WatchResponse;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/google/api/services/gmail/model/WatchResponse;->historyId:Ljava/math/BigInteger;

    return-object p0
.end method

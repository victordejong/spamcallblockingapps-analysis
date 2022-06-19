.class public final Lcom/google/api/services/drive/model/Channel;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private expiration:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private payload:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private resourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private resourceUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Channel;->clone()Lcom/google/api/services/drive/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Channel;->clone()Lcom/google/api/services/drive/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/Channel;
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Channel;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Channel;->clone()Lcom/google/api/services/drive/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiration()Ljava/lang/Long;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->expiration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->params:Ljava/util/Map;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/Boolean;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->payload:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getResourceUri()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->resourceUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/api/services/drive/model/Channel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Channel;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Channel;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Channel;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Channel;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 290
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/Channel;

    return-object p1
.end method

.method public final setAddress(Ljava/lang/String;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->address:Ljava/lang/String;

    return-object p0
.end method

.method public final setExpiration(Ljava/lang/Long;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->expiration:Ljava/lang/Long;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setParams(Ljava/util/Map;)Lcom/google/api/services/drive/model/Channel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/Channel;"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->params:Ljava/util/Map;

    return-object p0
.end method

.method public final setPayload(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->payload:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setResourceId(Ljava/lang/String;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->resourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final setResourceUri(Ljava/lang/String;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->resourceUri:Ljava/lang/String;

    return-object p0
.end method

.method public final setToken(Ljava/lang/String;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->token:Ljava/lang/String;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/services/drive/model/Channel;
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/google/api/services/drive/model/Channel;->type:Ljava/lang/String;

    return-object p0
.end method

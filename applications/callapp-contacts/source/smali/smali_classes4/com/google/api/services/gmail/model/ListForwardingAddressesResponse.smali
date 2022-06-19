.class public final Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private forwardingAddresses:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/ForwardingAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/google/api/services/gmail/model/ForwardingAddress;

    invoke-static {v0}, Lcom/google/api/client/a/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;->clone()Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;->clone()Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;->clone()Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getForwardingAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/ForwardingAddress;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;->forwardingAddresses:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;

    return-object p1
.end method

.method public final setForwardingAddresses(Ljava/util/List;)Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/ForwardingAddress;",
            ">;)",
            "Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ListForwardingAddressesResponse;->forwardingAddresses:Ljava/util/List;

    return-object p0
.end method

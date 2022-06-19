.class public final Lcom/google/api/services/gmail/model/ModifyThreadRequest;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private addLabelIds:Ljava/util/List;
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

.field private removeLabelIds:Ljava/util/List;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ModifyThreadRequest;->clone()Lcom/google/api/services/gmail/model/ModifyThreadRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ModifyThreadRequest;->clone()Lcom/google/api/services/gmail/model/ModifyThreadRequest;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/ModifyThreadRequest;
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/ModifyThreadRequest;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/ModifyThreadRequest;->clone()Lcom/google/api/services/gmail/model/ModifyThreadRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getAddLabelIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ModifyThreadRequest;->addLabelIds:Ljava/util/List;

    return-object v0
.end method

.method public final getRemoveLabelIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/api/services/gmail/model/ModifyThreadRequest;->removeLabelIds:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ModifyThreadRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ModifyThreadRequest;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/ModifyThreadRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ModifyThreadRequest;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/ModifyThreadRequest;
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/ModifyThreadRequest;

    return-object p1
.end method

.method public final setAddLabelIds(Ljava/util/List;)Lcom/google/api/services/gmail/model/ModifyThreadRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/gmail/model/ModifyThreadRequest;"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ModifyThreadRequest;->addLabelIds:Ljava/util/List;

    return-object p0
.end method

.method public final setRemoveLabelIds(Ljava/util/List;)Lcom/google/api/services/gmail/model/ModifyThreadRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/gmail/model/ModifyThreadRequest;"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/google/api/services/gmail/model/ModifyThreadRequest;->removeLabelIds:Ljava/util/List;

    return-object p0
.end method

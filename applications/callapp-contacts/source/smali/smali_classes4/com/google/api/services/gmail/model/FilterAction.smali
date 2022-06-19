.class public final Lcom/google/api/services/gmail/model/FilterAction;
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

.field private forward:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/FilterAction;->clone()Lcom/google/api/services/gmail/model/FilterAction;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/FilterAction;->clone()Lcom/google/api/services/gmail/model/FilterAction;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/FilterAction;
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/FilterAction;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/FilterAction;->clone()Lcom/google/api/services/gmail/model/FilterAction;

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

    .line 62
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterAction;->addLabelIds:Ljava/util/List;

    return-object v0
.end method

.method public final getForward()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterAction;->forward:Ljava/lang/String;

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

    .line 96
    iget-object v0, p0, Lcom/google/api/services/gmail/model/FilterAction;->removeLabelIds:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/FilterAction;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/FilterAction;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/FilterAction;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/FilterAction;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/FilterAction;
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/FilterAction;

    return-object p1
.end method

.method public final setAddLabelIds(Ljava/util/List;)Lcom/google/api/services/gmail/model/FilterAction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/gmail/model/FilterAction;"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterAction;->addLabelIds:Ljava/util/List;

    return-object p0
.end method

.method public final setForward(Ljava/lang/String;)Lcom/google/api/services/gmail/model/FilterAction;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterAction;->forward:Ljava/lang/String;

    return-object p0
.end method

.method public final setRemoveLabelIds(Ljava/util/List;)Lcom/google/api/services/gmail/model/FilterAction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/gmail/model/FilterAction;"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/google/api/services/gmail/model/FilterAction;->removeLabelIds:Ljava/util/List;

    return-object p0
.end method

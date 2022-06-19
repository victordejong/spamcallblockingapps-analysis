.class public final Lcom/google/api/services/drive/model/ChangeList;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private changes:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Change;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private newStartPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/google/api/services/drive/model/Change;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/ChangeList;->clone()Lcom/google/api/services/drive/model/ChangeList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/ChangeList;->clone()Lcom/google/api/services/drive/model/ChangeList;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/ChangeList;
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/ChangeList;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/ChangeList;->clone()Lcom/google/api/services/drive/model/ChangeList;

    move-result-object v0

    return-object v0
.end method

.method public final getChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Change;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/api/services/drive/model/ChangeList;->changes:Ljava/util/List;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/api/services/drive/model/ChangeList;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewStartPageToken()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/api/services/drive/model/ChangeList;->newStartPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/api/services/drive/model/ChangeList;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/ChangeList;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/ChangeList;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/ChangeList;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/ChangeList;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/ChangeList;
    .locals 0

    .line 152
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/ChangeList;

    return-object p1
.end method

.method public final setChanges(Ljava/util/List;)Lcom/google/api/services/drive/model/ChangeList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Change;",
            ">;)",
            "Lcom/google/api/services/drive/model/ChangeList;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/google/api/services/drive/model/ChangeList;->changes:Ljava/util/List;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/ChangeList;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/api/services/drive/model/ChangeList;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setNewStartPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/model/ChangeList;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/api/services/drive/model/ChangeList;->newStartPageToken:Ljava/lang/String;

    return-object p0
.end method

.method public final setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/model/ChangeList;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/google/api/services/drive/model/ChangeList;->nextPageToken:Ljava/lang/String;

    return-object p0
.end method

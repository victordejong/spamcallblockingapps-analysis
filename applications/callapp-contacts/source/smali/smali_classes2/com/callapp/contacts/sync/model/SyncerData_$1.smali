.class final Lcom/callapp/contacts/sync/model/SyncerData_$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/sync/model/SyncerData_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/g<",
        "Lcom/callapp/contacts/sync/model/SyncerData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getToMany(Lcom/callapp/contacts/sync/model/SyncerData;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/sync/model/SyncerData;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/sync/model/SyncerDetails;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerData;->getSyncerDetails()Lio/objectbox/relation/ToMany;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getToMany(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 104
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/model/SyncerData_$1;->getToMany(Lcom/callapp/contacts/sync/model/SyncerData;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

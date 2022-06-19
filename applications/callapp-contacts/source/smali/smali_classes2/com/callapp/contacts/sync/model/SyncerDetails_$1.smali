.class final Lcom/callapp/contacts/sync/model/SyncerDetails_$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/sync/model/SyncerDetails_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/h<",
        "Lcom/callapp/contacts/sync/model/SyncerDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getToOne(Lcom/callapp/contacts/sync/model/SyncerDetails;)Lio/objectbox/relation/ToOne;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/sync/model/SyncerDetails;",
            ")",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/sync/model/SyncerData;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerDetails;->getSyncerData()Lio/objectbox/relation/ToOne;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getToOne(Ljava/lang/Object;)Lio/objectbox/relation/ToOne;
    .locals 0

    .line 110
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerDetails;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/model/SyncerDetails_$1;->getToOne(Lcom/callapp/contacts/sync/model/SyncerDetails;)Lio/objectbox/relation/ToOne;

    move-result-object p1

    return-object p1
.end method

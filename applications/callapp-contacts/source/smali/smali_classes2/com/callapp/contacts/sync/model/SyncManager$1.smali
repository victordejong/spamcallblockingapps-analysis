.class final Lcom/callapp/contacts/sync/model/SyncManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/model/SyncManager;->resetContactDbAndSynchronizes(Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$SyncerDetailsDataBox:Lio/objectbox/a;

.field final synthetic val$query:Lio/objectbox/query/Query;

.field final synthetic val$removedSyncerDetails:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/objectbox/a;Ljava/util/List;Lio/objectbox/query/Query;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncManager$1;->val$SyncerDetailsDataBox:Lio/objectbox/a;

    iput-object p2, p0, Lcom/callapp/contacts/sync/model/SyncManager$1;->val$removedSyncerDetails:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/sync/model/SyncManager$1;->val$query:Lio/objectbox/query/Query;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncManager$1;->val$SyncerDetailsDataBox:Lio/objectbox/a;

    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncManager$1;->val$removedSyncerDetails:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncManager$1;->val$query:Lio/objectbox/query/Query;

    invoke-virtual {v0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

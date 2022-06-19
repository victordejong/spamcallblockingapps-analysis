.class final Lcom/callapp/contacts/sync/model/SyncManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/query/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/model/SyncManager;->getSyncData()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/query/c<",
        "Lcom/callapp/contacts/sync/model/SyncerData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncManager$2;->val$result:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/callapp/contacts/sync/model/SyncerData;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncManager$2;->val$result:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/model/contact/ContactData;->splitPhoneOrIdKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/model/SyncManager$2;->accept(Lcom/callapp/contacts/sync/model/SyncerData;)V

    return-void
.end method

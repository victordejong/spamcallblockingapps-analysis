.class Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;->onSyncEnd()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer$1;->a:Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 0

    .line 72
    invoke-static {}, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;->a()V

    return-void
.end method

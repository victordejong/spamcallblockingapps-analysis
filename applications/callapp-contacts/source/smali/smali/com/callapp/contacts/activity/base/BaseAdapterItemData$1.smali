.class final Lcom/callapp/contacts/activity/base/BaseAdapterItemData$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->createCacheKeysAsync(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData$1;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData$1;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 159
    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->access$000(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

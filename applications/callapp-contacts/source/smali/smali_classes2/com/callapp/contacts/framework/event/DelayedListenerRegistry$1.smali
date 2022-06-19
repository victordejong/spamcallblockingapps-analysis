.class Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;->a:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;->a:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    invoke-static {v0}, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->a(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;)Z

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;->a:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;->a:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    invoke-static {v1}, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->b(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;)Ljava/util/Set;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;->a:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    sget-object v3, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->a(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;Ljava/util/Set;)Ljava/util/Set;

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const-class v0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    const-string v2, "notifyTask Firing %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;->a:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    iget-object v0, v0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {v1, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Lb/a;->a:Lb/a$a;

    new-instance v3, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1$1;-><init>(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;Ljava/util/Map$Entry;Ljava/util/Set;)V

    invoke-static {v3}, Lb/a$a;->a(Lcom/callapp/contacts/manager/task/Task;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

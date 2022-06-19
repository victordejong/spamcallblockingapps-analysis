.class Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;Ljava/util/Map$Entry;Ljava/util/Set;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1$1;->c:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;

    iput-object p2, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1$1;->a:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1$1;->b:Ljava/util/Set;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    iget-object v1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1$1;->c:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;

    iget-object v1, v1, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;->a:Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    iget-object v1, v1, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1$1;->b:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 60
    const-class v1, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

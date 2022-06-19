.class Lcom/callapp/contacts/manager/ContactLoaderManager$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/ContactLoaderManager;->scheduleCancelingContactLoader(Lcom/callapp/contacts/model/contact/ContactData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/manager/ContactLoaderManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/ContactLoaderManager;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->b:Lcom/callapp/contacts/manager/ContactLoaderManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->b:Lcom/callapp/contacts/manager/ContactLoaderManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->access$100(Lcom/callapp/contacts/manager/ContactLoaderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->b:Lcom/callapp/contacts/manager/ContactLoaderManager;

    invoke-static {v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->access$200(Lcom/callapp/contacts/manager/ContactLoaderManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/api/ContactLoader;

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->getListenersCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->b:Lcom/callapp/contacts/manager/ContactLoaderManager;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->removeListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)I

    move-result v3

    if-nez v3, :cond_0

    .line 119
    const-class v3, Lcom/callapp/contacts/manager/ContactLoaderManager;

    const-string v4, "Stopping ContactLoader for phone: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->stopLoading(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 122
    iget-object v2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->b:Lcom/callapp/contacts/manager/ContactLoaderManager;

    invoke-static {v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->access$200(Lcom/callapp/contacts/manager/ContactLoaderManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_0
    const-class v2, Lcom/callapp/contacts/manager/ContactLoaderManager;

    const-string v3, "Cancelling stopping ContactLoader for phone: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 128
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->b:Lcom/callapp/contacts/manager/ContactLoaderManager;

    invoke-static {v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->access$300(Lcom/callapp/contacts/manager/ContactLoaderManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 130
    iget-object v2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$2;->b:Lcom/callapp/contacts/manager/ContactLoaderManager;

    invoke-static {v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->access$300(Lcom/callapp/contacts/manager/ContactLoaderManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

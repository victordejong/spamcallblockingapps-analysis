.class Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Ljava/util/Set;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;Ljava/util/Map$Entry;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;->a:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;->c:Ljava/util/Set;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 141
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;->c:Ljava/util/Set;

    invoke-interface {v2, v3, v4}, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 143
    const-class v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onContactChanged() took\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 145
    const-class v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

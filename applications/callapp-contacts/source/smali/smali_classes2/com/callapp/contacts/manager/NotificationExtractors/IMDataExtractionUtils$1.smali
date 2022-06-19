.class final Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$1;->a:Lcom/callapp/framework/phone/Phone;

    iput-object p2, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 6

    .line 108
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->e()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->phoneAsRaw:Lio/objectbox/g;

    iget-object v4, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 113
    iget-object v4, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$1;->b:Ljava/lang/String;

    iget-object v5, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->setDisplayName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v3}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    goto :goto_0

    .line 119
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

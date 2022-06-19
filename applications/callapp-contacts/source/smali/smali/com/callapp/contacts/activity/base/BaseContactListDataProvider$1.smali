.class Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;->a:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 43
    monitor-enter p0

    const/4 v0, 0x0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;->a:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->a(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;->a:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->a(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;->a:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->a(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$OnDataChangedListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$OnDataChangedListener;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;->a:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->getNewData()Ljava/util/List;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;->a:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    invoke-static {v2}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->b(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 56
    :goto_0
    iget-object v4, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$1;->a:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    invoke-static {v4, v1}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->a(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;Ljava/util/List;)Ljava/util/List;

    if-eqz v0, :cond_3

    .line 60
    array-length v4, v0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    if-eqz v5, :cond_2

    .line 62
    invoke-interface {v5, v1, v2}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$OnDataChangedListener;->a(Ljava/util/List;Z)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

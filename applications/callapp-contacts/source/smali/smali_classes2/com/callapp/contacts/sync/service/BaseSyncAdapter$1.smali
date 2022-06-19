.class Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Lcom/callapp/contacts/sync/model/SyncContext;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/sync/model/SyncContext;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;Lkotlin/c/f;ILcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/sync/model/SyncContext;Ljava/util/List;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iput p3, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->a:I

    iput-object p4, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p5, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->c:Lcom/callapp/contacts/sync/model/SyncContext;

    iput-object p6, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->d:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/manager/task/Task;-><init>(Lkotlin/c/f;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 14

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iget v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->a:I

    iget v2, v0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(II)V

    .line 230
    new-instance v0, Lcom/callapp/contacts/sync/model/SyncerContext;

    iget-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/sync/model/SyncerContext;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 231
    iget-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    invoke-static {v1}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/sync/model/SyncerContext;->singleNameCount:Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    :try_start_0
    iget-object v3, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->c:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v4, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/sync/model/SyncContext;->getSyncData(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/sync/model/SyncerData;

    move-result-object v2

    .line 235
    iget-object v3, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/sync/syncer/Syncer;

    const/4 v5, 0x0

    .line 237
    iput-boolean v5, v0, Lcom/callapp/contacts/sync/model/SyncerContext;->fullySynced:Z

    .line 239
    iget-object v6, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/sync/syncer/Syncer;->shouldSyncContact(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x5

    if-nez v6, :cond_1

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v11, "Skipping %s/%s %s(%s,\'%s\')"

    new-array v10, v10, [Ljava/lang/Object;

    iget v12, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->a:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v5

    iget-object v5, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iget v5, v5, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v9

    iget-object v4, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    .line 241
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v8

    iget-object v4, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v7

    .line 240
    invoke-static {v6, v11, v10}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v6, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v11

    invoke-virtual {v11}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iget-object v3, v0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->a:I

    iget-object v3, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    .line 262
    invoke-static {v3}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->b(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    if-lt v0, v3, :cond_2

    .line 263
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iput-boolean v1, v0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a:Z

    :cond_2
    if-eqz v2, :cond_3

    .line 268
    :try_start_1
    invoke-static {v2}, Lcom/callapp/contacts/sync/model/SyncManager;->setSyncData(Lcom/callapp/contacts/sync/model/SyncerData;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 270
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Landroid/database/sqlite/SQLiteException;)V

    .line 273
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 249
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v11, "Syncing %s/%s %s(%s,\'%s\')"

    new-array v10, v10, [Ljava/lang/Object;

    iget v12, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->a:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v5

    iget-object v5, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iget v5, v5, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v9

    iget-object v5, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v8

    iget-object v5, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    .line 250
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v7

    .line 249
    invoke-static {v6, v11, v10}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v4, v0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V

    .line 254
    iget-object v5, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 255
    iget-boolean v5, v0, Lcom/callapp/contacts/sync/model/SyncerContext;->fullySynced:Z

    if-eqz v5, :cond_0

    .line 256
    invoke-virtual {v4}, Lcom/callapp/contacts/sync/syncer/Syncer;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->c:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-wide v5, v5, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-virtual {v2, v4, v5, v6}, Lcom/callapp/contacts/sync/model/SyncerData;->setSyncDate(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iget-object v3, v0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->a:I

    iget-object v3, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    .line 262
    invoke-static {v3}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->b(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    if-lt v0, v3, :cond_6

    .line 263
    iget-object v0, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iput-boolean v1, v0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a:Z

    :cond_6
    if-eqz v2, :cond_3

    .line 268
    :try_start_3
    invoke-static {v2}, Lcom/callapp/contacts/sync/model/SyncManager;->setSyncData(Lcom/callapp/contacts/sync/model/SyncerData;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 261
    iget-object v3, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iget-object v4, v3, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->d:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->a:I

    iget-object v4, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    .line 262
    invoke-static {v4}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->b(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    if-lt v3, v4, :cond_7

    .line 263
    iget-object v3, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    iput-boolean v1, v3, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a:Z

    :cond_7
    if-eqz v2, :cond_8

    .line 268
    :try_start_4
    invoke-static {v2}, Lcom/callapp/contacts/sync/model/SyncManager;->setSyncData(Lcom/callapp/contacts/sync/model/SyncerData;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Landroid/database/sqlite/SQLiteException;)V

    .line 273
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/callapp/contacts/sync/service/BaseSyncAdapter$1;->e:Lcom/callapp/contacts/sync/service/BaseSyncAdapter;

    invoke-static {v1}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->c(Lcom/callapp/contacts/sync/service/BaseSyncAdapter;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 274
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/sync/service/BaseSyncAdapter;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    return-void
.end method

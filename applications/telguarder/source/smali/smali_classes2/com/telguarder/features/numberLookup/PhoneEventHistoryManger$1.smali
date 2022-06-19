.class Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->saveHistoryListCache(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 111
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 114
    :try_start_0
    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->access$002(Z)Z

    .line 115
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v3, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->access$100(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 155
    :cond_1
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iput-boolean v2, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->spamCommentLoadInProgress:Z

    .line 156
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

    .line 157
    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->access$002(Z)Z

    return-void

    .line 117
    :cond_2
    :try_start_1
    new-instance v3, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$1;

    invoke-direct {v3, p0}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;)V

    invoke-virtual {v0, v3}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 124
    iget-object v3, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 126
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 128
    new-instance v5, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;

    invoke-direct {v5, p0, v4}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    invoke-virtual {v0, v5}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 155
    :cond_4
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iput-boolean v2, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->spamCommentLoadInProgress:Z

    .line 156
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

    .line 157
    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->access$002(Z)Z

    return-void

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 154
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 155
    :cond_5
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iput-boolean v2, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->spamCommentLoadInProgress:Z

    .line 156
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

    .line 157
    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->access$002(Z)Z

    .line 158
    throw v3
.end method

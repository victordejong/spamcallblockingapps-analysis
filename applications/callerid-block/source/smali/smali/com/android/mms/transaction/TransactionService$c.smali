.class final Lcom/android/mms/transaction/TransactionService$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const-string p1, "EVENT_QUIT"

    return-object p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string p1, "EVENT_CONTINUE_MMS_CONNECTIVITY"

    return-object p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "EVENT_TRANSACTION_REQUEST"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "EVENT_HANDLE_NEXT_PENDING_TRANSACTION"

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string p1, "EVENT_NEW_INTENT"

    return-object p1

    :cond_4
    const-string p1, "unknown message.what"

    return-object p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "NOTIFICATION_TRANSACTION"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "RETRIEVE_TRANSACTION"

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "SEND_TRANSACTION"

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "READREC_TRANSACTION"

    return-object p1

    :cond_3
    const-string p1, "invalid transaction type"

    return-object p1
.end method

.method private e(Lcom/android/mms/transaction/n;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->d(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/n;

    invoke-virtual {v2, p1}, Lcom/android/mms/transaction/n;->i(Lcom/android/mms/transaction/n;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Mms"

    invoke-static {v1, v4}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction already pending: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/mms/transaction/n;->f()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return v3

    :cond_2
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/n;

    invoke-virtual {v2, p1}, Lcom/android/mms/transaction/n;->i(Lcom/android/mms/transaction/n;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "Mms"

    invoke-static {v1, v4}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicated transaction: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/mms/transaction/n;->f()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    monitor-exit v0

    return v3

    :cond_5
    const-string v1, "Mms"

    invoke-static {v1, v4}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Mms"

    const-string v2, "processTransaction: call beginMmsConnectivity..."

    invoke-static {v1, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionService;->h()I

    move-result v1

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->d(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Mms"

    invoke-static {p1, v4}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Mms"

    const-string v1, "processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity"

    invoke-static {p1, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    monitor-exit v0

    return v3

    :cond_8
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "Mms"

    invoke-static {v1, v4}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding transaction to \'mPending\' list: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->d(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return v3

    :cond_a
    const-string v1, "Mms"

    invoke-static {v1, v4}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "Mms"

    invoke-static {v0, v4}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processTransaction: starting transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v0}, Lcom/android/mms/transaction/g;->a(Lcom/android/mms/transaction/h;)V

    invoke-virtual {p1}, Lcom/android/mms/transaction/n;->j()V

    return v3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public c()V
    .locals 9

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->d(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->d(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/n;

    iget-object v2, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/q;->d(I)V

    instance-of v2, v1, Lcom/android/mms/transaction/m;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/mms/transaction/m;

    iget-object v5, v2, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    iget-object v2, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v2, v5}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    const/16 v2, 0x86

    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "resp_st"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Lcom/android/mms/transaction/g;->c()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public d(Lcom/android/mms/transaction/n;Lcom/android/mms/transaction/p;)V
    .locals 4

    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPendingTxn: transaction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->d(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->d(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/mms/transaction/n;

    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/n;->o(Lcom/android/mms/transaction/p;)V

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/n;->f()I

    move-result p2

    const-string v0, "Mms"

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPendingTxn: process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$c;->e(Lcom/android/mms/transaction/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "Mms"

    invoke-static {p2, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "Mms"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started deferred processing of transaction  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, p2}, Landroid/app/Service;->stopSelf(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Mms"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Le/d/a/a/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    if-nez v2, :cond_7

    const-string p1, "Mms"

    invoke-static {p1, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Mms"

    const-string p2, "processPendingTxn: no more transaction, endMmsConnectivity"

    invoke-static {p1, p2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionService;->j()V

    :cond_7
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling incoming message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$c;->a(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_8

    const/16 v3, 0x64

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/transaction/TransactionService;->q(Landroid/content/Intent;I)V

    return-void

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/mms/transaction/p;

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/transaction/TransactionService$c;->d(Lcom/android/mms/transaction/n;Lcom/android/mms/transaction/p;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p1

    return-void

    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "Mms"

    invoke-static {p1, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Mms"

    const-string v0, "handle EVENT_CONTINUE_MMS_CONNECTIVITY event..."

    invoke-static {p1, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :try_start_1
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionService;->h()I

    move-result p1

    if-eqz p1, :cond_6

    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extending MMS connectivity returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " instead of APN_ALREADY_ACTIVE"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_6
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->c(Lcom/android/mms/transaction/TransactionService;)V

    return-void

    :catch_0
    const-string p1, "Mms"

    const-string v0, "Attempt to extend use of MMS connectivity failed"

    invoke-static {p1, v0}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    :try_start_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/mms/transaction/o;

    const-string v6, "Mms"

    invoke-static {v6, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_TRANSACTION_REQUEST MmscUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " proxy port: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v7, Lcom/android/mms/transaction/p;

    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->c()I

    move-result v9

    invoke-direct {v7, v6, v8, v9}, Lcom/android/mms/transaction/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_a
    new-instance v7, Lcom/android/mms/transaction/p;

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v7, v6, v4}, Lcom/android/mms/transaction/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->e()I

    move-result v6

    const-string v8, "Mms"

    invoke-static {v8, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "Mms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle EVENT_TRANSACTION_REQUEST: transactionType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/android/mms/transaction/TransactionService$c;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v6, :cond_10

    if-eq v6, v3, :cond_f

    if-eq v6, v1, :cond_e

    if-eq v6, v2, :cond_d

    const-string v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transaction type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string p1, "Mms"

    invoke-static {p1, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction was null. Stopping self: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionService;->j()V

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopSelf(I)V

    return-void

    :cond_d
    :try_start_4
    new-instance v2, Lcom/android/mms/transaction/j;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v0, v7, v5}, Lcom/android/mms/transaction/j;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    new-instance v2, Lcom/android/mms/transaction/m;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v0, v7, v5}, Lcom/android/mms/transaction/m;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    new-instance v2, Lcom/android/mms/transaction/k;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v0, v7, v6}, Lcom/android/mms/transaction/k;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_12

    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/transaction/c;->c()Lcom/android/mms/transaction/c;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2, v6, v3}, Lcom/android/mms/transaction/k;->q(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v3, v8}, Lcom/android/mms/transaction/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    move-object v4, v2

    goto/16 :goto_6

    :catch_1
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto/16 :goto_3

    :cond_10
    :try_start_6
    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v3, Lcom/android/mms/transaction/f;

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v3, v5, v0, v7, v2}, Lcom/android/mms/transaction/f;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Ljava/lang/String;)V

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_11
    invoke-virtual {v5}, Lcom/android/mms/transaction/o;->d()[B

    move-result-object v2

    new-instance v3, Lcom/google/android/mms/c/n;

    invoke-direct {v3, v2}, Lcom/google/android/mms/c/n;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object v2

    const/16 v3, 0x82

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/google/android/mms/c/f;->a()I

    move-result v5

    if-ne v5, v3, :cond_15

    new-instance v3, Lcom/android/mms/transaction/f;

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    check-cast v2, Lcom/google/android/mms/c/h;

    invoke-direct {v3, v5, v0, v7, v2}, Lcom/android/mms/transaction/f;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Lcom/google/android/mms/c/h;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :cond_12
    :goto_2
    :try_start_7
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService$c;->e(Lcom/android/mms/transaction/n;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v3, :cond_14

    const-string p1, "Mms"

    invoke-static {p1, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction was null. Stopping self: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionService;->j()V

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopSelf(I)V

    return-void

    :cond_14
    :try_start_8
    const-string v3, "Mms"

    invoke-static {v3, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started processing of incoming message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_5

    :cond_15
    :try_start_9
    const-string v2, "Mms"

    const-string v3, "Invalid PUSH data."

    invoke-static {v2, v3}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-string p1, "Mms"

    invoke-static {p1, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction was null. Stopping self: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionService;->j()V

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopSelf(I)V

    return-void

    :catchall_2
    move-exception p1

    goto/16 :goto_6

    :catch_2
    move-exception v2

    move-object v3, v4

    :goto_3
    :try_start_a
    const-string v5, "Mms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurred while handling message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v2}, Le/d/a/a/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v3, :cond_17

    :try_start_b
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3, p1}, Lcom/android/mms/transaction/g;->b(Lcom/android/mms/transaction/h;)V

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {p1}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_4

    :catchall_3
    move-exception v2

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_e
    const-string v2, "Mms"

    const-string v3, "Unexpected Throwable."

    invoke-static {v2, v3, p1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_17
    move-object v4, v3

    :cond_18
    :goto_4
    if-nez v4, :cond_1a

    const-string p1, "Mms"

    invoke-static {p1, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction was null. Stopping self: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionService;->j()V

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopSelf(I)V

    :cond_1a
    :goto_5
    return-void

    :catchall_6
    move-exception p1

    move-object v4, v3

    :goto_6
    if-nez v4, :cond_1c

    const-string v2, "Mms"

    invoke-static {v2, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction was null. Stopping self: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionService;->j()V

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$c;->a:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v1, v0}, Landroid/app/Service;->stopSelf(I)V

    :cond_1c
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

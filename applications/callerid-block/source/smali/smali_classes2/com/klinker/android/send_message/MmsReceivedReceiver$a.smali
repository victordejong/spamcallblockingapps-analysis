.class Lcom/klinker/android/send_message/MmsReceivedReceiver$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/klinker/android/send_message/MmsReceivedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic f:Lcom/klinker/android/send_message/MmsReceivedReceiver;


# direct methods
.method constructor <init>(Lcom/klinker/android/send_message/MmsReceivedReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->f:Lcom/klinker/android/send_message/MmsReceivedReceiver;

    iput-object p2, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->d:Landroid/content/Intent;

    iput-object p5, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->e:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "location_url"

    const-string v1, "MMS received, io exception"

    const-string v2, "MmsReceivedReceiver"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v6, v5

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-array v8, v6, [B

    const/4 v13, 0x0

    invoke-virtual {v5, v8, v13, v6}, Ljava/io/FileInputStream;->read([BII)I

    iget-object v7, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->f:Lcom/klinker/android/send_message/MmsReceivedReceiver;

    iget-object v9, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->c:Landroid/content/Context;

    iget-object v10, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->d:Landroid/content/Intent;

    invoke-static {v7, v9, v10, v8}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->a(Lcom/klinker/android/send_message/MmsReceivedReceiver;Landroid/content/Context;Landroid/content/Intent;[B)Ljava/util/List;

    move-result-object v14

    iget-object v7, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->c:Landroid/content/Context;

    new-instance v9, Le/a/b/e/c$b;

    new-instance v10, Le/a/b/e/c;

    iget-object v11, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->c:Landroid/content/Context;

    invoke-direct {v10, v11}, Le/a/b/e/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v9, v10, v3}, Le/a/b/e/c$b;-><init>(Le/a/b/e/c;Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->d:Landroid/content/Intent;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/klinker/android/send_message/j;->g()I

    move-result v11

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Le/a/b/e/b;->q(Landroid/content/Context;[BLe/a/b/e/c$b;Ljava/lang/String;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v8, "response saved successfully"

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v14, :cond_0

    const-string v4, "running the common async notifier for download"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/klinker/android/send_message/MmsReceivedReceiver$c;

    invoke-static {}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Void;

    invoke-virtual {v6, v8, v9}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v1, v3

    goto :goto_6

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v4

    move-object v7, v3

    goto :goto_1

    :catch_3
    move-exception v4

    move-object v7, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v4

    move-object v5, v3

    move-object v7, v5

    :goto_1
    move-object v3, v4

    :goto_2
    :try_start_4
    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_5
    move-exception v4

    move-object v5, v3

    move-object v7, v5

    :goto_3
    move-object v3, v4

    :goto_4
    :try_start_6
    const-string v4, "MMS received, file not found exception"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_1

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v3

    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_1
    :goto_5
    move-object v1, v4

    :cond_2
    :goto_6
    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->f:Lcom/klinker/android/send_message/MmsReceivedReceiver;

    iget-object v3, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->d:Landroid/content/Intent;

    invoke-static {v2, v3, v4}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->c(Lcom/klinker/android/send_message/MmsReceivedReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->d:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/c;->b(Ljava/lang/String;)V

    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->f:Lcom/klinker/android/send_message/MmsReceivedReceiver;

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v7}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->i(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->f:Lcom/klinker/android/send_message/MmsReceivedReceiver;

    iget-object v2, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/klinker/android/send_message/MmsReceivedReceiver;->h(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/klinker/android/send_message/MmsReceivedReceiver$a;->e:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_1
    move-exception v0

    move-object v3, v5

    :goto_7
    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception v3

    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_8
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

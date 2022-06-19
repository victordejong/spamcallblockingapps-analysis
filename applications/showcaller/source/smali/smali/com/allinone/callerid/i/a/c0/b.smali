.class public Lcom/allinone/callerid/i/a/c0/b;
.super Ljava/lang/Object;
.source "SpamCalllogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/c0/b$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/allinone/callerid/i/a/c0/a;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/c0/b$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/i/a/c0/b$a;-><init>(Lcom/allinone/callerid/i/a/c0/a;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    new-instance v0, Lcom/allinone/callerid/i/a/c0/b$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/i/a/c0/b$a;-><init>(Lcom/allinone/callerid/i/a/c0/a;)V

    .line 5
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.class public Lcom/allinone/callerid/i/a/l/e/c;
.super Ljava/lang/Object;
.source "WhiteDbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/l/e/c$c;,
        Lcom/allinone/callerid/i/a/l/e/c$a;,
        Lcom/allinone/callerid/i/a/l/e/c$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/allinone/callerid/bean/NoDisturbBean;Lcom/allinone/callerid/i/a/l/e/b;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/l/e/c$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/l/e/c$a;-><init>(Lcom/allinone/callerid/bean/NoDisturbBean;Lcom/allinone/callerid/i/a/l/e/b;)V

    .line 2
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/allinone/callerid/i/a/l/e/b;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/l/e/c$b;

    invoke-direct {v0, p1}, Lcom/allinone/callerid/i/a/l/e/c$b;-><init>(Lcom/allinone/callerid/i/a/l/e/b;)V

    .line 2
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Lcom/allinone/callerid/i/a/l/e/a;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/l/e/c$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/i/a/l/e/c$c;-><init>(Lcom/allinone/callerid/i/a/l/e/a;)V

    .line 2
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

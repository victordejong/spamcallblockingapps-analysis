.class public Lcom/allinone/callerid/i/a/f/b;
.super Ljava/lang/Object;
.source "BlockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/f/b$g;,
        Lcom/allinone/callerid/i/a/f/b$b;,
        Lcom/allinone/callerid/i/a/f/b$c;,
        Lcom/allinone/callerid/i/a/f/b$d;,
        Lcom/allinone/callerid/i/a/f/b$e;,
        Lcom/allinone/callerid/i/a/f/b$a;,
        Lcom/allinone/callerid/i/a/f/b$f;
    }
.end annotation


# direct methods
.method public static a(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/f/b$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/f/b$a;-><init>(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V

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

.method public static b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/f/b$f;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/f/b$f;-><init>(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

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

.method public static c(Lcom/allinone/callerid/i/a/a;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/f/b$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/i/a/f/b$c;-><init>(Lcom/allinone/callerid/i/a/a;)V

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

.method public static d(Lcom/allinone/callerid/i/a/a;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/f/b$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/i/a/f/b$b;-><init>(Lcom/allinone/callerid/i/a/a;)V

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

.method public static e(Ljava/lang/String;Lcom/allinone/callerid/i/a/a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/i/a/f/b$e;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/f/b$e;-><init>(Ljava/lang/String;Lcom/allinone/callerid/i/a/a;)V

    .line 2
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static f(Ljava/lang/String;Lcom/allinone/callerid/i/a/a;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/f/b$d;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/f/b$d;-><init>(Ljava/lang/String;Lcom/allinone/callerid/i/a/a;)V

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

.method public static g(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/f/b$g;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/f/b$g;-><init>(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V

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

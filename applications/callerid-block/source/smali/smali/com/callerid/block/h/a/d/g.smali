.class public Lcom/callerid/block/h/a/d/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/h/a/d/g$b;,
        Lcom/callerid/block/h/a/d/g$c;,
        Lcom/callerid/block/h/a/d/g$a;,
        Lcom/callerid/block/h/a/d/g$d;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/h/a/d/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Lcom/callerid/block/h/a/d/f;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/d/g$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/h/a/d/g$a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/h/a/d/f;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/d/f;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/d/g$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/h/a/d/g$b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/d/f;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/d/f;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/d/g$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/h/a/d/g$c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/d/f;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;ILcom/callerid/block/h/a/d/f;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/d/g$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/callerid/block/h/a/d/g$d;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/callerid/block/h/a/d/f;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

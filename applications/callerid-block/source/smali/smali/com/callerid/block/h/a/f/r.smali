.class public Lcom/callerid/block/h/a/f/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/h/a/f/r$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/q;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/f/r$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/h/a/f/r$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/q;)V

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    new-instance v0, Lcom/callerid/block/h/a/f/r$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/h/a/f/r$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/q;)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

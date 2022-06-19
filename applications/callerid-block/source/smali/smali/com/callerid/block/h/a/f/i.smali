.class public Lcom/callerid/block/h/a/f/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/h/a/f/i$b;,
        Lcom/callerid/block/h/a/f/i$a;
    }
.end annotation


# direct methods
.method public static a(ILcom/callerid/block/h/a/a;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/f/i$a;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/h/a/f/i$a;-><init>(ILcom/callerid/block/h/a/a;)V

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

.method public static b(ILcom/callerid/block/h/a/a;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/f/i$b;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/h/a/f/i$b;-><init>(ILcom/callerid/block/h/a/a;)V

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

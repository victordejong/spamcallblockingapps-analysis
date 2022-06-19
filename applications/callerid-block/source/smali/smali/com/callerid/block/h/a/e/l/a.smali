.class public Lcom/callerid/block/h/a/e/l/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/h/a/e/l/a$b;,
        Lcom/callerid/block/h/a/e/l/a$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/callerid/block/h/a/e/e;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/e/l/a$b;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/h/a/e/l/a$b;-><init>(Landroid/content/Context;Lcom/callerid/block/h/a/e/e;)V

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

.method public static b(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/callerid/block/h/a/e/l/a$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/h/a/e/l/a$a;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

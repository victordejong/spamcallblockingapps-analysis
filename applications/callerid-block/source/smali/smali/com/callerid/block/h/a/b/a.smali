.class public Lcom/callerid/block/h/a/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/h/a/b/a$b;,
        Lcom/callerid/block/h/a/b/a$c;,
        Lcom/callerid/block/h/a/b/a$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/callerid/block/h/a/b/b;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/b/a$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/h/a/b/a$a;-><init>(Lcom/callerid/block/h/a/b/b;)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Lcom/callerid/block/h/a/b/c;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/b/a$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/h/a/b/a$b;-><init>(Lcom/callerid/block/h/a/b/c;)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/b/a$c;

    invoke-direct {v0}, Lcom/callerid/block/h/a/b/a$c;-><init>()V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.class public Lcom/callerid/block/h/a/f/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/h/a/f/d$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/callerid/block/h/a/f/m;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/f/d$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/h/a/f/d$a;-><init>(Lcom/callerid/block/h/a/f/m;)V

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

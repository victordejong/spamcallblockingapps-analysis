.class public Lcom/callerid/block/h/a/e/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/h/a/e/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Lcom/callerid/block/h/a/e/a;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/callerid/block/util/n0;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/callerid/block/h/a/e/b$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/callerid/block/h/a/e/b$a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Lcom/callerid/block/h/a/e/a;)V

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

.class public Lcom/allinone/callerid/i/a/i/b;
.super Ljava/lang/Object;
.source "CollectInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/i/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lorg/json/JSONArray;Lcom/allinone/callerid/i/a/i/a;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/i/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/i/a/i/b$a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/allinone/callerid/i/a/i/a;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    new-instance v0, Lcom/allinone/callerid/i/a/i/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/i/a/i/b$a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/allinone/callerid/i/a/i/a;)V

    .line 6
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

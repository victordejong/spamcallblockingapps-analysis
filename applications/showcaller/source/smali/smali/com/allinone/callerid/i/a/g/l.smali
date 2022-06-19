.class public Lcom/allinone/callerid/i/a/g/l;
.super Ljava/lang/Object;
.source "GetSearchCalllogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/g/l$b;,
        Lcom/allinone/callerid/i/a/g/l$a;,
        Lcom/allinone/callerid/i/a/g/l$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/List;Lcom/allinone/callerid/i/a/g/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Lcom/allinone/callerid/i/a/g/e;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/g/l$b;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/g/l$b;-><init>(Ljava/util/List;Lcom/allinone/callerid/i/a/g/e;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    new-instance v0, Lcom/allinone/callerid/i/a/g/l$b;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/g/l$b;-><init>(Ljava/util/List;Lcom/allinone/callerid/i/a/g/e;)V

    .line 5
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

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(IILjava/util/List;Lcom/allinone/callerid/i/a/g/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Lcom/allinone/callerid/i/a/g/e;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/g/l$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/allinone/callerid/i/a/g/l$a;-><init>(IILjava/util/List;Lcom/allinone/callerid/i/a/g/e;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    new-instance v0, Lcom/allinone/callerid/i/a/g/l$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/allinone/callerid/i/a/g/l$a;-><init>(IILjava/util/List;Lcom/allinone/callerid/i/a/g/e;)V

    .line 5
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

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;Lcom/allinone/callerid/i/a/g/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Lcom/allinone/callerid/i/a/g/n;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/g/l$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/i/a/g/l$c;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/allinone/callerid/i/a/g/n;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    new-instance v0, Lcom/allinone/callerid/i/a/g/l$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/i/a/g/l$c;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/allinone/callerid/i/a/g/n;)V

    .line 5
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

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

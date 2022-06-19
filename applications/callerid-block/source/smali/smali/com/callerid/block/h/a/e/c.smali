.class public Lcom/callerid/block/h/a/e/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Lcom/callerid/block/bean/CollectInfo;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/h/a/e/c$b;

    invoke-direct {v1, p1, p0}, Lcom/callerid/block/h/a/e/c$b;-><init>(Lcom/callerid/block/bean/CollectInfo;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/callerid/block/h/a/e/a;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/e/c$c;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/h/a/e/c$c;-><init>(Landroid/content/Context;Lcom/callerid/block/h/a/e/a;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/e/g;->b(Lcom/callerid/block/h/a/e/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/callerid/block/bean/CollectInfo;)V
    .locals 8

    :try_start_0
    invoke-static {p0}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/bean/CollectInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/bean/CollectInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callerid/block/bean/CollectInfo;->getUser_blocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/callerid/block/bean/CollectInfo;->getUser_commented()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/callerid/block/bean/CollectInfo;->getUser_reported()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/callerid/block/bean/CollectInfo;->getUser_upload_recording()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callerid/block/h/a/e/c$a;

    invoke-direct {v7, p0}, Lcom/callerid/block/h/a/e/c$a;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/callerid/block/h/a/e/k/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/h/a/e/k/a;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/callerid/block/h/a/e/c;->a(Landroid/content/Context;Lcom/callerid/block/bean/CollectInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

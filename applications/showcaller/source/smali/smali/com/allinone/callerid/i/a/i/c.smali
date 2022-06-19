.class public Lcom/allinone/callerid/i/a/i/c;
.super Ljava/lang/Object;
.source "CollectNormalUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/allinone/callerid/i/a/i/c$b;

    invoke-direct {v1, p1, p0}, Lcom/allinone/callerid/i/a/i/c$b;-><init>(Lcom/allinone/callerid/bean/CollectInfo;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/allinone/callerid/i/a/i/a;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/i/c$c;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/i/c$c;-><init>(Landroid/content/Context;Lcom/allinone/callerid/i/a/i/a;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/i/g;->b(Lcom/allinone/callerid/i/a/i/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CollectInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CollectInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CollectInfo;->getUser_blocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CollectInfo;->getUser_commented()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CollectInfo;->getUser_reported()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CollectInfo;->getUser_upload_recording()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/allinone/callerid/i/a/i/c$a;

    invoke-direct {v7, p0}, Lcom/allinone/callerid/i/a/i/c$a;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/allinone/callerid/i/a/i/k/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/i/k/a;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/allinone/callerid/i/a/i/c;->a(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

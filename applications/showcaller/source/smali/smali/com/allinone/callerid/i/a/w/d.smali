.class public Lcom/allinone/callerid/i/a/w/d;
.super Ljava/lang/Object;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/w/d$a;,
        Lcom/allinone/callerid/i/a/w/d$d;,
        Lcom/allinone/callerid/i/a/w/d$c;,
        Lcom/allinone/callerid/i/a/w/d$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/allinone/callerid/i/a/w/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/allinone/callerid/i/a/w/c;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v6, Lcom/allinone/callerid/i/a/w/d$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/allinone/callerid/i/a/w/d$a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/allinone/callerid/i/a/w/c;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v6, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
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

.method public static b(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/allinone/callerid/i/a/w/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/allinone/callerid/i/a/w/c;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v6, Lcom/allinone/callerid/i/a/w/d$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/allinone/callerid/i/a/w/d$b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/allinone/callerid/i/a/w/c;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v6, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
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

.method public static c(IIILcom/allinone/callerid/i/a/w/e;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/w/d$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/allinone/callerid/i/a/w/d$c;-><init>(IIILcom/allinone/callerid/i/a/w/e;)V

    .line 2
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

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d(Lcom/allinone/callerid/bean/ReportedContent;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/w/d$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/i/a/w/d$d;-><init>(Lcom/allinone/callerid/bean/ReportedContent;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
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

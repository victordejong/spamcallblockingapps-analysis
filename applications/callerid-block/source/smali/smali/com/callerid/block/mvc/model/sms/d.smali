.class public Lcom/callerid/block/mvc/model/sms/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/mvc/model/sms/d$b;,
        Lcom/callerid/block/mvc/model/sms/d$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/a;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/mvc/model/sms/d$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/mvc/model/sms/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/a;)V

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

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/mvc/model/sms/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;",
            "Lcom/callerid/block/mvc/model/sms/c;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/callerid/block/mvc/model/sms/d$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/mvc/model/sms/d$b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/mvc/model/sms/c;)V

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

    :goto_0
    return-void
.end method

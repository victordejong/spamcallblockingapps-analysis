.class public Lcom/callerid/block/sms/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/sms/f$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/callerid/block/sms/f$a;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/sms/f$a;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

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

.class public Lcom/callerid/block/mvc/model/sms/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/mvc/model/sms/e$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Lcom/callerid/block/mvc/model/sms/f;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/mvc/model/sms/e$a;

    invoke-direct {v0, p1}, Lcom/callerid/block/mvc/model/sms/e$a;-><init>(Lcom/callerid/block/mvc/model/sms/f;)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

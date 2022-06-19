.class public Lcom/callerid/block/sms/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/sms/e$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/callerid/block/bean/SMSBean;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/callerid/block/sms/e$a;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/sms/e$a;-><init>(Lcom/callerid/block/bean/SMSBean;Landroid/content/Context;)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

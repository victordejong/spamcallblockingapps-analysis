.class public Lcom/allinone/callerid/d/e/e/d;
.super Ljava/lang/Object;
.source "DefalutAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/e/e/d$a;,
        Lcom/allinone/callerid/d/e/e/d$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Lcom/allinone/callerid/d/e/e/c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/e/d$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/d/e/e/d$a;-><init>(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Lcom/allinone/callerid/d/e/e/c;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static b(Lcom/allinone/callerid/d/e/e/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/e/d$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/d/e/e/d$b;-><init>(Lcom/allinone/callerid/d/e/e/c;)V

    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

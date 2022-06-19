.class public Lcom/allinone/callerid/d/e/c;
.super Ljava/lang/Object;
.source "HomeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/e/c$a;,
        Lcom/allinone/callerid/d/e/c$c;,
        Lcom/allinone/callerid/d/e/c$b;
    }
.end annotation


# direct methods
.method public static a(ILjava/lang/String;ZLcom/allinone/callerid/d/e/c$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/c$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/allinone/callerid/d/e/c$b;-><init>(ILjava/lang/String;ZLcom/allinone/callerid/d/e/c$a;)V

    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static b(Ljava/util/ArrayList;Lcom/allinone/callerid/d/e/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;",
            "Lcom/allinone/callerid/d/e/c$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/c$c;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/d/e/c$c;-><init>(Ljava/util/ArrayList;Lcom/allinone/callerid/d/e/c$a;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

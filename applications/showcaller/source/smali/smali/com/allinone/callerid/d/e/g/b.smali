.class public Lcom/allinone/callerid/d/e/g/b;
.super Ljava/lang/Object;
.source "SetRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/e/g/b$a;,
        Lcom/allinone/callerid/d/e/g/b$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/allinone/callerid/d/e/g/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;",
            "Lcom/allinone/callerid/d/e/g/a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/g/b$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/allinone/callerid/d/e/g/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/allinone/callerid/d/e/g/a;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/d/e/g/a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/g/b$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/d/e/g/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/d/e/g/a;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

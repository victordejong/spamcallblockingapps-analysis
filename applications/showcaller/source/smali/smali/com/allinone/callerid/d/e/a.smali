.class public Lcom/allinone/callerid/d/e/a;
.super Ljava/lang/Object;
.source "ActionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/e/a$b;,
        Lcom/allinone/callerid/d/e/a$c;,
        Lcom/allinone/callerid/d/e/a$d;,
        Lcom/allinone/callerid/d/e/a$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/d/e/a$b;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/d/e/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/d/e/a$b;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static b(Ljava/lang/String;IZLcom/allinone/callerid/d/e/a$b;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/a$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/allinone/callerid/d/e/a$c;-><init>(Ljava/lang/String;IZLcom/allinone/callerid/d/e/a$b;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/allinone/callerid/d/e/a$b;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/a$d;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/d/e/a$d;-><init>(Ljava/lang/String;Lcom/allinone/callerid/d/e/a$b;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

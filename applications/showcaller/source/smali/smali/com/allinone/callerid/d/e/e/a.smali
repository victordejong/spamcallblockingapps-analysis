.class public Lcom/allinone/callerid/d/e/e/a;
.super Ljava/lang/Object;
.source "ContactsAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/e/e/a$a;,
        Lcom/allinone/callerid/d/e/e/a$b;,
        Lcom/allinone/callerid/d/e/e/a$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Lcom/allinone/callerid/d/e/e/b;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/e/a$c;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/d/e/e/a$c;-><init>(Ljava/lang/String;Lcom/allinone/callerid/d/e/e/b;)V

    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static b(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Ljava/util/List;Lcom/allinone/callerid/d/e/e/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;",
            "Lcom/allinone/callerid/d/e/e/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/e/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/d/e/e/a$b;-><init>(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Ljava/util/List;Lcom/allinone/callerid/d/e/e/a$a;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

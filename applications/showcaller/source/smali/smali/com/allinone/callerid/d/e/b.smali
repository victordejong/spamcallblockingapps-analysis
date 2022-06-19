.class public Lcom/allinone/callerid/d/e/b;
.super Ljava/lang/Object;
.source "ContactsCallScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/e/b$a;,
        Lcom/allinone/callerid/d/e/b$b;
    }
.end annotation


# direct methods
.method public static a(ZLjava/lang/String;Lcom/allinone/callerid/d/e/b$a;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/d/e/b$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/d/e/b$b;-><init>(ZLjava/lang/String;Lcom/allinone/callerid/d/e/b$a;)V

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

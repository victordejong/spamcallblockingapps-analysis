.class public Lcom/allinone/callerid/i/a/b0/b;
.super Ljava/lang/Object;
.source "SearchNumberDbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/b0/b$b;,
        Lcom/allinone/callerid/i/a/b0/b$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Lcom/allinone/callerid/i/a/b0/a;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/b0/b$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/b0/b$a;-><init>(Ljava/lang/String;Lcom/allinone/callerid/i/a/b0/a;)V

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

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/a0/c;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/b0/b$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/allinone/callerid/i/a/b0/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/a0/c;)V

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

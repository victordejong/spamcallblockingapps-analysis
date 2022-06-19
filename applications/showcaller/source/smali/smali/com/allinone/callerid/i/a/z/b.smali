.class public Lcom/allinone/callerid/i/a/z/b;
.super Ljava/lang/Object;
.source "SearchCalllogCommentDbCountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/z/b$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/List;Lcom/allinone/callerid/i/a/z/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Lcom/allinone/callerid/i/a/z/d;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/z/b$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/i/a/z/b$a;-><init>(Ljava/util/List;Lcom/allinone/callerid/i/a/z/d;)V

    .line 2
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

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

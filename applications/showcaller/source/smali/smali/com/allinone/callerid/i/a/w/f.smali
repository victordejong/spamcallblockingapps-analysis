.class public Lcom/allinone/callerid/i/a/w/f;
.super Ljava/lang/Object;
.source "ReportSubtypeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/w/f$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/allinone/callerid/bean/SubType;ZZLjava/lang/String;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Lcom/allinone/callerid/i/a/w/f$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/allinone/callerid/i/a/w/f$a;-><init>(Lcom/allinone/callerid/bean/SubType;ZZLjava/lang/String;Lcom/allinone/callerid/search/CallLogBean;)V

    .line 2
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v6, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
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

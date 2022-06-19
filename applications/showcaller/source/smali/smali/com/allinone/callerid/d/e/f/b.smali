.class public Lcom/allinone/callerid/d/e/f/b;
.super Ljava/lang/Object;
.source "DownloadDbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/e/f/b$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/allinone/callerid/callscreen/bean/DownloadInfo;Lcom/allinone/callerid/d/e/f/a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/d/e/f/b$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/d/e/f/b$a;-><init>(Lcom/allinone/callerid/callscreen/bean/DownloadInfo;Lcom/allinone/callerid/d/e/f/a;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.class public Lcom/allinone/callerid/i/a/g/g;
.super Ljava/lang/Object;
.source "ContactsDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/g/g$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/allinone/callerid/i/a/g/k;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/i/a/g/g$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/i/a/g/g$a;-><init>(Lcom/allinone/callerid/i/a/g/k;)V

    .line 2
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
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

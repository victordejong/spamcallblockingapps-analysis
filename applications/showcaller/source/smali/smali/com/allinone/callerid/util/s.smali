.class public Lcom/allinone/callerid/util/s;
.super Ljava/lang/Object;
.source "GetServerTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/s$b;
    }
.end annotation


# direct methods
.method public static a()V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allinone/callerid/util/s$b;-><init>(Lcom/allinone/callerid/util/s$a;)V

    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

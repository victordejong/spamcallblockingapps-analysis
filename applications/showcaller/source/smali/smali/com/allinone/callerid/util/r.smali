.class public Lcom/allinone/callerid/util/r;
.super Ljava/lang/Object;
.source "GetConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/r$a;
    }
.end annotation


# direct methods
.method static a()V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/r$a;

    invoke-direct {v0}, Lcom/allinone/callerid/util/r$a;-><init>()V

    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.class public Lcom/allinone/callerid/i/a/a0/d;
.super Ljava/lang/Object;
.source "SearchNumberManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/i/a/a0/d$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;IILcom/allinone/callerid/i/a/a0/c;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/i/a/a0/d$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/i/a/a0/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/allinone/callerid/i/a/a0/c;)V

    .line 3
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

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

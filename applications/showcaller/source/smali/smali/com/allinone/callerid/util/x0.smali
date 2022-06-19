.class public Lcom/allinone/callerid/util/x0;
.super Ljava/lang/Object;
.source "SaveSearchData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/x0$a;,
        Lcom/allinone/callerid/util/x0$b;
    }
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/util/x0$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/util/x0$a;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/util/x0$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/util/x0$b;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

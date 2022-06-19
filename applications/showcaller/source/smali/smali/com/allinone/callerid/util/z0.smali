.class public Lcom/allinone/callerid/util/z0;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# direct methods
.method static synthetic a(Landroid/content/Context;Ljava/util/ArrayList;IIZI)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/allinone/callerid/util/z0;->g(Landroid/content/Context;Ljava/util/ArrayList;IIZI)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/allinone/callerid/search/EZSearchResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/allinone/callerid/util/z0;->e(Landroid/content/Context;Lcom/allinone/callerid/search/EZSearchResult;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/z0$c;

    invoke-direct {v0, p1, p0}, Lcom/allinone/callerid/util/z0$c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static d(Landroid/content/Context;IILjava/lang/String;ZII)V
    .locals 9

    .line 1
    new-instance v8, Lcom/allinone/callerid/util/z0$b;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move v3, p6

    move v4, p1

    move v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/allinone/callerid/util/z0$b;-><init>(Landroid/content/Context;Ljava/lang/String;IIIZI)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v8, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static e(Landroid/content/Context;Lcom/allinone/callerid/search/EZSearchResult;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/start/BlockedHangupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/search/EZSearchResult;->setIssetfav(Z)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "contact_missed"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static f(Landroid/content/Context;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/EZSearchResult;",
            ">;II)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "contact_missed"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "unreadkey"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isContact"

    .line 5
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static g(Landroid/content/Context;Ljava/util/ArrayList;IIZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/EZSearchResult;",
            ">;IIZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/search/EZSearchResult;

    const-string v2, "isContact"

    const-string v3, "isuserrejected"

    const-string v4, "contact_missed"

    const/high16 v5, 0x10000000

    const/4 v6, 0x1

    if-ne p5, v6, :cond_2

    if-ne p2, v6, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-le p5, v6, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lcom/allinone/callerid/util/z0;->f(Landroid/content/Context;Ljava/util/ArrayList;II)V

    goto/16 :goto_0

    :cond_0
    if-ne p2, v6, :cond_1

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getWeekoutingnum()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Lcom/allinone/callerid/util/a1;->y()J

    move-result-wide v6

    sub-long/2addr p1, v6

    const-wide/32 v6, 0x5265c00

    cmp-long p5, p1, v6

    if-lez p5, :cond_1

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/allinone/callerid/util/a1;->b1(J)V

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    const-class p3, Lcom/allinone/callerid/mvc/controller/guidep/GuideAddContantActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "haoma"

    .line 7
    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getOld_tel_number()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "touxiang"

    .line 8
    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "cishu"

    .line 9
    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getWeekoutingnum()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 13
    :cond_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setIssetfav(Z)V

    .line 15
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    invoke-virtual {p2, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    invoke-virtual {p2, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "missed_call_dialog_single"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-nez p5, :cond_4

    if-ne p3, v6, :cond_3

    .line 24
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {v1, v6}, Lcom/allinone/callerid/search/EZSearchResult;->setIssetfav(Z)V

    .line 26
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 27
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "answer"

    .line 29
    invoke-virtual {p2, p4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    invoke-virtual {p2, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p0

    const-string p1, "answered_dialog_contact"

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 36
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "unknow_answered_hungup"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/util/z0$d;

    invoke-direct {p2, v1, p0, p3}, Lcom/allinone/callerid/util/z0$d;-><init>(Lcom/allinone/callerid/search/EZSearchResult;Landroid/content/Context;I)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/i/a/m/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/util/z0$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/z0$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/i/a/i/i/b;->a(Landroid/content/Context;Lcom/allinone/callerid/i/a/i/i/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

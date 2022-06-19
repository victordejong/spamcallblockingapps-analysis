.class public Lcom/callerid/block/util/m0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static synthetic a(Landroid/content/Context;Lcom/callerid/block/search/EZSearchResult;IJI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/callerid/block/util/m0;->c(Landroid/content/Context;Lcom/callerid/block/search/EZSearchResult;IJI)V

    return-void
.end method

.method public static b(Landroid/content/Context;IILjava/lang/String;JI)V
    .locals 9

    :try_start_0
    new-instance v8, Lcom/callerid/block/util/m0$b;

    move-object v0, v8

    move-object v1, p3

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/callerid/block/util/m0$b;-><init>(Ljava/lang/String;Landroid/content/Context;IIJI)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v8, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/callerid/block/search/EZSearchResult;IJI)V
    .locals 9

    const-string v0, "testrecommend"

    const-string v1, "\u672a\u63a5\u6765\u7535\u5f39\u7a97\u5c06\u8981\u663e\u793a"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/v0/b;->c()Lcom/callerid/block/util/v0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/util/v0/b;->d()V

    invoke-static {p0}, Lcom/callerid/block/util/t0;->V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x5

    if-ne p5, v0, :cond_1

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->isSpam()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getFaild_error_log()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/callerid/block/util/m0$c;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/callerid/block/util/m0$c;-><init>(Landroid/content/Context;Lcom/callerid/block/search/EZSearchResult;JII)V

    invoke-static {v0, v8}, Lcom/callerid/block/h/a/g/b;->a(Ljava/lang/String;Lcom/callerid/block/h/a/g/a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callerid/block/start/MissedCallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "contact_missed"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "internalDate"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "calltypekey"

    invoke-virtual {v1, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "isContact"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-nez p2, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p0

    const-string p2, "show_missed_dialog_notcontact"

    invoke-virtual {p0, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getReport_count()I

    move-result p0

    if-lez p0, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p0

    const-string p1, "show_missed_dialog_notcontact_isspam"

    invoke-virtual {p0, p1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/callerid/block/util/m0$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/util/m0$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/callerid/block/h/a/e/i/b;->a(Landroid/content/Context;Lcom/callerid/block/h/a/e/i/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

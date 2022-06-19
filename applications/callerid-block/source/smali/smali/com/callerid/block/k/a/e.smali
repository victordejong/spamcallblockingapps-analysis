.class public Lcom/callerid/block/k/a/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/k/a/e$c;,
        Lcom/callerid/block/k/a/e$e;,
        Lcom/callerid/block/k/a/e$d;,
        Lcom/callerid/block/k/a/e$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;
    .locals 3

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/callerid/block/k/a/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/phone/libphone/i;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/phone/libphone/m/a;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p2, p1, v0}, Lcom/phone/libphone/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Lcom/phone/libphone/l/a;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, ""

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/phone/libphone/l/a;->j(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/phone/libphone/l/a;->l(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/phone/libphone/l/a;->i(Ljava/lang/String;)V

    :cond_2
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "wbb"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/phone/libphone/l/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "/"

    :try_start_0
    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "wbb"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "\u6279\u91cf\u67e5\u8a62\u6578\u64da"

    invoke-static {v2, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v0, :cond_7

    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v3

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z

    if-eqz v3, :cond_3

    const-string v3, "\u672c\u5730\u6570\u636e\u5e93\u6ca1\u6709\u6570\u636e\uff0c\u8c03\u7528\u79bb\u7ebf\u89e3\u6790\u5e93\u89e3\u6790\u6570\u636e\u5c55\u793a"

    invoke-static {v2, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/callerid/block/k/a/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/l/a;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v4

    invoke-virtual {v3}, Lcom/phone/libphone/l/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->v0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->h0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->W(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->p0(Ljava/lang/String;)V

    new-instance v4, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-direct {v4}, Lcom/callerid/block/bean/EZSearchContacts;-><init>()V

    invoke-virtual {v3}, Lcom/phone/libphone/l/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/phone/libphone/l/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/phone/libphone/l/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/phone/libphone/l/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->w0(Z)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v4

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->H0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->s0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->W(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->t0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, "Mobile"

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Fixed line"

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v4

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->v0(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->D0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->o0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->h0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->p0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->T(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->U(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getFb_avatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->f0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/CallLogBean;->C0(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZSearchContacts;->getFaild_error_log()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->e0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public static d(Ljava/lang/String;Lcom/callerid/block/k/a/a;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/k/a/e$d;

    invoke-direct {v0, p1}, Lcom/callerid/block/k/a/e$d;-><init>(Lcom/callerid/block/k/a/a;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/callerid/block/k/a/e$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callerid/block/k/a/e$e;-><init>(Lcom/callerid/block/k/a/e$a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/k/a/f;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/k/a/e$b;

    invoke-direct {v0, p2}, Lcom/callerid/block/k/a/e$b;-><init>(Lcom/callerid/block/k/a/f;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {v0, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static g(Landroid/content/Context;J)V
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v2, 0x3ca

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/callerid/block/service/OfflineDbJobService;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    const-string p2, "jobscheduler"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/a/b;->e()Lcom/callerid/block/a/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v2}, Lcom/callerid/block/a/b;->f(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static h(Landroid/content/Context;ZLcom/callerid/block/k/a/b;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/j/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/j/d;-><init>(Landroid/content/Context;ZLcom/callerid/block/k/a/b;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static i(Landroid/content/Context;J)V
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v2, 0x2ce

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/callerid/block/service/OfflineJobService;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    const-string p2, "jobscheduler"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/a/b;->e()Lcom/callerid/block/a/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v2}, Lcom/callerid/block/a/b;->f(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static j(Lcom/callerid/block/k/a/b;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/callerid/block/k/a/d;

    invoke-direct {v0, p0}, Lcom/callerid/block/k/a/d;-><init>(Lcom/callerid/block/k/a/b;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/k/a/c;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/k/a/e$c;

    invoke-direct {v0, p2}, Lcom/callerid/block/k/a/e$c;-><init>(Lcom/callerid/block/k/a/c;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {v0, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

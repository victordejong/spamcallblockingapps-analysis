.class public Lcom/allinone/callerid/service/CollectJobService;
.super Landroid/app/job/JobService;
.source "CollectJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x2766

    if-ne v0, v1, :cond_1

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "collectinfo"

    const-string v1, "\u5f00\u59cb\u8c03\u5ea6\u4efb\u52a1"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/service/CollectJobService$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/service/CollectJobService$a;-><init>(Lcom/allinone/callerid/service/CollectJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/i/c;->b(Landroid/content/Context;Lcom/allinone/callerid/i/a/i/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "collectinfo"

    const-string v0, "onStopJob"

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

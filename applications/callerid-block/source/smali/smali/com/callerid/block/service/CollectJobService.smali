.class public Lcom/callerid/block/service/CollectJobService;
.super Landroid/app/job/JobService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x2768

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "collectinfo"

    const-string v1, "\u5f00\u59cb\u8c03\u5ea6\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/service/CollectJobService$a;

    invoke-direct {v1, p0, p1}, Lcom/callerid/block/service/CollectJobService$a;-><init>(Lcom/callerid/block/service/CollectJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/e/c;->b(Landroid/content/Context;Lcom/callerid/block/h/a/e/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "collectinfo"

    const-string v0, "onStopJob"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

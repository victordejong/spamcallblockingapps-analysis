.class public Lcom/callerid/block/service/OfflineDbJobService;
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
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x3ca

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "checkupdate"

    const-string v1, "\u5f00\u59cb\u8c03\u5ea6\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/callerid/block/service/OfflineDbJobService$a;

    invoke-direct {v2, p0, p1}, Lcom/callerid/block/service/OfflineDbJobService$a;-><init>(Lcom/callerid/block/service/OfflineDbJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0, v1, v2}, Lcom/callerid/block/k/a/e;->h(Landroid/content/Context;ZLcom/callerid/block/k/a/b;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

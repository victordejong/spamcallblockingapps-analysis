.class public Lcom/allinone/callerid/service/OfflineJobService;
.super Landroid/app/job/JobService;
.source "OfflineJobService.java"


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

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x2ce

    if-ne v0, v1, :cond_1

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u5f00\u59cb\u8c03\u5ea6\u4efb\u52a1"

    .line 4
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/allinone/callerid/service/OfflineJobService$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/service/OfflineJobService$a;-><init>(Lcom/allinone/callerid/service/OfflineJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/allinone/callerid/l/a/f;->j(Lcom/allinone/callerid/l/a/d;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

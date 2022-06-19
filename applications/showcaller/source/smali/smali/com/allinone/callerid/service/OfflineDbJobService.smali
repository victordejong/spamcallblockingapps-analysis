.class public Lcom/allinone/callerid/service/OfflineDbJobService;
.super Landroid/app/job/JobService;
.source "OfflineDbJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x3ca

    if-ne v0, v1, :cond_1

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "checkupdate"

    const-string v1, "\u5f00\u59cbDB\u8c03\u5ea6\u4efb\u52a1"

    .line 4
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/allinone/callerid/service/OfflineDbJobService$a;

    invoke-direct {v2, p0, p1}, Lcom/allinone/callerid/service/OfflineDbJobService$a;-><init>(Lcom/allinone/callerid/service/OfflineDbJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/l/a/f;->h(Landroid/content/Context;ZLcom/allinone/callerid/l/a/d;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

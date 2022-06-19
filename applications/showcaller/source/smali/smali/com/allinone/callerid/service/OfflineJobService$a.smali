.class Lcom/allinone/callerid/service/OfflineJobService$a;
.super Ljava/lang/Object;
.source "OfflineJobService.java"

# interfaces
.implements Lcom/allinone/callerid/l/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/OfflineJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/job/JobParameters;

.field final synthetic b:Lcom/allinone/callerid/service/OfflineJobService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/OfflineJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/OfflineJobService$a;->b:Lcom/allinone/callerid/service/OfflineJobService;

    iput-object p2, p0, Lcom/allinone/callerid/service/OfflineJobService$a;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "onSuccess"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "onEnd"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/service/OfflineJobService$a;->b:Lcom/allinone/callerid/service/OfflineJobService;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/app/job/JobService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    const/16 v1, 0x2ce

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/service/OfflineJobService$a;->b:Lcom/allinone/callerid/service/OfflineJobService;

    iget-object v1, p0, Lcom/allinone/callerid/service/OfflineJobService$a;->a:Landroid/app/job/JobParameters;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

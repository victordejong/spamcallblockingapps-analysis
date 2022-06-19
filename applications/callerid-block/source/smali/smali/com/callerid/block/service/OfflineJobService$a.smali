.class Lcom/callerid/block/service/OfflineJobService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/k/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/OfflineJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/job/JobParameters;

.field final synthetic b:Lcom/callerid/block/service/OfflineJobService;


# direct methods
.method constructor <init>(Lcom/callerid/block/service/OfflineJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/service/OfflineJobService$a;->b:Lcom/callerid/block/service/OfflineJobService;

    iput-object p2, p0, Lcom/callerid/block/service/OfflineJobService$a;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "onEnd"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/callerid/block/service/OfflineJobService$a;->b:Lcom/callerid/block/service/OfflineJobService;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/app/job/JobService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    const/16 v1, 0x2ce

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/service/OfflineJobService$a;->b:Lcom/callerid/block/service/OfflineJobService;

    iget-object v1, p0, Lcom/callerid/block/service/OfflineJobService$a;->a:Landroid/app/job/JobParameters;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

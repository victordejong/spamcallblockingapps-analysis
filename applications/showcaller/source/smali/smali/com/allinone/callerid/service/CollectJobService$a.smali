.class Lcom/allinone/callerid/service/CollectJobService$a;
.super Ljava/lang/Object;
.source "CollectJobService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/CollectJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/job/JobParameters;

.field final synthetic b:Lcom/allinone/callerid/service/CollectJobService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/CollectJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/CollectJobService$a;->b:Lcom/allinone/callerid/service/CollectJobService;

    iput-object p2, p0, Lcom/allinone/callerid/service/CollectJobService$a;->a:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "collectinfo"

    const-string v0, "\u8c03\u5ea6\u4efb\u52a1\u5b8c\u6210"

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/service/CollectJobService$a;->b:Lcom/allinone/callerid/service/CollectJobService;

    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/app/job/JobService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    if-eqz p1, :cond_1

    const/16 v0, 0x2766

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/service/CollectJobService$a;->b:Lcom/allinone/callerid/service/CollectJobService;

    iget-object v0, p0, Lcom/allinone/callerid/service/CollectJobService$a;->a:Landroid/app/job/JobParameters;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

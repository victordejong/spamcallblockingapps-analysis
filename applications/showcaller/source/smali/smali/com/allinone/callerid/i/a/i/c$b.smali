.class Lcom/allinone/callerid/i/a/i/c$b;
.super Ljava/lang/Object;
.source "CollectNormalUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/i/a/i/c;->a(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/CollectInfo;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/bean/CollectInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/i/a/i/c$b;->d:Lcom/allinone/callerid/bean/CollectInfo;

    iput-object p2, p0, Lcom/allinone/callerid/i/a/i/c$b;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 2
    invoke-static {}, Lcom/allinone/callerid/f/c;->b()Lcom/allinone/callerid/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/i/a/i/c$b;->d:Lcom/allinone/callerid/bean/CollectInfo;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/c;->c(Lcom/allinone/callerid/bean/CollectInfo;)V

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v1, "collectinfo"

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/f/c;->b()Lcom/allinone/callerid/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allinone/callerid/f/c;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "scheduleJob"

    .line 6
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->t2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "\u5f00\u542f\u8c03\u5ea6\u4efb\u52a1"

    .line 9
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x2766

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/allinone/callerid/i/a/i/c$b;->e:Landroid/content/Context;

    const-class v4, Lcom/allinone/callerid/service/CollectJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    const-wide/16 v1, 0x3e8

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 16
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/i/a/i/c$b;->e:Landroid/content/Context;

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 18
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->L2(Ljava/lang/Boolean;)V

    :cond_3
    return-void
.end method

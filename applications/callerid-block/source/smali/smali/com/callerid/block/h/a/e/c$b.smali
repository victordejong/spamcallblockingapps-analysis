.class final Lcom/callerid/block/h/a/e/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/h/a/e/c;->a(Landroid/content/Context;Lcom/callerid/block/bean/CollectInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/bean/CollectInfo;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/callerid/block/bean/CollectInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/h/a/e/c$b;->b:Lcom/callerid/block/bean/CollectInfo;

    iput-object p2, p0, Lcom/callerid/block/h/a/e/c$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/callerid/block/d/b;->b()Lcom/callerid/block/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/h/a/e/c$b;->b:Lcom/callerid/block/bean/CollectInfo;

    invoke-virtual {v0, v1}, Lcom/callerid/block/d/b;->c(Lcom/callerid/block/bean/CollectInfo;)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    const-string v1, "collectinfo"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/d/b;->b()Lcom/callerid/block/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callerid/block/d/b;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "scheduleJob"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/h/a/e/c$b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/n0;->z1(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "\u5f00\u542f\u8c03\u5ea6\u4efb\u52a1"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x2768

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/callerid/block/h/a/e/c$b;->c:Landroid/content/Context;

    const-class v4, Lcom/callerid/block/service/CollectJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/h/a/e/c$b;->c:Landroid/content/Context;

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    iget-object v0, p0, Lcom/callerid/block/h/a/e/c$b;->c:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/callerid/block/util/n0;->E1(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_3
    return-void
.end method

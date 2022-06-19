.class Lcom/allinone/callerid/service/ScheduleService$a;
.super Ljava/lang/Object;
.source "ScheduleService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/e0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/ScheduleService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/service/ScheduleService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/ScheduleService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/ScheduleService$a;->a:Lcom/allinone/callerid/service/ScheduleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-nez p1, :cond_2

    .line 1
    :try_start_0
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wjjj"

    const-string v0, "ScheduleService\uff1aonStartJob():MyService\u6b7b\u6389\u4e86"

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-le p1, v0, :cond_1

    .line 4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/service/ScheduleService$a;->a:Lcom/allinone/callerid/service/ScheduleService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/service/MyService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/service/ScheduleService$a;->a:Lcom/allinone/callerid/service/ScheduleService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/service/ScheduleService$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/service/ScheduleService$a$a;-><init>(Lcom/allinone/callerid/service/ScheduleService$a;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/service/ScheduleService$a;->a:Lcom/allinone/callerid/service/ScheduleService;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/service/ScheduleService$a;->a:Lcom/allinone/callerid/service/ScheduleService;

    invoke-virtual {v1}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/allinone/callerid/service/MyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/job/JobService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
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

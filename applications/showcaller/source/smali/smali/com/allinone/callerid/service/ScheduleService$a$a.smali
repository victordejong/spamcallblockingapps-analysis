.class Lcom/allinone/callerid/service/ScheduleService$a$a;
.super Ljava/lang/Object;
.source "ScheduleService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/ScheduleService$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/service/ScheduleService$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/ScheduleService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/ScheduleService$a$a;->a:Lcom/allinone/callerid/service/ScheduleService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    instance-of p1, p2, Lcom/allinone/callerid/service/a;

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, Lcom/allinone/callerid/service/a;

    .line 3
    invoke-virtual {p2}, Lcom/allinone/callerid/service/a;->a()Lcom/allinone/callerid/service/MyService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/service/MyService;->a()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/service/ScheduleService$a$a;->a:Lcom/allinone/callerid/service/ScheduleService$a;

    iget-object p1, p1, Lcom/allinone/callerid/service/ScheduleService$a;->a:Lcom/allinone/callerid/service/ScheduleService;

    invoke-virtual {p1}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

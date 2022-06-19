.class public Lcom/callcontrol/util/job/CCScheduler;
.super Lcom/firebase/jobdispatcher/JobService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lzp0;)Z
    .locals 2

    invoke-interface {p1}, Lzp0;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/callcontrol/util/job/ScheduledJob;->b(Landroid/os/Bundle;)Lcom/callcontrol/util/job/ScheduledJob;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Scheduler"

    const-string v0, "Supposed to execute a job but no job found."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/callcontrol/util/job/ScheduledJob;->c(Lzp0;)V

    return v1
.end method

.method public d(Lzp0;)Z
    .locals 1

    invoke-interface {p1}, Lzp0;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/callcontrol/util/job/ScheduledJob;->b(Landroid/os/Bundle;)Lcom/callcontrol/util/job/ScheduledJob;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Scheduler"

    const-string v0, "Supposed to stop a job but no job found."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/callcontrol/util/job/ScheduledJob;->f()Z

    move-result p1

    return p1
.end method

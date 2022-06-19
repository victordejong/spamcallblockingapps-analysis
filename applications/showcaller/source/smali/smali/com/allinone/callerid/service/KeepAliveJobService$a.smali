.class Lcom/allinone/callerid/service/KeepAliveJobService$a;
.super Ljava/lang/Object;
.source "KeepAliveJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/KeepAliveJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/service/KeepAliveJobService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/KeepAliveJobService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/KeepAliveJobService$a;->d:Lcom/allinone/callerid/service/KeepAliveJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "start_job"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/service/KeepAliveJobService$a;->d:Lcom/allinone/callerid/service/KeepAliveJobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/service/MyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->t0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "alive"

    const-string v1, "\u670d\u52a1\u8fd8\u6d3b\u7740"

    .line 5
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "is_alived"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->I0(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "start_job_not_alive"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

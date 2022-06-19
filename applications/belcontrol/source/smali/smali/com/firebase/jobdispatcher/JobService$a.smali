.class public Lcom/firebase/jobdispatcher/JobService$a;
.super Lup0$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/firebase/jobdispatcher/JobService;


# direct methods
.method public constructor <init>(Lcom/firebase/jobdispatcher/JobService;)V
    .locals 0

    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobService$a;->a:Lcom/firebase/jobdispatcher/JobService;

    invoke-direct {p0}, Lup0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Landroid/os/Bundle;Z)V
    .locals 1

    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d()Lxp0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxp0;->c(Landroid/os/Bundle;)Lyp0$b;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FJD.JobService"

    const-string p2, "stop: unknown invocation provided"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService$a;->a:Lcom/firebase/jobdispatcher/JobService;

    invoke-virtual {p1}, Lyp0$b;->l()Lyp0;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/firebase/jobdispatcher/JobService;->f(Lzp0;Z)V

    return-void
.end method

.method public v(Landroid/os/Bundle;Ltp0;)V
    .locals 1

    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d()Lxp0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxp0;->c(Landroid/os/Bundle;)Lyp0$b;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FJD.JobService"

    const-string p2, "start: unknown invocation provided"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService$a;->a:Lcom/firebase/jobdispatcher/JobService;

    invoke-virtual {p1}, Lyp0$b;->l()Lyp0;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/firebase/jobdispatcher/JobService;->e(Lzp0;Ltp0;)V

    return-void
.end method

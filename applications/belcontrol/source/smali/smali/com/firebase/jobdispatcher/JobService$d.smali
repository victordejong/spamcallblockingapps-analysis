.class public final Lcom/firebase/jobdispatcher/JobService$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lzp0;

.field public final b:Ltp0;


# direct methods
.method public constructor <init>(Lzp0;Ltp0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobService$d;->a:Lzp0;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/JobService$d;->b:Ltp0;

    return-void
.end method

.method public synthetic constructor <init>(Lzp0;Ltp0;Lcom/firebase/jobdispatcher/JobService$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/JobService$d;-><init>(Lzp0;Ltp0;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService$d;->b:Ltp0;

    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d()Lxp0;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/jobdispatcher/JobService$d;->a:Lzp0;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lxp0;->g(Lzp0;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-interface {v0, v3, p1}, Ltp0;->g(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FJD.JobService"

    const-string v1, "Failed to send result to driver"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.class public Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService;
.super Landroid/app/job/JobService;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$HandshakeRequester;
    }
.end annotation


# instance fields
.field private handshakeRequester:Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$HandshakeRequester;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    invoke-static {}, Lcom/millennialmedia/MMSDK;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$1;-><init>(Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService;Landroid/app/job/JobParameters;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService;->handshakeRequester:Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$HandshakeRequester;

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService;->handshakeRequester:Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$HandshakeRequester;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return v0
.end method

.class public final Lcom/millennialmedia/internal/task/TaskFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAdPlacementReporterTask()Lcom/millennialmedia/internal/task/Task;
    .locals 1

    invoke-static {}, Lcom/millennialmedia/internal/task/TaskFactory;->isJobSchedulerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/task/reporting/PlacementReportingJobSchedulerTask;

    invoke-direct {v0}, Lcom/millennialmedia/internal/task/reporting/PlacementReportingJobSchedulerTask;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/task/reporting/PlacementReportingTask;

    invoke-direct {v0}, Lcom/millennialmedia/internal/task/reporting/PlacementReportingTask;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static createHandshakeRequestTask()Lcom/millennialmedia/internal/task/Task;
    .locals 1

    invoke-static {}, Lcom/millennialmedia/internal/task/TaskFactory;->isJobSchedulerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestJobSchedulerTask;

    invoke-direct {v0}, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestJobSchedulerTask;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestTask;

    invoke-direct {v0}, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestTask;-><init>()V

    :goto_0
    return-object v0
.end method

.method private static isJobSchedulerSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

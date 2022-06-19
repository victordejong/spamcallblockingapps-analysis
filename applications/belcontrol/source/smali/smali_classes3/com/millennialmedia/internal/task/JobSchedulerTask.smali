.class public abstract Lcom/millennialmedia/internal/task/JobSchedulerTask;
.super Lcom/millennialmedia/internal/task/Task;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDefaultJobId()I
.end method

.method public abstract getJobIdResourceName()Ljava/lang/String;
.end method

.method public abstract getJobIdResourceType()Ljava/lang/String;
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method public retrieveJobId()I
    .locals 4

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/JobSchedulerTask;->getDefaultJobId()I

    move-result v0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/JobSchedulerTask;->getJobIdResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/JobSchedulerTask;->getJobIdResourceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->resourceExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/JobSchedulerTask;->getJobIdResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/JobSchedulerTask;->getJobIdResourceType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getResourceValueFrom(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;Z)V

    iget v0, v0, Landroid/util/TypedValue;->data:I

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/JobSchedulerTask;->getTagName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The selected jobId for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/JobSchedulerTask;->getJobIdResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

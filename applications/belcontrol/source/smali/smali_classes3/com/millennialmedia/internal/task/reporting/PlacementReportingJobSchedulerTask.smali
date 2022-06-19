.class public Lcom/millennialmedia/internal/task/reporting/PlacementReportingJobSchedulerTask;
.super Lcom/millennialmedia/internal/task/JobSchedulerTask;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final DEFAULT_JOB_ID:I = 0x11

.field private static final JOB_ID_RESOURCE_NAME:Ljava/lang/String; = "placement_reporting_job_id"

.field private static final JOB_ID_RESOURCE_TYPE:Ljava/lang/String; = "integer"

.field private static final TAG:Ljava/lang/String; = "PlacementReportingJobSchedulerTask"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/task/JobSchedulerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(J)V
    .locals 6

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/JobSchedulerTask;->retrieveJobId()I

    move-result v3

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/millennialmedia/internal/task/reporting/PlacementReportingService;

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public getDefaultJobId()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getJobIdResourceName()Ljava/lang/String;
    .locals 1

    const-string v0, "placement_reporting_job_id"

    return-object v0
.end method

.method public getJobIdResourceType()Ljava/lang/String;
    .locals 1

    const-string v0, "integer"

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/task/reporting/PlacementReportingJobSchedulerTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

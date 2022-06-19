.class public Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$1;
.super Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$ReportUploader;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/task/reporting/PlacementReportingService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/task/reporting/PlacementReportingService;

.field public final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/task/reporting/PlacementReportingService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$1;->this$0:Lcom/millennialmedia/internal/task/reporting/PlacementReportingService;

    iput-object p2, p0, Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$ReportUploader;-><init>(Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object p1, p0, Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$1;->this$0:Lcom/millennialmedia/internal/task/reporting/PlacementReportingService;

    iget-object v0, p0, Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    iget-object p1, p0, Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$1;->this$0:Lcom/millennialmedia/internal/task/reporting/PlacementReportingService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/task/reporting/PlacementReportingService;->access$102(Lcom/millennialmedia/internal/task/reporting/PlacementReportingService;Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$ReportUploader;)Lcom/millennialmedia/internal/task/reporting/PlacementReportingService$ReportUploader;

    return-void
.end method

.class final Lcom/crashlytics/android/core/CrashlyticsController$SendReportRunnable;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashlyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendReportRunnable"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final report:Lcom/crashlytics/android/core/Report;

.field private final reportUploader:Lcom/crashlytics/android/core/ReportUploader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/core/Report;Lcom/crashlytics/android/core/ReportUploader;)V
    .locals 0

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1767
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$SendReportRunnable;->context:Landroid/content/Context;

    .line 1768
    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$SendReportRunnable;->report:Lcom/crashlytics/android/core/Report;

    .line 1769
    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsController$SendReportRunnable;->reportUploader:Lcom/crashlytics/android/core/ReportUploader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1774
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$SendReportRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/i;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1778
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->g()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$SendReportRunnable;->reportUploader:Lcom/crashlytics/android/core/ReportUploader;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsController$SendReportRunnable;->report:Lcom/crashlytics/android/core/Report;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/ReportUploader;->forceUpload(Lcom/crashlytics/android/core/Report;)Z

    return-void
.end method

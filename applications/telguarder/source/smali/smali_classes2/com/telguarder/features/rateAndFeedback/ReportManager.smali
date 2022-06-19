.class public Lcom/telguarder/features/rateAndFeedback/ReportManager;
.super Ljava/lang/Object;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/telguarder/features/rateAndFeedback/ReportManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/rateAndFeedback/ReportManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/rateAndFeedback/ReportManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/telguarder/features/rateAndFeedback/ReportManager;->mInstance:Lcom/telguarder/features/rateAndFeedback/ReportManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/ReportManager;

    invoke-direct {v1}, Lcom/telguarder/features/rateAndFeedback/ReportManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/rateAndFeedback/ReportManager;->mInstance:Lcom/telguarder/features/rateAndFeedback/ReportManager;

    .line 19
    :cond_0
    sget-object v1, Lcom/telguarder/features/rateAndFeedback/ReportManager;->mInstance:Lcom/telguarder/features/rateAndFeedback/ReportManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public postReport(Landroid/content/Context;Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;",
            "Ljava/lang/String;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$Method;->POST:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const-string v1, "https://api.advista.no/report/mobile"

    invoke-static {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object p1

    .line 25
    invoke-virtual {p2}, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "type"

    invoke-virtual {p1, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "comment"

    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-class p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/telguarder/helpers/backend/BackendRequest;->execute(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method

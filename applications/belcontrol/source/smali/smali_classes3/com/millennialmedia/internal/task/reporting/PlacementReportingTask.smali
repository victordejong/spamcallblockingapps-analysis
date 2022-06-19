.class public Lcom/millennialmedia/internal/task/reporting/PlacementReportingTask;
.super Lcom/millennialmedia/internal/task/ThreadTask;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "PlacementReportingTask"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/task/ThreadTask;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCommand()V
    .locals 0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->uploadNow()V

    return-void
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/task/reporting/PlacementReportingTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

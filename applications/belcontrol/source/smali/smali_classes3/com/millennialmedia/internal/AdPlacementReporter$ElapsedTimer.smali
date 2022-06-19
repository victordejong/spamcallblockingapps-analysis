.class public Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacementReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElapsedTimer"
.end annotation


# instance fields
.field private endTime:J

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedTime()J
    .locals 5

    iget-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->stop()V

    :cond_0
    iget-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->endTime:J

    iget-wide v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public start()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->startTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->endTime:J

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->endTime:J

    return-void
.end method

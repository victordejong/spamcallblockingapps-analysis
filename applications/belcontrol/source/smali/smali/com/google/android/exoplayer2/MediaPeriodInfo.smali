.class public final Lcom/google/android/exoplayer2/MediaPeriodInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final contentPositionUs:J

.field public final durationUs:J

.field public final endPositionUs:J

.field public final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isLastInTimelinePeriod:Z

.field public final startPositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iput-wide p6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iput-wide p8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iput-boolean p10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iput-boolean p11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    return-void
.end method


# virtual methods
.method public copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 13

    new-instance v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v12
.end method

.method public copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 13

    new-instance v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    move-object v0, v12

    move-wide v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v12
.end method

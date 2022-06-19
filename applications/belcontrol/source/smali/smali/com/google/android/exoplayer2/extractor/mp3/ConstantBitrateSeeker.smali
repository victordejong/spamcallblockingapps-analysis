.class public final Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# static fields
.field private static final BITS_PER_BYTE:I = 0x8


# instance fields
.field private final bitrate:I

.field private final dataSize:J

.field private final durationUs:J

.field private final firstFramePosition:J

.field private final frameSize:I


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer2/extractor/MpegAudioHeader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    iget v0, p5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    iget p5, p5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    iput p5, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    const-wide/16 v0, -0x1

    cmp-long p5, p1, v0

    if-nez p5, :cond_0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    sub-long p3, p1, p3

    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 13

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    int-to-long v2, v2

    mul-long v2, v2, p1

    const-wide/32 v4, 0x7a1200

    div-long/2addr v2, v4

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v5, v4

    div-long/2addr v2, v5

    int-to-long v5, v4

    mul-long v7, v2, v5

    const-wide/16 v9, 0x0

    int-to-long v2, v4

    sub-long v11, v0, v2

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide v4

    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v7, v4, p1

    if-gez v7, :cond_2

    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v7, v4

    sub-long/2addr p1, v7

    cmp-long v5, v0, p1

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    int-to-long p1, v4

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide p1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6, v0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    const-wide/16 v0, 0x8

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public isSeekable()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

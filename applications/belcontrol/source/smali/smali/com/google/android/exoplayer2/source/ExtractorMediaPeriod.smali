.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L


# instance fields
.field private actualMinLoadableRetryCount:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private durationUs:J

.field private enabledTrackCount:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private lastSeekPositionUs:J

.field private length:J

.field private final listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final minLoadableRetryCount:I

.field private notifiedReadingStarted:Z

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingDeferredRetry:Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private released:Z

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private trackEnabledStates:[Z

.field private trackFormatNotificationSent:[Z

.field private trackIsAudioVideoFlags:[Z

.field private tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    int-to-long p1, p9

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {p1, p3, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;-><init>([Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    new-instance p1, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    const-wide/16 p6, -0x1

    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    const/4 p4, 0x3

    :cond_0
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method private configureRetry(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;I)Z
    .locals 6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result p2

    if-nez p2, :cond_1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    return v0

    :cond_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    iput v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3, v4, v3, v4}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return v2

    :cond_3
    :goto_1
    iput p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    return v2
.end method

.method private copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$700(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    :cond_0
    return-void
.end method

.method private getExtractedSamplesCount()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private getLargestQueuedTimestampUs()J
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static isLoadableExceptionFatal(Ljava/io/IOException;)Z
    .locals 0

    instance-of p0, p0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    return p0
.end method

.method private isPendingReset()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeFinishPrepare()V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueuesBuilt:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackFormatNotificationSent:[Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    new-instance v6, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v7, v4, [Lcom/google/android/exoplayer2/Format;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v6, v1, v3

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aput-boolean v4, v5, v3

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v2

    if-nez v5, :cond_6

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    :cond_6
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private maybeNotifyTrackFormat(I)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackFormatNotificationSent:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackFormatNotificationSent:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_0
    return-void
.end method

.method private maybeStartDeferredRetry(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    invoke-virtual {v4, p1, p2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private startLoading()V
    .locals 21

    move-object/from16 v6, p0

    new-instance v7, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    iget-object v2, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    iget-boolean v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    cmp-long v8, v4, v0

    if-ltz v8, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iput-wide v2, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    return-void

    :cond_0
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    iput-wide v2, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iput v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    iget-object v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v1, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v0, v7, v6, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v19

    iget-object v8, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v15

    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method private suppressRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueuesBuilt:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/util/Util;->resolveSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v0, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    :cond_5
    return-wide v3
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isReady(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maybeThrowError()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onLoadCanceled(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    :goto_0
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v4

    invoke-interface {v3, v1, v2, v4}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    :cond_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v12

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v20

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    invoke-virtual/range {v5 .. v21}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onLoadCompleted(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isLoadableExceptionFatal(Ljava/io/IOException;)Z

    move-result v20

    move/from16 v19, v20

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v19}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    if-eqz v20, :cond_0

    const/4 v1, 0x3

    return v1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    iget v2, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    move-object/from16 v2, p1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    const/4 v5, 0x0

    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->configureRetry(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    :goto_1
    return v3
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onLoadError(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public onLoaderReleased()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->release()V

    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    return-void
.end method

.method public readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 9

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeNotifyTrackFormat(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_2
    :goto_0
    return p2
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifiedReadingStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifiedReadingStarted:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekInsideBufferUs(J)Z

    move-result v1

    if-eqz v1, :cond_1

    return-wide p1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    aget-object v3, p3, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v2

    if-nez v3, :cond_1

    :cond_0
    aget-object v3, p3, v2

    check-cast v3, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->access$300(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I

    move-result v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v1, v4, v3

    const/4 v3, 0x0

    aput-object v3, p3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz p2, :cond_3

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long p2, p5, v2

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v0, 0x0

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_9

    aget-object v2, p3, v0

    if-nez v2, :cond_8

    aget-object v2, p1, v0

    if-eqz v2, :cond_8

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v2

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v4, v3, v2

    new-instance v3, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;I)V

    aput-object v3, p3, v0

    aput-boolean v4, p4, v0

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    invoke-virtual {p2, p5, p6, v4, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_c

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_a

    aget-object p3, p1, v1

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_8
    if-ge v1, p2, :cond_e

    aget-object p3, p1, v1

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v1, p1, :cond_e

    aget-object p1, p3, v1

    if-eqz p1, :cond_d

    aput-boolean v4, p4, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5
.end method

.method public skipData(IJ)I
    .locals 5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v2, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    if-lez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeNotifyTrackFormat(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeStartDeferredRetry(I)V

    :goto_1
    return v1
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 3

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    aput p1, v1, p2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object v0, p1, p2

    return-object v0
.end method

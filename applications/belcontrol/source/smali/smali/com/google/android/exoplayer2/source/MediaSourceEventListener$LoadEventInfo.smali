.class public final Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadEventInfo"
.end annotation


# instance fields
.field public final bytesLoaded:J

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final elapsedRealtimeMs:J

.field public final loadDurationMs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->elapsedRealtimeMs:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->loadDurationMs:J

    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->bytesLoaded:J

    return-void
.end method

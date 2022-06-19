.class public final Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;
.super Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final playbackPositionUs:J

.field public final ptsTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 44
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->ptsTime:J

    .line 45
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    return-void
.end method

.method synthetic constructor <init>(JJLandroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-void
.end method

.method static parseFromSection(Landroidx/media2/exoplayer/external/util/p;JLandroidx/media2/exoplayer/external/util/z;)Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;
    .locals 1

    .line 50
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media2/exoplayer/external/util/p;J)J

    move-result-wide p0

    .line 51
    invoke-virtual {p3, p0, p1}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide p2

    .line 52
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-object v0
.end method

.method static parseSpliceTime(Landroidx/media2/exoplayer/external/util/p;J)J
    .locals 7

    .line 65
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 69
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v2

    or-long/2addr v0, v2

    add-long/2addr v0, p1

    const-wide p0, 0x1ffffffffL

    and-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 80
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->ptsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;
.super Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1033
    new-instance v0, Lcom/facebook/ads/redexgen/X/EJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EJ;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1034
    invoke-direct {p0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 1035
    iput-wide p1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;->A01:J

    .line 1036
    iput-wide p3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;->A00:J

    .line 1037
    return-void
.end method

.method public synthetic constructor <init>(JJLcom/facebook/ads/redexgen/X/EJ;)V
    .locals 0

    .line 1038
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;J)J
    .locals 10

    .line 1039
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    int-to-long v8, v0

    .line 1040
    .local p0, "firstByte":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1041
    .local v2, "ptsTime":J
    const-wide/16 v6, 0x80

    and-long/2addr v6, v8

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    .line 1042
    const-wide/16 v2, 0x1

    and-long/2addr v2, v8

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    or-long/2addr v2, v0

    .line 1043
    add-long/2addr v2, p1

    .line 1044
    const-wide v0, 0x1ffffffffL

    and-long/2addr v2, v0

    .line 1045
    :cond_0
    return-wide v2
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IM;JLcom/facebook/ads/redexgen/X/IY;)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;
    .locals 2

    .line 1046
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;->A00(Lcom/facebook/ads/redexgen/X/IM;J)J

    move-result-wide p1

    .line 1047
    .local p0, "ptsTime":J
    invoke-virtual {p3, p1, p2}, Lcom/facebook/ads/redexgen/X/IY;->A08(J)J

    move-result-wide v1

    .line 1048
    .local p0, "playbackPositionUs":J
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1049
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1050
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;->A00:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1051
    return-void
.end method

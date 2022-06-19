.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;
.super Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 869
    new-instance v0, Lcom/facebook/ads/redexgen/X/EC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EC;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[BJ)V
    .locals 0

    .line 870
    invoke-direct {p0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 871
    iput-wide p4, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A01:J

    .line 872
    iput-wide p1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A00:J

    .line 873
    iput-object p3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A02:[B

    .line 874
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 875
    invoke-direct {p0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A01:J

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A00:J

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A02:[B

    .line 879
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A02:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 880
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/EC;)V
    .locals 0

    .line 881
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;IJ)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;
    .locals 5

    .line 882
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v2

    .line 883
    .local v0, "identifier":J
    add-int/lit8 v0, p1, -0x4

    new-array v4, v0, [B

    .line 884
    .local v1, "privateBytes":[B
    array-length v1, v4

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 885
    new-instance v1, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;

    move-wide p0, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    return-object v1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 886
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 887
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A00:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 888
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A02:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A02:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 890
    return-void
.end method

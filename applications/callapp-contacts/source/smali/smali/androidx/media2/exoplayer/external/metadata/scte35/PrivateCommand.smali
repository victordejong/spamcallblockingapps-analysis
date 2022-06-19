.class public final Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;
.super Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final commandBytes:[B

.field public final identifier:J

.field public final ptsAdjustment:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J[BJ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 47
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    .line 48
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->identifier:J

    .line 49
    iput-object p3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->commandBytes:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->identifier:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->commandBytes:[B

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Landroidx/media2/exoplayer/external/util/p;IJ)Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;
    .locals 6

    .line 61
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v1

    add-int/lit8 p1, p1, -0x4

    .line 62
    new-array v3, p1, [B

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v3, v0, p1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 64
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 71
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->identifier:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->commandBytes:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->commandBytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

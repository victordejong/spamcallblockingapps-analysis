.class final Landroidx/media2/player/ByteArrayFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/player/ByteArrayFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mData:[B

.field public final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Landroidx/media2/player/ByteArrayFrame$1;

    invoke-direct {v0}, Landroidx/media2/player/ByteArrayFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/player/ByteArrayFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(J[B)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Landroidx/media2/player/ByteArrayFrame;->mTimestamp:J

    .line 41
    iput-object p3, p0, Landroidx/media2/player/ByteArrayFrame;->mData:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/ByteArrayFrame;->mTimestamp:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 47
    new-array v0, v0, [B

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 49
    iput-object v0, p0, Landroidx/media2/player/ByteArrayFrame;->mData:[B

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    check-cast p1, Landroidx/media2/player/ByteArrayFrame;

    .line 61
    iget-wide v2, p0, Landroidx/media2/player/ByteArrayFrame;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Landroidx/media2/player/ByteArrayFrame;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/player/ByteArrayFrame;->mData:[B

    iget-object p1, p1, Landroidx/media2/player/ByteArrayFrame;->mData:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getWrappedMetadataBytes()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWrappedMetadataFormat()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 67
    iget-wide v0, p0, Landroidx/media2/player/ByteArrayFrame;->mTimestamp:J

    long-to-int v1, v0

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    .line 68
    iget-object v0, p0, Landroidx/media2/player/ByteArrayFrame;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 81
    iget-wide v0, p0, Landroidx/media2/player/ByteArrayFrame;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-object p2, p0, Landroidx/media2/player/ByteArrayFrame;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

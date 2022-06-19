.class public final Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final colors:I

.field public final depth:I

.field public final description:Ljava/lang/String;

.field public final height:I

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureType:I

    .line 64
    iput-object p2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 66
    iput p4, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->width:I

    .line 67
    iput p5, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->height:I

    .line 68
    iput p6, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->depth:I

    .line 69
    iput p7, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->colors:I

    .line 70
    iput-object p8, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureData:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureType:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->width:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->height:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->depth:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->colors:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureData:[B

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;

    .line 98
    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureType:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->width:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->height:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->height:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->depth:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->depth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->colors:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->colors:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureData:[B

    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureData:[B

    .line 105
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

    .line 111
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureType:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget v1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget v1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget v1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->depth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget v1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->colors:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 86
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Picture: mimeType="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 124
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->depth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->colors:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;->pictureData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

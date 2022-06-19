.class public final Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;
.super Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "CHAP"


# instance fields
.field public final chapterId:Ljava/lang/String;

.field public final endOffset:J

.field public final endTimeMs:I

.field public final startOffset:J

.field public final startTimeMs:I

.field private final subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "CHAP"

    .line 64
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    new-array v1, v0, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    const-class v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V
    .locals 1

    const-string v0, "CHAP"

    .line 54
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 56
    iput p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 57
    iput p3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 58
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    .line 59
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    .line 60
    iput-object p8, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;

    .line 100
    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 104
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 105
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getSubFrame(I)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getSubFrameCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 111
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 121
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 128
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

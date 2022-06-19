.class public final Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;
.super Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "CTOC"


# instance fields
.field public final children:[Ljava/lang/String;

.field public final elementId:Ljava/lang/String;

.field public final isOrdered:Z

.field public final isRoot:Z

.field private final subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "CTOC"

    .line 56
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    new-array v1, v0, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    :goto_2
    if-ge v2, v0, :cond_2

    .line 64
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    const-class v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V
    .locals 1

    const-string v0, "CTOC"

    .line 46
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 49
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 50
    iput-object p4, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 51
    iput-object p5, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;

    .line 91
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 93
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 94
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 95
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

    .line 79
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getSubFrameCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 101
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

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

    .line 109
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isRoot:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->isOrdered:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 115
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

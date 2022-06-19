.class public final Landroidx/media2/exoplayer/external/source/TrackGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final formats:[Landroidx/media2/exoplayer/external/Format;

.field private hashCode:I

.field public final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/TrackGroup$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/TrackGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    .line 64
    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    const/4 v0, 0x0

    .line 65
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    const-class v2, Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/Format;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/Format;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 58
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 59
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

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

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 117
    iget v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getFormat(I)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 100
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->hashCode:I

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 103
    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->hashCode:I

    .line 105
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->hashCode:I

    return v0
.end method

.method public final indexOf(Landroidx/media2/exoplayer/external/Format;)I
    .locals 3

    const/4 v0, 0x0

    .line 90
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 91
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 129
    iget p2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

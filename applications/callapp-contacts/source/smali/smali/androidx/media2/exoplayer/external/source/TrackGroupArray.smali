.class public final Landroidx/media2/exoplayer/external/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sput-object v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 136
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    .line 60
    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    const-class v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 55
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

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

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 118
    iget v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 103
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->hashCode:I

    .line 106
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public final indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I
    .locals 2

    const/4 v0, 0x0

    .line 84
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 98
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 130
    iget p2, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 131
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

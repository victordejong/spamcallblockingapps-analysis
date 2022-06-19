.class public final Landroidx/media2/exoplayer/external/source/TrackGroupArray;
.super Ljava/lang/Object;
.source ""

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

.field public static final d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# instance fields
.field public final a:I

.field public final b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sput-object v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray$a;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(Landroidx/media2/exoplayer/external/source/TrackGroup;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

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

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->c:I

    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->c:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

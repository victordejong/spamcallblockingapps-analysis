.class public final Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1127
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A00()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 1128
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fj;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    .line 1131
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    .line 1132
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v2, v0, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    const-class v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    aput-object v0, v1, v2

    .line 1134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1135
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)V
    .locals 1

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    .line 1138
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    .line 1139
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XWsnJXs6U8FaHk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5QFpyfd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6M1FhdJYhGCsyHwHh3DvJ3ZdSdheG5WD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CCRZeQAFIu0OIG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "f5OOTrvyRf8KOBGfOGs8BXEnx6Oi7e0d"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kKjs5ropntRmzT60hLvUVMNodu3hh2hV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TwBkHKB9GZ1gLDxDlufRZP7ycEAV78As"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)I
    .locals 5

    .line 1140
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v4, v0, :cond_2

    .line 1141
    iget-object v3, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A03:[Ljava/lang/String;

    const-string v1, "FfBIcoM36QBvigukJZuJszpTUyHYasxx"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aget-object v0, v3, v4

    if-ne v0, p1, :cond_1

    .line 1142
    return v4

    .line 1143
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1144
    .end local p0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public final A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 1146
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1147
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 1148
    return v3

    .line 1149
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 1150
    .end local v3
    :cond_1
    return v2

    .line 1151
    :cond_2
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 1152
    .local v3, "other":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 1153
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A00:I

    if-nez v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A03:[Ljava/lang/String;

    const-string v1, "kPC7VKJWZZiwDuF8KOcvxeh8TjYM7WnY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "P09V0hQjen99kCYtDLYFAzRvCLy372m7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A00:I

    .line 1155
    :cond_1
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A00:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1156
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v2, v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02:[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    aget-object v1, v0, v2

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1160
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

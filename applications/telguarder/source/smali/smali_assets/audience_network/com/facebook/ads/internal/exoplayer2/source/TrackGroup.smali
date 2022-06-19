.class public final Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:[Lcom/facebook/ads/internal/exoplayer2/Format;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1090
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fh;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    .line 1093
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/Format;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 1094
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v2, v0, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    const-class v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    aput-object v0, v1, v2

    .line 1096
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1097
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 1

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 1100
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 1101
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    .line 1102
    return-void

    .line 1103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 3

    .line 1104
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 1105
    aget-object v0, v1, v2

    if-ne p1, v0, :cond_0

    .line 1106
    return v2

    .line 1107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    .end local p0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 1110
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1111
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 1112
    return v3

    .line 1113
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 1114
    .end local v3
    :cond_1
    return v2

    .line 1115
    :cond_2
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    .line 1116
    .local v3, "other":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

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
    .locals 2

    .line 1117
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A00:I

    if-nez v0, :cond_0

    .line 1118
    const/16 v0, 0x11

    .line 1119
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1120
    .end local p0    # "result":I
    .local v0, "result":I
    iput v1, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A00:I

    .line 1121
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A00:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1122
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v2, v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    aget-object v1, v0, v2

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1126
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

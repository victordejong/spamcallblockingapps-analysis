.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;
.super Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 709
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A02()V

    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/E5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/E5;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 710
    const/16 v2, 0x24

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    .line 712
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A03:[B

    .line 715
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3

    .line 716
    const/16 v2, 0x24

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 717
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    .line 718
    iput-object p2, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    .line 719
    iput-object p3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    .line 720
    iput-object p4, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A03:[B

    .line 721
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v3, 0x28

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "nYdVXSR6z16K29dPaccUQ20nrVOQM4"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A04:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2ct
        0x20t
        0x64t
        0x65t
        0x73t
        0x63t
        0x72t
        0x69t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x3dt
        0x37t
        0x3bt
        0x7dt
        0x72t
        0x77t
        0x7et
        0x75t
        0x7at
        0x76t
        0x7et
        0x26t
        0x6at
        0x70t
        0x3dt
        0x39t
        0x3dt
        0x35t
        0x4t
        0x29t
        0x20t
        0x35t
        0x6dt
        0x37t
        0x35t
        0x3ft
        0x32t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EqZgnhhwjBsByKbSpo5CErE1lKEShoJk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TRMV3BkZeKOvjHVfNiX5HsZxcwFkvr7x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oTRdI7hDxQ8wxKw2l2TAe9Ydo8X0If"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lQXMvEHuLp4JCOq8QFTsDwJR100WQnb9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "A5BaYTjQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "I7j9FIyn8EqzAihWcyNdrGt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WsCNjdXCXsNj7fLfoD1ts2XZ3lj44pxp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6XwXFrwkvjsnQcKRcAmfWTthn7F0K6Bi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 722
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 723
    return v5

    .line 724
    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "Km9NvCwucej1bacKWZ22I2E"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v3, v0, :cond_3

    .line 725
    .end local v5
    :cond_2
    return v4

    .line 726
    :cond_3
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;

    .line 727
    .local v5, "other":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    .line 728
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "dRv3NREZ3OYHY2ghoMFXFJxqH3b5WWCF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "fxMz2bWU2l8xOnJ33S7O2y5qFrgTO95K"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_4

    .line 729
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "OwG64nTf072a2XepkM4JLmLBjW8VrXgR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "D7MoSRjOSZSV76AjYcQ9H4E8iUij2xAM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A03:[B

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A03:[B

    .line 730
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 731
    :goto_2
    return v5

    .line 732
    :cond_4
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "EufYchs9E1XZDs9mEVnYfYU8HY92FZ1U"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7BImdySCuboh9ZKqI9WR5jVOCNAL0z3w"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A05:[Ljava/lang/String;

    const-string v1, "EuzNQO7BcBV6rN4bTGJ7lPFfLpzhKhBG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    goto :goto_0

    .line 733
    :cond_6
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public final hashCode()I
    .locals 3

    .line 734
    const/16 v0, 0x11

    .line 735
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 736
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    .line 737
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 738
    .end local p0    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A03:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 739
    .end local v0    # "result":I
    .restart local p0    # "result":I
    return v1

    .line 740
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 741
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    const/16 v1, 0xb

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0xb

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;->A03:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 747
    return-void
.end method

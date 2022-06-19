.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;
.super Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z

.field public final A02:Z

.field public final A03:[Ljava/lang/String;

.field public final A04:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 630
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A02()V

    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/E3;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 631
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A02:Z

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A01:Z

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 637
    .local p0, "subFrameCount":I
    new-array v0, v3, [Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    .line 638
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 639
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    const-class v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    aput-object v0, v1, v2

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 641
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 642
    .end local p1    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;)V
    .locals 3

    .line 643
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 644
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    .line 645
    iput-boolean p2, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A02:Z

    .line 646
    iput-boolean p3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A01:Z

    .line 647
    iput-object p4, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    .line 648
    iput-object p5, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    .line 649
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2e

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
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x45t
        0x52t
        0x49t
        0x45t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8ajhAKqEeLl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0UvgbmHpHRdpOnw15B"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "znGXI6b5aG6CoGzBp2Vi0OTqmFdoj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pLZ53wcwgVJdfa9QQiMyAi1J"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SB9KSYtia7Q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ETRNBnNoyunAKIMxqh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "r1Xk1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fbM6DJBe2OK9QXUhgHgPtvK7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 650
    const/4 v6, 0x1

    if-ne p0, p1, :cond_0

    .line 651
    return v6

    .line 652
    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    const-string v1, "aP9O4guHJ0pwBETTM1sWsfm17UJ48"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_3

    .line 653
    .end local v6
    :cond_2
    return v5

    .line 654
    :cond_3
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;

    .line 655
    .local v6, "other":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;
    iget-boolean v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A02:Z

    iget-boolean v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A02:Z

    if-ne v1, v0, :cond_5

    iget-boolean v3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A01:Z

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A06:[Ljava/lang/String;

    const-string v1, "60RvMG9o7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-boolean v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A01:Z

    if-ne v3, v0, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    .line 656
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    .line 657
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    .line 658
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 659
    :goto_1
    return v6

    :cond_4
    iget-boolean v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A01:Z

    if-ne v3, v0, :cond_5

    goto :goto_0

    .line 660
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 2

    .line 661
    const/16 v0, 0x11

    .line 662
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A02:Z

    add-int/2addr v1, v0

    .line 663
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A01:Z

    add-int/2addr v1, v0

    .line 664
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 665
    .end local p0    # "result":I
    .restart local v0    # "result":I
    return v1

    .line 666
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 667
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    iget-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A02:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 669
    iget-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A01:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 670
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A03:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    iget-object v4, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;->A04:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    array-length v3, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v4, v1

    .line 673
    .local v0, "subFrame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 674
    .end local v0    # "subFrame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 675
    :cond_0
    return-void
.end method

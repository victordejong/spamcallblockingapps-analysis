.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;
.super Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A06:[B

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:J

.field public final A04:Ljava/lang/String;

.field public final A05:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 580
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/E2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/E2;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 581
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A01:I

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A00:I

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A03:J

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A02:J

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 588
    .local p0, "subFrameCount":I
    new-array v0, v3, [Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    .line 589
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 590
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    const-class v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    aput-object v0, v1, v2

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;)V
    .locals 3

    .line 593
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 594
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    .line 595
    iput p2, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A01:I

    .line 596
    iput p3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A00:I

    .line 597
    iput-wide p4, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A03:J

    .line 598
    iput-wide p6, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A02:J

    .line 599
    iput-object p8, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    .line 600
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6

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

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A06:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5ct
        -0x57t
        -0x5et
        -0x4ft
    .end array-data
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 602
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 603
    return v5

    .line 604
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 605
    .end local v5
    :cond_1
    return v2

    .line 606
    :cond_2
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;

    .line 607
    .local v5, "other":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;
    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A01:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A00:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A00:I

    if-ne v1, v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    .line 608
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    .line 609
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    :goto_0
    return v5

    .line 611
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 612
    const/16 v0, 0x11

    .line 613
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A01:I

    add-int/2addr v1, v0

    .line 614
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A00:I

    add-int/2addr v1, v0

    .line 615
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A03:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 616
    .end local p0    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v3, v3, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A02:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 617
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v3, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 618
    .end local p0    # "result":I
    .restart local v0    # "result":I
    return v1

    .line 619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 620
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A03:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 624
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A02:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 625
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget-object v4, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    array-length v3, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v4, v1

    .line 627
    .local v0, "subFrame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 628
    .end local v0    # "subFrame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    :cond_0
    return-void
.end method

.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;
.super Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 523
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A02()V

    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/E0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/E0;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 524
    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00:I

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A03:[B

    .line 529
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 3

    .line 530
    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 531
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    .line 532
    iput-object p2, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    .line 533
    iput p3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00:I

    .line 534
    iput-object p4, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A03:[B

    .line 535
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x37

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

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x1ft
        -0x2bt
        0x19t
        0x1at
        0x28t
        0x18t
        0x27t
        0x1et
        0x25t
        0x29t
        0x1et
        0x24t
        0x23t
        -0xet
        -0x40t
        -0x5at
        -0xdt
        -0x11t
        -0xdt
        -0x15t
        -0x26t
        -0x1t
        -0xat
        -0x15t
        -0x3dt
        -0x4ct
        -0x3dt
        -0x44t
        -0x4at
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jAZt2yB2bQ4ZHhzfOciykm7D0AUWfmbL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lTCsfBYuF0K3SPsbZJHGmYacXdSIZjjc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KmvvMQsd0hWxXydJPEAfCN4lexDFpgag"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DXSa7vTZxFTlN9v9cdvWi6qWntmZbTi4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vzft5OomckiNT0NPjG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TNwt8iuh9boIBx0P5HvzDhr3kgsmHp21"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "v8PAIRKfKq2tCJ2lsrvNbIcUxapLxbfF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oE0qZ9KVk1iLsPMzJjAs0U56D4i5xl4Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 536
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 537
    return v4

    .line 538
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A05:[Ljava/lang/String;

    const-string v1, "mv7xoWB8Mh9oIWkFIEa7Cq1DOpEH4lIh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_3

    .line 539
    .end local v4
    :cond_2
    return v3

    .line 540
    :cond_3
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;

    .line 541
    .local v4, "other":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;
    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00:I

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    .line 542
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    .line 543
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A03:[B

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A03:[B

    .line 544
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 545
    :goto_0
    return v4

    .line 546
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .line 547
    const/16 v0, 0x11

    .line 548
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00:I

    add-int/2addr v1, v0

    .line 549
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 550
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 551
    .end local p0    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A03:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 552
    .end local v0    # "result":I
    .restart local p0    # "result":I
    return v1

    .line 553
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0xb

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;->A03:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 559
    return-void
.end method

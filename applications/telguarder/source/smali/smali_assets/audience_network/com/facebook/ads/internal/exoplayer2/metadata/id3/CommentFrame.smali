.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;
.super Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 676
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A02()V

    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/E4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/E4;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 677
    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A01:Ljava/lang/String;

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00:Ljava/lang/String;

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A02:Ljava/lang/String;

    .line 681
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 682
    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 683
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A01:Ljava/lang/String;

    .line 684
    iput-object p2, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00:Ljava/lang/String;

    .line 685
    iput-object p3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A02:Ljava/lang/String;

    .line 686
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1c

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

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x42t
        -0x7at
        -0x79t
        -0x6bt
        -0x7bt
        -0x6ct
        -0x75t
        -0x6et
        -0x6at
        -0x75t
        -0x6ft
        -0x70t
        0x5ft
        -0x32t
        -0x4ct
        0x0t
        -0xbt
        0x2t
        -0x5t
        0x9t
        -0xbt
        -0x5t
        -0x7t
        -0x2ft
        -0x6ct
        -0x60t
        -0x62t
        -0x62t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9RMbHxeQk871Rj3MYOfUhomCg335hIa8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AuCD5V0WUEnviudl64loNYJAf9ll7rBD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8yJbjWB5jSmeEI3Ycqe7nOls8PnRB7nE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IgUSHN6bJitQVsqMYJ14jvMUsOol"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Bn4MCfduoMOhgcgkTYAd4QzVKOSJlHfm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pKWKzmhtOHQiYYO2tXf741wcH01Vv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CzCBCYtzGyeulMblT1ABpM6TY3ug9oiG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "edL7nw2vHFwNPHvkvKy8HycfAW4k"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 687
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 688
    return v4

    .line 689
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 690
    .end local v4
    :cond_1
    return v2

    .line 691
    :cond_2
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;

    .line 692
    .local v4, "other":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A04:[Ljava/lang/String;

    const-string v1, "I146UgR3REQgmfftkpEy51rTXlwz5y8c"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "oEcEElfzQAhhfhTOCsG8FbhpLE98SoGs"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A01:Ljava/lang/String;

    .line 693
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A02:Ljava/lang/String;

    .line 694
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    :goto_0
    return v4

    .line 696
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .line 697
    const/16 v0, 0x11

    .line 698
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A01:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 699
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    .line 700
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A02:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 701
    .end local p0    # "result":I
    .restart local v0    # "result":I
    return v1

    .line 702
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 703
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0xb

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A00:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;
.super Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 839
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A02()V

    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/EB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EB;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    .line 843
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 844
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 845
    iput-object p2, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    .line 846
    iput-object p3, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    .line 847
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x16

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

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5at
        0x40t
        -0x6bt
        -0x6et
        -0x74t
        0x5dt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zGho4U01IPI4JG3Cm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ilF1gSnXdBPEtJP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iFxE9mpnKvf8kkZ9tjpx6fVuRn7KVibZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pfEvZr3rPoh1Mp34dp8AVffVoQ7ywkAL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "av7YKBeBtVRmVULw7MUbvPZMJ74aN5sB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2ypq06WODJmOnNmP6r4nOYrYGC0bF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "G3GRaxykkTAiG5RN9R6HdQ1HIvbICYzA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j56"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 848
    const/4 v6, 0x1

    if-ne p0, p1, :cond_0

    .line 849
    return v6

    .line 850
    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A03:[Ljava/lang/String;

    const-string v1, "wWZd1zqeqQKxVeV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2

    .line 851
    .end local v6
    :cond_1
    return v5

    .line 852
    :cond_2
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;

    .line 853
    .local v6, "other":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    .line 854
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    .line 855
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    :goto_0
    return v6

    .line 857
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 3

    .line 858
    const/16 v0, 0x11

    .line 859
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 860
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 861
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 862
    .end local p0    # "result":I
    .restart local v0    # "result":I
    return v1

    .line 863
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 868
    return-void
.end method

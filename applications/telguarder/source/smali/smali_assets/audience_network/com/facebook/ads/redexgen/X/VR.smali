.class public final Lcom/facebook/ads/redexgen/X/VR;
.super Lcom/facebook/ads/redexgen/X/Ch;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerAtom"
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/VR;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/VQ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VR;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VR;->A05()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 60217
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ch;-><init>(I)V

    .line 60218
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/VR;->A00:J

    .line 60219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    .line 60220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    .line 60221
    return-void
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VR;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 4

    const/16 v0, 0x16

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/VR;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VR;->A04:[Ljava/lang/String;

    const-string v1, "t"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "M"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/VR;->A03:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5at
        0x19t
        0x15t
        0x14t
        0xet
        0x1bt
        0x13t
        0x14t
        0x1ft
        0x8t
        0x9t
        0x40t
        0x5at
        0x70t
        0x3ct
        0x35t
        0x31t
        0x26t
        0x35t
        0x23t
        0x6at
        0x70t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8zfgUleLwKW9UCejkwwysKHIkU22O6Kv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "B13oRQkNrUwGRrMgMzYdsy8ie1GXVSb7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bagn5NvHeHsr4sEhBFYdnaj9i7IDJvAJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "snPI2tElSvU1Sc3utxl3ZahsGJrqNPXX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gSbds5QmyJXlkCf7zHJ8XPzui5Pl6IZG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ULAyblM6udE9FsmhsCgwC84mp8FsxYhP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VR;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07(I)Lcom/facebook/ads/redexgen/X/VR;
    .locals 4

    .line 60222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 60223
    .local p0, "childrenSize":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 60224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/VR;

    .line 60225
    .local v0, "atom":Lcom/facebook/ads/redexgen/X/VR;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    if-ne v0, p1, :cond_0

    .line 60226
    return-object v1

    .line 60227
    .end local v0    # "atom":Lcom/facebook/ads/redexgen/X/VR;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60228
    .end local p1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A08(I)Lcom/facebook/ads/redexgen/X/VQ;
    .locals 4

    .line 60229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 60230
    .local p0, "childrenSize":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 60231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/VQ;

    .line 60232
    .local v0, "atom":Lcom/facebook/ads/redexgen/X/VQ;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    if-ne v0, p1, :cond_0

    .line 60233
    return-object v1

    .line 60234
    .end local v0    # "atom":Lcom/facebook/ads/redexgen/X/VQ;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60235
    .end local p1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/VR;)V
    .locals 1

    .line 60236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60237
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/VQ;)V
    .locals 1

    .line 60238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60239
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 60240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A02(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    const/16 v1, 0x9

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VR;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    .line 60241
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VR;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    .line 60242
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60243
    return-object v0
.end method

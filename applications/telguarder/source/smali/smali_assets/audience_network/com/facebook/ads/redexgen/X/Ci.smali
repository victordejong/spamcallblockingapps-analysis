.class public final Lcom/facebook/ads/redexgen/X/Ci;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkIterator"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:I

.field public A04:I

.field public final A05:I

.field public final A06:Lcom/facebook/ads/redexgen/X/IM;

.field public final A07:Lcom/facebook/ads/redexgen/X/IM;

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ci;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ci;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/IM;Z)V
    .locals 4

    .line 24822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24823
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/IM;

    .line 24824
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/IM;

    .line 24825
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Ci;->A08:Z

    .line 24826
    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24827
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A05:I

    .line 24828
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24829
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A04:I

    .line 24830
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ci;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A06(ZLjava/lang/Object;)V

    .line 24831
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    .line 24832
    return-void

    .line 24833
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ci;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ci;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x22t
        0x25t
        0x2et
        0x2ft
        0x30t
        0x1bt
        0x1ft
        0x24t
        0x31t
        0x2at
        0x27t
        -0x24t
        0x29t
        0x31t
        0x2ft
        0x30t
        -0x24t
        0x1et
        0x21t
        -0x24t
        -0x13t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QHYVSpZgOM0NjWKP1bgSWwFRIdlnTpLM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HmE2m30TIjAeILusU70jvlqBTf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pPxEP4EmFDxmtVlpjfsS4xkPaC7VraEp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Daf2hxQkdjo0MSjNCMalfi1oj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xCy8ZyaZhQy9vP80dGUvGrD5W9TFDBhM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QuXMsgx2TRFiENTdjjQyL6uMNp16"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3jamRhtnPZ1tO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Cu0scvKva8d16qjpnbv6fPmWZRV4ln3p"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()Z
    .locals 5

    .line 24834
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A05:I

    if-ne v1, v0, :cond_0

    .line 24835
    const/4 v0, 0x0

    return v0

    .line 24836
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A08:Z

    if-eqz v0, :cond_2

    .line 24837
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    const-string v1, "QiCCBDvmY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    goto :goto_0

    .line 24838
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    const-string v1, "iDhKmcYYh0vtvmcW1z8vhUaHHQkx"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "icJEqvlDvST2N"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A02:J

    .line 24839
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A03:I

    if-ne v1, v0, :cond_4

    .line 24840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A01:I

    .line 24841
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24842
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A04:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A04:I

    if-lez v0, :cond_5

    .line 24843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    sub-int/2addr v0, v4

    .line 24844
    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A03:I

    .line 24845
    :cond_4
    return v4

    .line 24846
    :cond_5
    const/4 v0, -0x1

    goto :goto_1
.end method

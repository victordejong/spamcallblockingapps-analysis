.class public final Lcom/facebook/ads/redexgen/X/2v;
.super Lcom/facebook/ads/redexgen/X/Bb;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/GV;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2v;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 6735
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Ljava/lang/String;)V

    .line 6736
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    .line 6737
    .local p0, "data":Lcom/facebook/ads/redexgen/X/IM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v2

    .line 6738
    .local p1, "subtitleCompositionPage":I
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v1

    .line 6739
    .local v2, "subtitleAncillaryPage":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/GV;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GV;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2v;->A00:Lcom/facebook/ads/redexgen/X/GV;

    .line 6740
    return-void
.end method

.method private final A00([BIZ)Lcom/facebook/ads/redexgen/X/UF;
    .locals 2

    .line 6741
    if-eqz p3, :cond_0

    .line 6742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2v;->A00:Lcom/facebook/ads/redexgen/X/GV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GV;->A0K()V

    .line 6743
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2v;->A00:Lcom/facebook/ads/redexgen/X/GV;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/GV;->A0J([BI)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/UF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UF;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2v;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x66

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2v;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0x4ct
        0x38t
        0x1at
        0x3bt
        0x39t
        0x45t
        0x3at
        0x3bt
        0x48t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6744
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2v;->A00([BIZ)Lcom/facebook/ads/redexgen/X/UF;

    move-result-object v0

    return-object v0
.end method

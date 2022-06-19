.class public final Lcom/facebook/ads/redexgen/X/av;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GC;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/GZ;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gf;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Ga;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:[J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GZ;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/GZ;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gf;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Ga;",
            ">;)V"
        }
    .end annotation

    .line 68793
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlStyle;>;"
    .local v0, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlRegion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68794
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/av;->A00:Lcom/facebook/ads/redexgen/X/GZ;

    .line 68795
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Ljava/util/Map;

    .line 68796
    if-eqz p2, :cond_0

    .line 68797
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 68798
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A01:Ljava/util/Map;

    .line 68799
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/GZ;->A0G()[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A03:[J

    .line 68800
    return-void

    .line 68801
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A63(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation

    .line 68802
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/av;->A00:Lcom/facebook/ads/redexgen/X/GZ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/av;->A01:Ljava/util/Map;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Ljava/util/Map;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A0E(JLjava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A6S(I)J
    .locals 2

    .line 68803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A03:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final A6T()I
    .locals 1

    .line 68804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A03:[J

    array-length v0, v0

    return v0
.end method

.method public final A6n(J)I
    .locals 2

    .line 68805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/av;->A03:[J

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v1

    .line 68806
    .local p0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A03:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

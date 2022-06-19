.class public final Lcom/facebook/ads/redexgen/X/Yr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CS;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 0

    .line 61896
    return-void
.end method

.method public final ADQ(Lcom/facebook/ads/redexgen/X/CH;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61897
    invoke-interface {p1, p2}, Lcom/facebook/ads/redexgen/X/CH;->AE0(I)I

    move-result v1

    .line 61898
    .local p0, "bytesSkipped":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 61899
    if-eqz p3, :cond_0

    .line 61900
    return v0

    .line 61901
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 61902
    :cond_1
    return v1
.end method

.method public final ADR(Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 0

    .line 61903
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 61904
    return-void
.end method

.method public final ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V
    .locals 0

    .line 61905
    return-void
.end method

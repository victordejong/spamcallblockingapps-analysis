.class public abstract Lcom/facebook/ads/redexgen/X/BS;
.super Lcom/facebook/ads/redexgen/X/Vs;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GC;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/GC;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23198
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vs;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 23199
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BV;->A07()V

    .line 23200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:Lcom/facebook/ads/redexgen/X/GC;

    .line 23201
    return-void
.end method

.method public abstract A08()V
.end method

.method public final A09(JLcom/facebook/ads/redexgen/X/GC;J)V
    .locals 3

    .line 23202
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vs;->A01:J

    .line 23203
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:Lcom/facebook/ads/redexgen/X/GC;

    .line 23204
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, p4, v1

    if-nez v0, :cond_0

    iget-wide p4, p0, Lcom/facebook/ads/redexgen/X/Vs;->A01:J

    :cond_0
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    .line 23205
    return-void
.end method

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

    .line 23206
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:Lcom/facebook/ads/redexgen/X/GC;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/GC;->A63(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A6S(I)J
    .locals 4

    .line 23207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:Lcom/facebook/ads/redexgen/X/GC;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GC;->A6S(I)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A6T()I
    .locals 1

    .line 23208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:Lcom/facebook/ads/redexgen/X/GC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GC;->A6T()I

    move-result v0

    return v0
.end method

.method public final A6n(J)I
    .locals 3

    .line 23209
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:Lcom/facebook/ads/redexgen/X/GC;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/GC;->A6n(J)I

    move-result v0

    return v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/AH;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:Lcom/facebook/ads/redexgen/X/FC;

.field public final A05:Z

.field public final A06:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FC;JJJJZZ)V
    .locals 0

    .line 20919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20920
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 20921
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    .line 20922
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    .line 20923
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/AH;->A00:J

    .line 20924
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    .line 20925
    iput-boolean p10, p0, Lcom/facebook/ads/redexgen/X/AH;->A06:Z

    .line 20926
    iput-boolean p11, p0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    .line 20927
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/AH;
    .locals 13

    .line 20928
    new-instance v1, Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 20929
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FC;->A01(I)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/AH;->A00:J

    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/AH;->A06:Z

    iget-boolean v12, p0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    invoke-direct/range {v1 .. v12}, Lcom/facebook/ads/redexgen/X/AH;-><init>(Lcom/facebook/ads/redexgen/X/FC;JJJJZZ)V

    .line 20930
    return-object v1
.end method

.method public final A01(J)Lcom/facebook/ads/redexgen/X/AH;
    .locals 12

    .line 20931
    new-instance v0, Lcom/facebook/ads/redexgen/X/AH;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AH;->A00:J

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/AH;->A06:Z

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    move-wide v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AH;-><init>(Lcom/facebook/ads/redexgen/X/FC;JJJJZZ)V

    return-object v0
.end method

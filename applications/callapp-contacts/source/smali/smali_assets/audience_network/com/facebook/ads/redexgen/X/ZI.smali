.class public final Lcom/facebook/ads/redexgen/X/ZI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ZJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OggSeekMap"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZJ;)V
    .locals 0

    .line 64245
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/ZJ;Lcom/facebook/ads/redexgen/X/D6;)V
    .locals 0

    .line 64246
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZI;-><init>(Lcom/facebook/ads/redexgen/X/ZJ;)V

    return-void
.end method


# virtual methods
.method public final A6J()J
    .locals 3

    .line 64247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A08(Lcom/facebook/ads/redexgen/X/ZJ;)Lcom/facebook/ads/redexgen/X/DC;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A05(Lcom/facebook/ads/redexgen/X/ZJ;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DC;->A04(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A77(J)Lcom/facebook/ads/redexgen/X/CO;
    .locals 7

    .line 64248
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    .line 64249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A04(Lcom/facebook/ads/redexgen/X/ZJ;)J

    move-result-wide v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 64250
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A08(Lcom/facebook/ads/redexgen/X/ZJ;)Lcom/facebook/ads/redexgen/X/DC;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DC;->A05(J)J

    move-result-wide v3

    .line 64251
    .local p1, "granule":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A04(Lcom/facebook/ads/redexgen/X/ZJ;)J

    move-result-wide v1

    const-wide/16 v5, 0x7530

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/ZJ;->A06(Lcom/facebook/ads/redexgen/X/ZJ;JJJ)J

    move-result-wide v2

    .line 64252
    .local p0, "estimatedPosition":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0
.end method

.method public final A8D()Z
    .locals 1

    .line 64253
    const/4 v0, 0x1

    return v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/Tb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ID;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/AL;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/I0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 1

    .line 54611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54612
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tb;->A04:Lcom/facebook/ads/redexgen/X/I0;

    .line 54613
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A05:Lcom/facebook/ads/redexgen/X/AL;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A02:Lcom/facebook/ads/redexgen/X/AL;

    .line 54614
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 54615
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A03:Z

    if-nez v0, :cond_0

    .line 54616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A04:Lcom/facebook/ads/redexgen/X/I0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I0;->A54()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:J

    .line 54617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A03:Z

    .line 54618
    :cond_0
    return-void
.end method

.method public final A01()V
    .locals 2

    .line 54619
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A03:Z

    if-eqz v0, :cond_0

    .line 54620
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Tb;->A73()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Tb;->A02(J)V

    .line 54621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A03:Z

    .line 54622
    :cond_0
    return-void
.end method

.method public final A02(J)V
    .locals 2

    .line 54623
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:J

    .line 54624
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A03:Z

    if-eqz v0, :cond_0

    .line 54625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A04:Lcom/facebook/ads/redexgen/X/I0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I0;->A54()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:J

    .line 54626
    :cond_0
    return-void
.end method

.method public final A70()Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 54627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A02:Lcom/facebook/ads/redexgen/X/AL;

    return-object v0
.end method

.method public final A73()J
    .locals 6

    .line 54628
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:J

    .line 54629
    .local p0, "positionUs":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A03:Z

    if-eqz v0, :cond_0

    .line 54630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A04:Lcom/facebook/ads/redexgen/X/I0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I0;->A54()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:J

    sub-long/2addr v4, v0

    .line 54631
    .local v2, "elapsedSinceBaseMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A02:Lcom/facebook/ads/redexgen/X/AL;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    .line 54632
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/9u;->A00(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 54633
    .end local v2    # "elapsedSinceBaseMs":J
    :cond_0
    :goto_0
    return-wide v2

    .line 54634
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A02:Lcom/facebook/ads/redexgen/X/AL;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/AL;->A01(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public final ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 2

    .line 54635
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A03:Z

    if-eqz v0, :cond_0

    .line 54636
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Tb;->A73()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Tb;->A02(J)V

    .line 54637
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tb;->A02:Lcom/facebook/ads/redexgen/X/AL;

    .line 54638
    return-object p1
.end method

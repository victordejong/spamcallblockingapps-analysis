.class public final Lcom/facebook/ads/redexgen/X/YO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/YQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/YU;

.field public final A01:Lcom/facebook/ads/redexgen/X/YW;

.field public final A02:[Lcom/facebook/ads/redexgen/X/Az;


# direct methods
.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/Az;)V
    .locals 3

    .line 59625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59626
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Az;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A02:[Lcom/facebook/ads/redexgen/X/Az;

    .line 59627
    new-instance v0, Lcom/facebook/ads/redexgen/X/YU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YU;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/YU;

    .line 59628
    new-instance v0, Lcom/facebook/ads/redexgen/X/YW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A01:Lcom/facebook/ads/redexgen/X/YW;

    .line 59629
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YO;->A02:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/YU;

    aput-object v0, v2, v1

    .line 59630
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A01:Lcom/facebook/ads/redexgen/X/YW;

    aput-object v0, v2, v1

    .line 59631
    return-void
.end method


# virtual methods
.method public final A3S(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 4

    .line 59632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/YU;

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YU;->A0C(Z)V

    .line 59633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A01:Lcom/facebook/ads/redexgen/X/YW;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 59634
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A02(F)F

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A01:Lcom/facebook/ads/redexgen/X/YW;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    .line 59635
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A01(F)F

    move-result v2

    iget-boolean v1, p1, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AL;-><init>(FFZ)V

    .line 59636
    return-object v0
.end method

.method public final A5e()[Lcom/facebook/ads/redexgen/X/Az;
    .locals 1

    .line 59637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A02:[Lcom/facebook/ads/redexgen/X/Az;

    return-object v0
.end method

.method public final A6m(J)J
    .locals 2

    .line 59638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A01:Lcom/facebook/ads/redexgen/X/YW;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/YW;->A03(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7E()J
    .locals 2

    .line 59639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/YU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YU;->A0B()J

    move-result-wide v0

    return-wide v0
.end method

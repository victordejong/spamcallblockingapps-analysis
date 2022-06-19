.class public final Lcom/facebook/ads/redexgen/X/W2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Vw;

.field public final A01:Lcom/facebook/ads/redexgen/X/Vv;

.field public final A02:[Lcom/facebook/ads/redexgen/X/Az;


# direct methods
.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/Az;)V
    .locals 3

    .line 63066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63067
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Az;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A02:[Lcom/facebook/ads/redexgen/X/Az;

    .line 63068
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vw;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:Lcom/facebook/ads/redexgen/X/Vw;

    .line 63069
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vv;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A01:Lcom/facebook/ads/redexgen/X/Vv;

    .line 63070
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W2;->A02:[Lcom/facebook/ads/redexgen/X/Az;

    array-length v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:Lcom/facebook/ads/redexgen/X/Vw;

    aput-object v0, v2, v1

    .line 63071
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A01:Lcom/facebook/ads/redexgen/X/Vv;

    aput-object v0, v2, v1

    .line 63072
    return-void
.end method


# virtual methods
.method public final A3O(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 4

    .line 63073
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:Lcom/facebook/ads/redexgen/X/Vw;

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Vw;->A0C(Z)V

    .line 63074
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W2;->A01:Lcom/facebook/ads/redexgen/X/Vv;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 63075
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Vv;->A02(F)F

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W2;->A01:Lcom/facebook/ads/redexgen/X/Vv;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    .line 63076
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Vv;->A01(F)F

    move-result v2

    iget-boolean v1, p1, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AL;-><init>(FFZ)V

    .line 63077
    return-object v0
.end method

.method public final A5e()[Lcom/facebook/ads/redexgen/X/Az;
    .locals 1

    .line 63078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A02:[Lcom/facebook/ads/redexgen/X/Az;

    return-object v0
.end method

.method public final A6m(J)J
    .locals 2

    .line 63079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A01:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vv;->A03(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7G()J
    .locals 2

    .line 63080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:Lcom/facebook/ads/redexgen/X/Vw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vw;->A0B()J

    move-result-wide v0

    return-wide v0
.end method

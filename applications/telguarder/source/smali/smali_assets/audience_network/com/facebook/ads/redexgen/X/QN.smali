.class public final Lcom/facebook/ads/redexgen/X/QN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QM;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/QD;

.field public A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:I

.field public final A06:I


# direct methods
.method public constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/QD;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/QD;",
            ")V"
        }
    .end annotation

    .line 49217
    .local p6, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49218
    iput p1, p0, Lcom/facebook/ads/redexgen/X/QN;->A06:I

    .line 49219
    iput p2, p0, Lcom/facebook/ads/redexgen/X/QN;->A00:I

    .line 49220
    iput p3, p0, Lcom/facebook/ads/redexgen/X/QN;->A02:I

    .line 49221
    iput p4, p0, Lcom/facebook/ads/redexgen/X/QN;->A05:I

    .line 49222
    iput p5, p0, Lcom/facebook/ads/redexgen/X/QN;->A01:I

    .line 49223
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/QN;->A04:Ljava/util/Map;

    .line 49224
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/QN;->A03:Lcom/facebook/ads/redexgen/X/QD;

    .line 49225
    return-void
.end method

.method public synthetic constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/QD;Lcom/facebook/ads/redexgen/X/QL;)V
    .locals 0

    .line 49226
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/QN;-><init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/QD;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 49227
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 49228
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 49229
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 49230
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A05:I

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 49231
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A06:I

    return v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/QD;
    .locals 1

    .line 49232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A03:Lcom/facebook/ads/redexgen/X/QD;

    return-object v0
.end method

.method public final A06()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A04:Ljava/util/Map;

    return-object v0
.end method

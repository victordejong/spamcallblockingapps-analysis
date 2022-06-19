.class public final Lcom/facebook/ads/redexgen/X/QS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QR;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/QI;

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
.method public constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/QI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/QI;",
            ")V"
        }
    .end annotation

    .line 49244
    .local p6, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49245
    iput p1, p0, Lcom/facebook/ads/redexgen/X/QS;->A06:I

    .line 49246
    iput p2, p0, Lcom/facebook/ads/redexgen/X/QS;->A00:I

    .line 49247
    iput p3, p0, Lcom/facebook/ads/redexgen/X/QS;->A02:I

    .line 49248
    iput p4, p0, Lcom/facebook/ads/redexgen/X/QS;->A05:I

    .line 49249
    iput p5, p0, Lcom/facebook/ads/redexgen/X/QS;->A01:I

    .line 49250
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/QS;->A04:Ljava/util/Map;

    .line 49251
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/QS;->A03:Lcom/facebook/ads/redexgen/X/QI;

    .line 49252
    return-void
.end method

.method public synthetic constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/QI;Lcom/facebook/ads/redexgen/X/QQ;)V
    .locals 0

    .line 49253
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/QS;-><init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/QI;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 49254
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QS;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 49255
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QS;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 49256
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QS;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 49257
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QS;->A05:I

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 49258
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QS;->A06:I

    return v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/QI;
    .locals 1

    .line 49259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QS;->A03:Lcom/facebook/ads/redexgen/X/QI;

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

    .line 49260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QS;->A04:Ljava/util/Map;

    return-object v0
.end method

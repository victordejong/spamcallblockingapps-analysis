.class public final Lcom/facebook/ads/redexgen/X/WU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8X;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 64374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64375
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WU;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 64376
    return-void
.end method


# virtual methods
.method public final A6O()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64377
    invoke-static {}, Lcom/facebook/ads/redexgen/X/98;->A00()Lcom/facebook/ads/redexgen/X/98;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WU;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/98;->A02(Lcom/facebook/ads/redexgen/X/8D;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A8D()Z
    .locals 1

    .line 64378
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L1;->A04()Z

    move-result v0

    return v0
.end method

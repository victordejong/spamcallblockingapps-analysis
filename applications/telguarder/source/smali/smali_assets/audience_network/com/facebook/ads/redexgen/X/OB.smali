.class public final Lcom/facebook/ads/redexgen/X/OB;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Nw;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)Lcom/facebook/ads/redexgen/X/9g;
    .locals 1

    .line 46255
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 46256
    new-instance v0, Lcom/facebook/ads/redexgen/X/2W;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/2W;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)V

    .line 46257
    :goto_0
    return-object v0

    .line 46258
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2e;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/2e;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)V

    goto :goto_0
.end method

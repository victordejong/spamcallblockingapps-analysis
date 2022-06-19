.class public final Lcom/facebook/ads/redexgen/X/OG;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/O1;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)Lcom/facebook/ads/redexgen/X/9g;
    .locals 1

    .line 46260
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 46261
    new-instance v0, Lcom/facebook/ads/redexgen/X/2W;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/2W;-><init>(Lcom/facebook/ads/redexgen/X/O1;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)V

    .line 46262
    :goto_0
    return-object v0

    .line 46263
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2e;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/2e;-><init>(Lcom/facebook/ads/redexgen/X/O1;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)V

    goto :goto_0
.end method

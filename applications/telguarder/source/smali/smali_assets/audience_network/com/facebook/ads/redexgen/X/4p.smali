.class public final Lcom/facebook/ads/redexgen/X/4p;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)V
    .locals 2

    .line 12324
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/4o;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/4o;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/4m;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/4m;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/4o;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4m;->start()V

    .line 12325
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/Xh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/KR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 58088
    instance-of v0, p2, Lcom/facebook/ads/redexgen/X/8B;

    if-eqz v0, :cond_1

    .line 58089
    check-cast p2, Lcom/facebook/ads/redexgen/X/8B;

    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/8B;->A5U()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 58090
    .local p0, "adContext":Lcom/facebook/ads/redexgen/X/XJ;
    if-eqz v0, :cond_0

    .line 58091
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/XJ;->A0E(Ljava/lang/Throwable;)V

    .line 58092
    .end local p0    # "adContext":Lcom/facebook/ads/redexgen/X/XJ;
    .end local p1    # null:Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 58093
    :cond_1
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 58094
    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 58095
    .local p0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/XJ;

    if-eqz v0, :cond_0

    .line 58096
    check-cast v1, Lcom/facebook/ads/redexgen/X/XJ;

    .line 58097
    .local p1, "adContext":Lcom/facebook/ads/redexgen/X/XJ;
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/XJ;->A0E(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

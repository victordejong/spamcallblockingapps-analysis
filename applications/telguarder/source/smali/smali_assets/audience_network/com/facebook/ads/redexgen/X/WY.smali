.class public final Lcom/facebook/ads/redexgen/X/WY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/KT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 64401
    instance-of v0, p2, Lcom/facebook/ads/redexgen/X/8B;

    if-eqz v0, :cond_1

    .line 64402
    check-cast p2, Lcom/facebook/ads/redexgen/X/8B;

    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/8B;->A5U()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 64403
    .local p0, "adContext":Lcom/facebook/ads/redexgen/X/Wm;
    if-eqz v0, :cond_0

    .line 64404
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Wm;->A0F(Ljava/lang/Throwable;)V

    .line 64405
    .end local p0    # "adContext":Lcom/facebook/ads/redexgen/X/Wm;
    .end local p1    # null:Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 64406
    :cond_1
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64407
    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64408
    .local p0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/Wm;

    if-eqz v0, :cond_0

    .line 64409
    check-cast v1, Lcom/facebook/ads/redexgen/X/Wm;

    .line 64410
    .local p1, "adContext":Lcom/facebook/ads/redexgen/X/Wm;
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/Wm;->A0F(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

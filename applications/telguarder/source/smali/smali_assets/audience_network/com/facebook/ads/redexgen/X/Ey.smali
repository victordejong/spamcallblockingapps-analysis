.class public final Lcom/facebook/ads/redexgen/X/Ey;
.super Lcom/facebook/ads/redexgen/X/Sf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Sf<",
        "Lcom/facebook/ads/redexgen/X/bb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bb;)V
    .locals 0

    .line 32151
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Ljava/lang/Object;)V

    .line 32152
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 32153
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sf;->A08()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/bb;

    .line 32154
    .local p0, "controller":Lcom/facebook/ads/redexgen/X/bb;
    if-nez v1, :cond_0

    .line 32155
    return-void

    .line 32156
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/bb;->A01(Lcom/facebook/ads/redexgen/X/bb;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M0;->A03(Lcom/facebook/ads/redexgen/X/Wm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32157
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/bb;->A08()V

    .line 32158
    :goto_0
    return-void

    .line 32159
    :cond_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/bb;->A00(Lcom/facebook/ads/redexgen/X/bb;)Landroid/os/Handler;

    move-result-object v3

    .line 32160
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/bb;->A02(Lcom/facebook/ads/redexgen/X/bb;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0x1388

    .line 32161
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.class public final Lcom/facebook/ads/redexgen/X/PN;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Oj;->A0H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 0

    .line 48122
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PN;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 48123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PN;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0R(Lcom/facebook/ads/redexgen/X/Oj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PN;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PN;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getCurrentPositionInMillis()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7s;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 48125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PN;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08(Lcom/facebook/ads/redexgen/X/Oj;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PN;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A07(Lcom/facebook/ads/redexgen/X/Oj;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48126
    :cond_0
    return-void
.end method

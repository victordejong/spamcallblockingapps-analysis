.class public final Lcom/facebook/ads/redexgen/X/cV;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/L6;->A08()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/L6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/L6;)V
    .locals 0

    .line 72566
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cV;->A00:Lcom/facebook/ads/redexgen/X/L6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 72567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cV;->A00:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cV;->A00:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A03(Lcom/facebook/ads/redexgen/X/L6;)V

    .line 72569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cV;->A00:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/L6;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72570
    :cond_0
    return-void
.end method

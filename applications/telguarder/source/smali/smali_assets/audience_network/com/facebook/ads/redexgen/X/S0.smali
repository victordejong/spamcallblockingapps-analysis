.class public final Lcom/facebook/ads/redexgen/X/S0;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NV;)V
    .locals 0

    .line 51141
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/NV;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 51142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/NV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NV;->A06(Lcom/facebook/ads/redexgen/X/NV;)V

    .line 51143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/NV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NV;->A07(Lcom/facebook/ads/redexgen/X/NV;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/NV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NV;->A00(Lcom/facebook/ads/redexgen/X/NV;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/NV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NV;->A01(Lcom/facebook/ads/redexgen/X/NV;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51145
    :cond_0
    return-void
.end method

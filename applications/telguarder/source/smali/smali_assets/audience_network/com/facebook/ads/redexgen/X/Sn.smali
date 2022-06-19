.class public final Lcom/facebook/ads/redexgen/X/Sn;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/L8;->A07()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/L8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/L8;)V
    .locals 0

    .line 52810
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/L8;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 52811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/L8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L8;->A02(Lcom/facebook/ads/redexgen/X/L8;)V

    .line 52813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sn;->A00:Lcom/facebook/ads/redexgen/X/L8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L8;->A00(Lcom/facebook/ads/redexgen/X/L8;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52814
    :cond_0
    return-void
.end method

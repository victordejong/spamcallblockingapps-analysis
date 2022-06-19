.class public final Lcom/facebook/ads/redexgen/X/Rp;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rk;-><init>(Lcom/facebook/ads/redexgen/X/Nw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rk;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rk;)V
    .locals 0

    .line 50684
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 50685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A09(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/O5;

    move-result-object v1

    const/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0H(ILandroid/view/View;)V

    .line 50686
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rp;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Rk;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50687
    return-void
.end method

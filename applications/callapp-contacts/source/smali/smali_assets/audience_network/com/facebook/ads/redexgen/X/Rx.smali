.class public final Lcom/facebook/ads/redexgen/X/Rx;
.super Lcom/facebook/ads/redexgen/X/QD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Rz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rz;)V
    .locals 0

    .line 51802
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QD;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 1

    .line 51803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05(Lcom/facebook/ads/redexgen/X/Rz;)Lcom/facebook/ads/redexgen/X/15;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rx;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05(Lcom/facebook/ads/redexgen/X/Rz;)Lcom/facebook/ads/redexgen/X/15;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/15;->A9i()V

    .line 51805
    :cond_0
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/Yi;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;-><init>(Lcom/facebook/ads/redexgen/X/O1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YV;)V
    .locals 0

    .line 61383
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yi;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 61384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yi;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A09(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/OA;

    move-result-object v1

    const/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0I(ILandroid/view/View;)V

    .line 61385
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yi;->A00:Lcom/facebook/ads/redexgen/X/YV;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YV;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61386
    return-void
.end method

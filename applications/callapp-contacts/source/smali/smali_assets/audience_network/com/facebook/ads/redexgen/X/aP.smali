.class public final Lcom/facebook/ads/redexgen/X/aP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NE;)V
    .locals 0

    .line 67374
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9Y(Z)V
    .locals 2

    .line 67375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NE;->A0A(Lcom/facebook/ads/redexgen/X/NE;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NE;->A02(Lcom/facebook/ads/redexgen/X/NE;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NE;->A02(Lcom/facebook/ads/redexgen/X/NE;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 67377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NE;->A02(Lcom/facebook/ads/redexgen/X/NE;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 67378
    :cond_0
    return-void

    .line 67379
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public final AAD(Z)V
    .locals 2

    .line 67380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NE;->A0A(Lcom/facebook/ads/redexgen/X/NE;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NE;->A03(Lcom/facebook/ads/redexgen/X/NE;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NE;->A03(Lcom/facebook/ads/redexgen/X/NE;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 67382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:Lcom/facebook/ads/redexgen/X/NE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NE;->A03(Lcom/facebook/ads/redexgen/X/NE;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 67383
    :cond_0
    return-void

    .line 67384
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

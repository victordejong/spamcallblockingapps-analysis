.class public final Lcom/facebook/ads/redexgen/X/SB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/N9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 0

    .line 51413
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9Y(Z)V
    .locals 2

    .line 51414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A09(Lcom/facebook/ads/redexgen/X/N9;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A02(Lcom/facebook/ads/redexgen/X/N9;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A02(Lcom/facebook/ads/redexgen/X/N9;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 51416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A02(Lcom/facebook/ads/redexgen/X/N9;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 51417
    :cond_0
    return-void

    .line 51418
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public final AAC(Z)V
    .locals 2

    .line 51419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A09(Lcom/facebook/ads/redexgen/X/N9;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A03(Lcom/facebook/ads/redexgen/X/N9;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A03(Lcom/facebook/ads/redexgen/X/N9;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 51421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A03(Lcom/facebook/ads/redexgen/X/N9;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 51422
    :cond_0
    return-void

    .line 51423
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

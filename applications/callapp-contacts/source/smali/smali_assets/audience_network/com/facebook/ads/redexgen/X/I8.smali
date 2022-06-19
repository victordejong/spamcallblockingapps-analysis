.class public final Lcom/facebook/ads/redexgen/X/I8;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hw;->A05(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hw;)V
    .locals 0

    .line 37585
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Lcom/facebook/ads/redexgen/X/Hw;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 37586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Lcom/facebook/ads/redexgen/X/Hw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hw;->A03(Lcom/facebook/ads/redexgen/X/Hw;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;

    .line 37587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Lcom/facebook/ads/redexgen/X/Hw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hw;->A02(Lcom/facebook/ads/redexgen/X/Hw;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Lcom/facebook/ads/redexgen/X/Hw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hw;->A00(Lcom/facebook/ads/redexgen/X/Hw;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37588
    return-void
.end method

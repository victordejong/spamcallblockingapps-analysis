.class public final Lcom/facebook/ads/redexgen/X/Hw;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hq;->A05(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hq;)V
    .locals 0

    .line 37232
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 37233
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hw;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hq;->A03(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;

    .line 37234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A02(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hw;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A00(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37235
    return-void
.end method

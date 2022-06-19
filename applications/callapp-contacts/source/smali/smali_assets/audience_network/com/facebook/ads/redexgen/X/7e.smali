.class public final Lcom/facebook/ads/redexgen/X/7e;
.super Lcom/facebook/ads/redexgen/X/Le;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ia;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ia;)V
    .locals 0

    .line 16722
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7e;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Le;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 2

    .line 16723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7e;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A03(Lcom/facebook/ads/redexgen/X/Ia;)Lcom/facebook/ads/redexgen/X/Pb;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pb;->A04:Lcom/facebook/ads/redexgen/X/Pb;

    if-eq v1, v0, :cond_0

    .line 16724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7e;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A01(Lcom/facebook/ads/redexgen/X/Ia;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 16725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7e;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A01(Lcom/facebook/ads/redexgen/X/Ia;)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16726
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16727
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7e;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method

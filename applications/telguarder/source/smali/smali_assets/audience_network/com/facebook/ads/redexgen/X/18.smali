.class public final Lcom/facebook/ads/redexgen/X/18;
.super Lcom/facebook/ads/redexgen/X/2m;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JY;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9v;

.field public A01:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 6

    .line 2845
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2m;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 2846
    new-instance v0, Lcom/facebook/ads/redexgen/X/9v;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9v;-><init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Q9;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:Lcom/facebook/ads/redexgen/X/9v;

    .line 2847
    return-void
.end method


# virtual methods
.method public final A23(Lcom/facebook/ads/redexgen/X/Q9;)V
    .locals 1

    .line 2848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:Lcom/facebook/ads/redexgen/X/9v;

    if-eqz v0, :cond_0

    .line 2849
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9v;->A0f(Lcom/facebook/ads/redexgen/X/Q9;)V

    .line 2850
    :cond_0
    return-void
.end method

.method public getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/9v;
    .locals 1

    .line 2851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:Lcom/facebook/ads/redexgen/X/9v;

    return-object v0
.end method

.method public setCardsInfo(Ljava/util/ArrayList;)V
    .locals 2

    .line 2852
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/18;->A01:Ljava/util/List;

    .line 2853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/18;->A00:Lcom/facebook/ads/redexgen/X/9v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A01:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9v;->A0g(Ljava/util/List;)V

    .line 2854
    return-void
.end method

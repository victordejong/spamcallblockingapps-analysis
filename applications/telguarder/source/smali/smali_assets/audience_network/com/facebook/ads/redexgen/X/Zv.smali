.class public final Lcom/facebook/ads/redexgen/X/Zv;
.super Lcom/facebook/ads/redexgen/X/6R;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6M;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6B;

.field public final A01:Lcom/facebook/ads/redexgen/X/5v;

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/6b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .line 66536
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6R;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 66537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A02:Ljava/util/Map;

    .line 66538
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Lcom/facebook/ads/redexgen/X/5v;

    .line 66539
    return-void
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/6b;)V
    .locals 2

    .line 66540
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A02:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6b;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66541
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/6f;Landroid/content/Context;)V
    .locals 2

    .line 66542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Lcom/facebook/ads/redexgen/X/5v;

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/6B;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)Lcom/facebook/ads/redexgen/X/6B;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/6B;

    .line 66543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/6B;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A02:Ljava/util/Map;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/6B;->A05(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/6f;)V

    .line 66544
    return-void
.end method

.method public final ACL()V
    .locals 1

    .line 66545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/6B;

    if-eqz v0, :cond_0

    .line 66546
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6B;->A04()V

    .line 66547
    :cond_0
    return-void
.end method

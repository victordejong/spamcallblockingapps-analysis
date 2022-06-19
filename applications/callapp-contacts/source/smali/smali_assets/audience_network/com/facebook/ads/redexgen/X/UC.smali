.class public final Lcom/facebook/ads/redexgen/X/UC;
.super Lcom/facebook/ads/redexgen/X/6R;
.source ""


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 55832
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6R;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 55833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UC;->A00:Ljava/util/List;

    .line 55834
    return-void
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/6b;)V
    .locals 2

    .line 55835
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6b;->A03()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0B:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UC;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55837
    :cond_0
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 1

    .line 55838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UC;->A00:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A02(Lcom/facebook/ads/redexgen/X/6f;Ljava/util/List;)V

    .line 55839
    return-void
.end method

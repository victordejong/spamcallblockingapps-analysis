.class public final Lcom/facebook/ads/redexgen/X/bD;
.super Lcom/facebook/ads/redexgen/X/2U;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bC;->A00()Lcom/facebook/ads/redexgen/X/2U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/2U<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bC;)V
    .locals 0

    .line 69135
    .local p0, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2U;-><init>()V

    return-void
.end method


# virtual methods
.method public final A05()I
    .locals 1

    .line 69136
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/2X;->A00:I

    return v0
.end method

.method public final A06(Ljava/lang/Object;)I
    .locals 1

    .line 69137
    .local p1, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A09(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A07(Ljava/lang/Object;)I
    .locals 1

    .line 69138
    .local p1, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A08(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A08(II)Ljava/lang/Object;
    .locals 2

    .line 69139
    .local p2, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/2X;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A09(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 69140
    .local p1, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2X;->A0D(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 69141
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    return-object v0
.end method

.method public final A0E()V
    .locals 1

    .line 69142
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2X;->clear()V

    .line 69143
    return-void
.end method

.method public final A0F(I)V
    .locals 1

    .line 69144
    .local p1, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A0B(I)Ljava/lang/Object;

    .line 69145
    return-void
.end method

.method public final A0G(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 69146
    .local p1, "this":Lcom/facebook/ads/redexgen/X/bD;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bD;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69147
    return-void
.end method

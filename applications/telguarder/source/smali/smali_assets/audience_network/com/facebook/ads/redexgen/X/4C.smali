.class public final Lcom/facebook/ads/redexgen/X/4C;
.super Lcom/facebook/ads/redexgen/X/Fx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownClientBundleResponse"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Y;)V
    .locals 1

    .line 10470
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qo;->A04:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Fx;-><init>(Lcom/facebook/ads/redexgen/X/4Y;Lcom/facebook/ads/redexgen/X/Qo;)V

    .line 10471
    return-void
.end method


# virtual methods
.method public final A3M(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Qe;",
            "Lcom/facebook/ads/redexgen/X/R2;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/G1;",
            "Lcom/facebook/ads/redexgen/X/Qo;",
            ">;)V"
        }
    .end annotation

    .line 10472
    .local p2, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A01:Lcom/facebook/ads/redexgen/X/4Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Y;->A08()V

    .line 10473
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fx;->A3M(Ljava/util/Map;Ljava/util/Map;)V

    .line 10474
    return-void
.end method

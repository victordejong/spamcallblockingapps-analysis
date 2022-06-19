.class public final Lcom/facebook/ads/redexgen/X/4C;
.super Lcom/facebook/ads/redexgen/X/G3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/G1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownClientBundleResponse"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Y;)V
    .locals 1

    .line 10363
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qq;->A05:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/G3;-><init>(Lcom/facebook/ads/redexgen/X/4Y;Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 10364
    return-void
.end method


# virtual methods
.method public final A3Q(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/Qj;",
            "Lcom/facebook/ads/redexgen/X/R3;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/G6;",
            "Lcom/facebook/ads/redexgen/X/Qq;",
            ">;)V"
        }
    .end annotation

    .line 10365
    .local p2, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G3;->A01:Lcom/facebook/ads/redexgen/X/4Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Y;->A07()V

    .line 10366
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/G3;->A3Q(Ljava/util/Map;Ljava/util/Map;)V

    .line 10367
    return-void
.end method

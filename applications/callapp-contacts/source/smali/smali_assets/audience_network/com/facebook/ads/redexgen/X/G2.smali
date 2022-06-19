.class public abstract Lcom/facebook/ads/redexgen/X/G2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/G1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServerBundleResponse"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/G7;

.field public final A01:Lcom/facebook/ads/redexgen/X/R3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/G7;Lcom/facebook/ads/redexgen/X/R3;)V
    .locals 0

    .line 33262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33263
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G2;->A00:Lcom/facebook/ads/redexgen/X/G7;

    .line 33264
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/G2;->A01:Lcom/facebook/ads/redexgen/X/R3;

    .line 33265
    return-void
.end method


# virtual methods
.method public A3Q(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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

    .line 33266
    .local v1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A00:Lcom/facebook/ads/redexgen/X/G7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A01:Lcom/facebook/ads/redexgen/X/R3;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33267
    return-void
.end method

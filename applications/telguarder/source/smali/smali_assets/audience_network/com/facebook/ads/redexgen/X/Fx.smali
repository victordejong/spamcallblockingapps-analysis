.class public abstract Lcom/facebook/ads/redexgen/X/Fx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClientBundleResponse"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Qo;

.field public final A01:Lcom/facebook/ads/redexgen/X/4Y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Y;Lcom/facebook/ads/redexgen/X/Qo;)V
    .locals 0

    .line 33290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33291
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fx;->A01:Lcom/facebook/ads/redexgen/X/4Y;

    .line 33292
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/Qo;

    .line 33293
    return-void
.end method


# virtual methods
.method public A3M(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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

    .line 33294
    .local v1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fx;->A01:Lcom/facebook/ads/redexgen/X/4Y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fx;->A00:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33295
    return-void
.end method

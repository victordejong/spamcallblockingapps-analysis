.class public abstract Lcom/facebook/ads/redexgen/X/Fw;
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
    name = "ServerBundleResponse"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/G4;

.field public final A01:Lcom/facebook/ads/redexgen/X/R2;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/G4;Lcom/facebook/ads/redexgen/X/R2;)V
    .locals 0

    .line 33284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33285
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fw;->A00:Lcom/facebook/ads/redexgen/X/G4;

    .line 33286
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fw;->A01:Lcom/facebook/ads/redexgen/X/R2;

    .line 33287
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

    .line 33288
    .local v1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fw;->A00:Lcom/facebook/ads/redexgen/X/G4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fw;->A01:Lcom/facebook/ads/redexgen/X/R2;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33289
    return-void
.end method

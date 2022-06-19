.class public final Lcom/facebook/ads/redexgen/X/4J;
.super Lcom/facebook/ads/redexgen/X/Fw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullServerBundleResponse"
.end annotation


# instance fields
.field public final A00:Lorg/json/JSONObject;

.field public final A01:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/G4;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10526
    sget-object v0, Lcom/facebook/ads/redexgen/X/R2;->A03:Lcom/facebook/ads/redexgen/X/R2;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Fw;-><init>(Lcom/facebook/ads/redexgen/X/G4;Lcom/facebook/ads/redexgen/X/R2;)V

    .line 10527
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:Lorg/json/JSONObject;

    .line 10528
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Lorg/json/JSONObject;

    .line 10529
    return-void
.end method


# virtual methods
.method public final A3M(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
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

    .line 10530
    .local v1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fw;->A00:Lcom/facebook/ads/redexgen/X/G4;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A07(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    .line 10531
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fw;->A3M(Ljava/util/Map;Ljava/util/Map;)V

    .line 10532
    return-void
.end method

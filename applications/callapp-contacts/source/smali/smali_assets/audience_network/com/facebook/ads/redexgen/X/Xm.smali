.class public final Lcom/facebook/ads/redexgen/X/Xm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8W;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEk(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/8D;",
            ")V"
        }
    .end annotation

    .line 58125
    .local p3, "staticEnvironmentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8c;->A00()Lcom/facebook/ads/redexgen/X/8b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8b;->AEk(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/8D;)V

    .line 58126
    return-void
.end method

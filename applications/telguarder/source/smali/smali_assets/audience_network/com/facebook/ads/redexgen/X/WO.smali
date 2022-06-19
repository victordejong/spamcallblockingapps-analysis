.class public final Lcom/facebook/ads/redexgen/X/WO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WN;->A04(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QF;)Lcom/facebook/ads/redexgen/X/Qu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wl;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KD;Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 0

    .line 64334
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WO;->A01:Lcom/facebook/ads/redexgen/X/KD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6O()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64335
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WO;->A01:Lcom/facebook/ads/redexgen/X/KD;

    .line 64336
    invoke-static {}, Lcom/facebook/ads/redexgen/X/98;->A00()Lcom/facebook/ads/redexgen/X/98;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 64337
    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/98;->A01(Lcom/facebook/ads/redexgen/X/8D;Z)Lcom/facebook/ads/redexgen/X/97;

    move-result-object v0

    .line 64338
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/97;->A6N()Ljava/util/Map;

    move-result-object v0

    .line 64339
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KD;->A09(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

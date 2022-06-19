.class public final Lcom/facebook/ads/redexgen/X/Xr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xs;->A04(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QK;)Lcom/facebook/ads/redexgen/X/Qv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XK;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KB;Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 0

    .line 58158
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xr;->A01:Lcom/facebook/ads/redexgen/X/KB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xr;->A00:Lcom/facebook/ads/redexgen/X/XK;

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

    .line 58159
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Xr;->A01:Lcom/facebook/ads/redexgen/X/KB;

    .line 58160
    invoke-static {}, Lcom/facebook/ads/redexgen/X/98;->A00()Lcom/facebook/ads/redexgen/X/98;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xr;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 58161
    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/98;->A01(Lcom/facebook/ads/redexgen/X/8D;Z)Lcom/facebook/ads/redexgen/X/97;

    move-result-object v0

    .line 58162
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/97;->A6N()Ljava/util/Map;

    move-result-object v0

    .line 58163
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KB;->A09(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

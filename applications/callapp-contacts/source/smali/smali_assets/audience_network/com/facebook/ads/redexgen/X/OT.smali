.class public final Lcom/facebook/ads/redexgen/X/OT;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/OS;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 46622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OT;->A00:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 1

    .line 46624
    sget-object v0, Lcom/facebook/ads/redexgen/X/OT;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;ILcom/facebook/ads/redexgen/X/OQ;)Lcom/facebook/ads/redexgen/X/OS;
    .locals 4

    .line 46625
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/br;->A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/OS;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/OS;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;I)V

    .line 46626
    .local p0, "webViewController":Lcom/facebook/ads/redexgen/X/OS;
    invoke-virtual {v3, p3}, Lcom/facebook/ads/redexgen/X/OS;->A0Y(Lcom/facebook/ads/redexgen/X/OQ;)V

    .line 46627
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/OS;->A0W()V

    .line 46628
    sget-object v2, Lcom/facebook/ads/redexgen/X/OT;->A00:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46629
    return-object v3
.end method

.method public static A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OS;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 46630
    sget-object v0, Lcom/facebook/ads/redexgen/X/OT;->A00:Ljava/util/Map;

    .line 46631
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 46632
    .local p0, "dynamicWebViewControllerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/dynamiclayout/DynamicWebViewController;>;"
    if-eqz v0, :cond_0

    .line 46633
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/OS;

    return-object v0

    .line 46634
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A03(Ljava/lang/String;)V
    .locals 1

    .line 46635
    sget-object v0, Lcom/facebook/ads/redexgen/X/OT;->A00:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46636
    return-void
.end method

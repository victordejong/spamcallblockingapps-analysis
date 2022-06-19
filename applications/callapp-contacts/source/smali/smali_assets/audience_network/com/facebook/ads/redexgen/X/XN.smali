.class public final Lcom/facebook/ads/redexgen/X/XN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XM;->A0O()Lcom/facebook/ads/redexgen/X/M4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XM;)V
    .locals 0

    .line 57821
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XN;->A00:Lcom/facebook/ads/redexgen/X/XM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9k()V
    .locals 3

    .line 57822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XN;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/XM;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A07:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 57823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XN;->A00:Lcom/facebook/ads/redexgen/X/XM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XM;->A0U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57824
    return-void

    .line 57825
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XN;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/XM;->A08:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XN;->A00:Lcom/facebook/ads/redexgen/X/XM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XM;->A09:Lcom/facebook/ads/redexgen/X/Me;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A6L()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    .line 57826
    return-void
.end method

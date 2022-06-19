.class public final Lcom/facebook/ads/redexgen/X/RR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RQ;->A0O()Lcom/facebook/ads/redexgen/X/M6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RQ;)V
    .locals 0

    .line 50086
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RR;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9j()V
    .locals 3

    .line 50087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RR;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/RQ;->A05:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A06:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 50088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RR;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RQ;->A0U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50089
    return-void

    .line 50090
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RR;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/RQ;->A08:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RR;->A00:Lcom/facebook/ads/redexgen/X/RQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RQ;->A09:Lcom/facebook/ads/redexgen/X/MZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A6L()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 50091
    return-void
.end method

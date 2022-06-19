.class public final Lcom/facebook/ads/redexgen/X/cD;
.super Lcom/facebook/ads/redexgen/X/0q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cC;->A0A(Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cC;)V
    .locals 0

    .line 71137
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cD;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0q;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 71138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cD;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A02(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cD;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A00(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3Y(Z)V

    .line 71139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cD;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A00(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cD;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A00(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cD;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A9c(Lcom/facebook/ads/redexgen/X/cC;)V

    .line 71141
    :cond_0
    return-void

    .line 71142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

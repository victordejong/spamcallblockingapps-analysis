.class public final Lcom/facebook/ads/redexgen/X/SK;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F5;->A0Q(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rn;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/1n;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/F5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F5;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/Rn;)V
    .locals 0

    .line 52319
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Lcom/facebook/ads/redexgen/X/F5;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Lcom/facebook/ads/redexgen/X/1n;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SK;->A00:Lcom/facebook/ads/redexgen/X/Rn;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 52320
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Lcom/facebook/ads/redexgen/X/F5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A01:Lcom/facebook/ads/redexgen/X/1n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0S(Lcom/facebook/ads/redexgen/X/1n;)V

    .line 52321
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Lcom/facebook/ads/redexgen/X/F5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A00:Lcom/facebook/ads/redexgen/X/Rn;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0P(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 52322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Lcom/facebook/ads/redexgen/X/F5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52323
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Lcom/facebook/ads/redexgen/X/F5;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/SJ;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 52324
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v0, ""

    new-instance v3, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 52325
    .local p0, "error":Lcom/facebook/ads/redexgen/X/Jl;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Lcom/facebook/ads/redexgen/X/F5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52326
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    .line 52327
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jl;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Lcom/facebook/ads/redexgen/X/F5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52329
    .end local p0    # "error":Lcom/facebook/ads/redexgen/X/Jl;
    :goto_0
    return-void

    .line 52330
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A02:Lcom/facebook/ads/redexgen/X/F5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0O()V

    goto :goto_0
.end method

.class public final Lcom/facebook/ads/redexgen/X/bg;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F0;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cB;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/1n;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/F0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F0;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/cB;)V
    .locals 0

    .line 69998
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Lcom/facebook/ads/redexgen/X/F0;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bg;->A01:Lcom/facebook/ads/redexgen/X/1n;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bg;->A00:Lcom/facebook/ads/redexgen/X/cB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 69999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bg;->A01:Lcom/facebook/ads/redexgen/X/1n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0P(Lcom/facebook/ads/redexgen/X/1n;)V

    .line 70000
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bg;->A00:Lcom/facebook/ads/redexgen/X/cB;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 70001
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Lcom/facebook/ads/redexgen/X/F0;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 70002
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v3

    .line 70003
    .local p0, "error":Lcom/facebook/ads/redexgen/X/Jn;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70004
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    .line 70005
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jn;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 70006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70007
    return-void
.end method

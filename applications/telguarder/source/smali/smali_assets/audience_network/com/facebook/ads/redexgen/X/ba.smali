.class public final Lcom/facebook/ads/redexgen/X/ba;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ex;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F4;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/1n;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ex;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ex;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/F4;)V
    .locals 0

    .line 69816
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ba;->A01:Lcom/facebook/ads/redexgen/X/1n;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 69817
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A01:Lcom/facebook/ads/redexgen/X/1n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0P(Lcom/facebook/ads/redexgen/X/1n;)V

    .line 69818
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 69819
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 69820
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->RV_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 69821
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 69822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    const-string v1, ""

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jn;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 69823
    return-void
.end method

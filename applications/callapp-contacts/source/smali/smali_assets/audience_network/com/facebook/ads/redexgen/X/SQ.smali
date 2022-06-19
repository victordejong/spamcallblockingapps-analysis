.class public final Lcom/facebook/ads/redexgen/X/SQ;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F2;->A0Q(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FU;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/1n;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/F2;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F2;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/FU;)V
    .locals 0

    .line 52507
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SQ;->A02:Lcom/facebook/ads/redexgen/X/F2;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SQ;->A01:Lcom/facebook/ads/redexgen/X/1n;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 52508
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SQ;->A02:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A01:Lcom/facebook/ads/redexgen/X/1n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0S(Lcom/facebook/ads/redexgen/X/1n;)V

    .line 52509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SQ;->A02:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/FU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0P(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 52510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SQ;->A02:Lcom/facebook/ads/redexgen/X/F2;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/SJ;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 52511
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->RV_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52512
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A02:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A02:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    const-string v1, ""

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52514
    return-void
.end method

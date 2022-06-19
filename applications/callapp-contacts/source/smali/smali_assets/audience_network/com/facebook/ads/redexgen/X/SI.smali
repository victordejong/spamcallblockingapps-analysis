.class public final Lcom/facebook/ads/redexgen/X/SI;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SJ;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SJ;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Jl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SJ;Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 0

    .line 52128
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Lcom/facebook/ads/redexgen/X/SJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 52129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Lcom/facebook/ads/redexgen/X/SJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52130
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    .line 52131
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jl;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Lcom/facebook/ads/redexgen/X/SJ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52133
    return-void
.end method

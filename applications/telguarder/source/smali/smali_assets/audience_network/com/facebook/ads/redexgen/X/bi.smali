.class public final Lcom/facebook/ads/redexgen/X/bi;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bh;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bh;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Jn;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bh;Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 0

    .line 70198
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bi;->A00:Lcom/facebook/ads/redexgen/X/bh;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bi;->A01:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 70199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A00:Lcom/facebook/ads/redexgen/X/bh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70200
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A01:Lcom/facebook/ads/redexgen/X/Jn;

    .line 70201
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A01:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 70202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A00:Lcom/facebook/ads/redexgen/X/bh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A01:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70203
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/SE;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FB;->A0Q(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rm;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/1n;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/FB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FB;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/Rm;)V
    .locals 0

    .line 52072
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SE;->A02:Lcom/facebook/ads/redexgen/X/FB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/1n;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 52073
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SE;->A02:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/1n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0S(Lcom/facebook/ads/redexgen/X/1n;)V

    .line 52074
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SE;->A02:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0P(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 52075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A02:Lcom/facebook/ads/redexgen/X/FB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0O()V

    .line 52076
    return-void
.end method

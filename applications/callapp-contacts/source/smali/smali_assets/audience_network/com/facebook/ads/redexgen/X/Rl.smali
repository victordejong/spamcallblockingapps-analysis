.class public final Lcom/facebook/ads/redexgen/X/Rl;
.super Lcom/facebook/ads/redexgen/X/0q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rm;->A0A(Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rm;)V
    .locals 0

    .line 51183
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rl;->A00:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0q;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 51184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rl;->A00:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rm;->A02(Lcom/facebook/ads/redexgen/X/Rm;)Lcom/facebook/ads/redexgen/X/ES;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rl;->A00:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rm;->A00(Lcom/facebook/ads/redexgen/X/Rm;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/RY;->A3c(Z)V

    .line 51185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rl;->A00:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rm;->A00(Lcom/facebook/ads/redexgen/X/Rm;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rl;->A00:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rm;->A00(Lcom/facebook/ads/redexgen/X/Rm;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rl;->A00:Lcom/facebook/ads/redexgen/X/Rm;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A9d(Lcom/facebook/ads/redexgen/X/Rm;)V

    .line 51187
    :cond_0
    return-void

    .line 51188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

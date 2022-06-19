.class public final Lcom/facebook/ads/redexgen/X/Yc;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;->A0Q(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YV;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YV;Z)V
    .locals 0

    .line 61254
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yc;->A00:Lcom/facebook/ads/redexgen/X/YV;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Yc;->A01:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 61255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A08(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v1

    .line 61256
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M4;
    if-eqz v1, :cond_0

    .line 61257
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A01:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/M4;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setPageDetailsVisible(Z)V

    .line 61258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YV;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    .line 61259
    :cond_0
    return-void

    .line 61260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

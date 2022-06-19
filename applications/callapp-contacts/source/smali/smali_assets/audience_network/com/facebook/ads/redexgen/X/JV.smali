.class public final Lcom/facebook/ads/redexgen/X/JV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cB;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cB;)V
    .locals 0

    .line 40029
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JV;->A00:Lcom/facebook/ads/redexgen/X/cB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 40030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JV;->A00:Lcom/facebook/ads/redexgen/X/cB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cD;->A0Y:Lcom/facebook/ads/redexgen/X/Rp;

    if-eqz v0, :cond_0

    .line 40031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JV;->A00:Lcom/facebook/ads/redexgen/X/cB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/cD;->A0Y:Lcom/facebook/ads/redexgen/X/Rp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JV;->A00:Lcom/facebook/ads/redexgen/X/cB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cB;->A02(Lcom/facebook/ads/redexgen/X/cB;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A0e(Ljava/util/Map;)V

    .line 40032
    :cond_0
    return-void
.end method

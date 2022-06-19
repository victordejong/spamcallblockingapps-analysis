.class public final Lcom/facebook/ads/redexgen/X/bh;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MG;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MG;)V
    .locals 0

    .line 70729
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 70730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/MG;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/MG;->A00:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 70731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/MG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/MG;->A00:Lcom/facebook/ads/redexgen/X/50;

    .line 70732
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v2

    .line 70733
    const/high16 v1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->overridePendingTransition(II)V

    .line 70734
    return-void
.end method

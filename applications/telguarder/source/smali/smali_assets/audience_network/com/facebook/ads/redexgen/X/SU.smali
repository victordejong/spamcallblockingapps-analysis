.class public final Lcom/facebook/ads/redexgen/X/SU;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ME;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ME;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ME;)V
    .locals 0

    .line 52401
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SU;->A00:Lcom/facebook/ads/redexgen/X/ME;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 52402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SU;->A00:Lcom/facebook/ads/redexgen/X/ME;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ME;->A00:Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 52403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SU;->A00:Lcom/facebook/ads/redexgen/X/ME;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ME;->A00:Lcom/facebook/ads/redexgen/X/50;

    .line 52404
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v2

    .line 52405
    const/high16 v1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->overridePendingTransition(II)V

    .line 52406
    return-void
.end method

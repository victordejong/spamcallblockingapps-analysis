.class public final Lcom/facebook/ads/redexgen/X/O7;
.super Landroid/animation/AnimatorListenerAdapter;
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

    .line 46160
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A00:Lcom/facebook/ads/redexgen/X/YV;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/O7;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 46161
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 46162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A09(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/OA;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OA;->setTranslationY(F)V

    .line 46163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A0M(Lcom/facebook/ads/redexgen/X/YV;)V

    .line 46164
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A07(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/aO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A07(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/aO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aO;->destroy()V

    .line 46166
    :cond_0
    return-void
.end method

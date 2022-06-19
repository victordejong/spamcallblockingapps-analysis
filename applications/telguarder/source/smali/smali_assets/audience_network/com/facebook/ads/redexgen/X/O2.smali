.class public final Lcom/facebook/ads/redexgen/X/O2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rk;->A0Q(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rk;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rk;Z)V
    .locals 0

    .line 46155
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/O2;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 46156
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 46157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A09(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/O5;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O5;->setTranslationY(F)V

    .line 46158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0M(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 46159
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O2;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A07(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/SA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A07(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/SA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->destroy()V

    .line 46161
    :cond_0
    return-void
.end method

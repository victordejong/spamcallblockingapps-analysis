.class public final Lcom/facebook/ads/redexgen/X/PZ;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7d;->A00(Lcom/facebook/ads/redexgen/X/K4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7d;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7d;)V
    .locals 0

    .line 48353
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A00:Lcom/facebook/ads/redexgen/X/7d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 48354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A00(Lcom/facebook/ads/redexgen/X/Ia;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/JF;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/JF;-><init>(Lcom/facebook/ads/redexgen/X/PZ;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48355
    return-void
.end method

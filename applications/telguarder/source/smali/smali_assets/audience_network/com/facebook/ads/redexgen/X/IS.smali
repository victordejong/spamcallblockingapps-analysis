.class public final Lcom/facebook/ads/redexgen/X/IS;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PU;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PU;)V
    .locals 0

    .line 38574
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 38575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PU;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/IR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0E(Lcom/facebook/ads/redexgen/X/IR;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PU;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/IR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A0C(Lcom/facebook/ads/redexgen/X/IR;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PU;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PU;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/IR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IR;->A09(Lcom/facebook/ads/redexgen/X/IR;)V

    .line 38577
    :cond_0
    return-void
.end method

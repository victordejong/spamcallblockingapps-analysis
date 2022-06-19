.class public final Lcom/facebook/ads/redexgen/X/JF;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PZ;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PZ;)V
    .locals 0

    .line 39789
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JF;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 39790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JF;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0F(Lcom/facebook/ads/redexgen/X/Ia;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JF;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0D(Lcom/facebook/ads/redexgen/X/Ia;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JF;->A00:Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A0A(Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 39792
    :cond_0
    return-void
.end method

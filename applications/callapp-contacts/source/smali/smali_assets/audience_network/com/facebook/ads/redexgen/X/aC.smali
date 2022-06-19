.class public final Lcom/facebook/ads/redexgen/X/aC;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Na;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Na;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Na;)V
    .locals 0

    .line 67044
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 67045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Na;->A06(Lcom/facebook/ads/redexgen/X/Na;)V

    .line 67046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Na;->A07(Lcom/facebook/ads/redexgen/X/Na;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Na;->A00(Lcom/facebook/ads/redexgen/X/Na;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Na;->A01(Lcom/facebook/ads/redexgen/X/Na;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67048
    :cond_0
    return-void
.end method

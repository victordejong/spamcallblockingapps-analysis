.class public final Lcom/facebook/ads/redexgen/X/AR;
.super Lcom/facebook/ads/redexgen/X/KS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AN;)V
    .locals 0

    .line 21464
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/AN;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KS;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 1

    .line 21465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/AN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AN;->A00(Lcom/facebook/ads/redexgen/X/AN;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21466
    return-void

    .line 21467
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AR;->A00:Lcom/facebook/ads/redexgen/X/AN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AN;->A00(Lcom/facebook/ads/redexgen/X/AN;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MF;->onPause()V

    .line 21468
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 21469
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AR;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method

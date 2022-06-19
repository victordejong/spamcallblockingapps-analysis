.class public final Lcom/facebook/ads/redexgen/X/9r;
.super Lcom/facebook/ads/redexgen/X/KN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9o;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20670
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KP;)V
    .locals 2

    .line 20671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A08(Lcom/facebook/ads/redexgen/X/9o;)V

    .line 20672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/9o;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9o;->A07:Lcom/facebook/ads/redexgen/X/RD;

    .line 20673
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0Q()Lcom/facebook/ads/redexgen/X/O9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/9o;

    .line 20674
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O9;->AC5(Landroid/view/View;)V

    .line 20675
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 20676
    check-cast p1, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9r;->A00(Lcom/facebook/ads/redexgen/X/KP;)V

    return-void
.end method

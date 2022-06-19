.class public final Lcom/facebook/ads/redexgen/X/9t;
.super Lcom/facebook/ads/redexgen/X/K0;
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

    .line 20684
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K0;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/K2;)V
    .locals 2

    .line 20685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9o;->getVideoView()Lcom/facebook/ads/redexgen/X/Oq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:Lcom/facebook/ads/redexgen/X/9o;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9o;->A07:Lcom/facebook/ads/redexgen/X/RD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0R()Lcom/facebook/ads/redexgen/X/OA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9o;->getVideoView()Lcom/facebook/ads/redexgen/X/Oq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OA;->setVolume(F)V

    .line 20687
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 20688
    check-cast p1, Lcom/facebook/ads/redexgen/X/K2;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9t;->A00(Lcom/facebook/ads/redexgen/X/K2;)V

    return-void
.end method

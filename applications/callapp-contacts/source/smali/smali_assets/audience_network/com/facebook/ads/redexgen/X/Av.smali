.class public final Lcom/facebook/ads/redexgen/X/Av;
.super Lcom/facebook/ads/redexgen/X/KW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/At;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/At;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/At;)V
    .locals 0

    .line 21992
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:Lcom/facebook/ads/redexgen/X/At;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KW;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 1

    .line 21993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:Lcom/facebook/ads/redexgen/X/At;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/At;->A00(Lcom/facebook/ads/redexgen/X/At;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21994
    return-void

    .line 21995
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:Lcom/facebook/ads/redexgen/X/At;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/At;->A00(Lcom/facebook/ads/redexgen/X/At;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MH;->onPause()V

    .line 21996
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 21997
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Av;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method

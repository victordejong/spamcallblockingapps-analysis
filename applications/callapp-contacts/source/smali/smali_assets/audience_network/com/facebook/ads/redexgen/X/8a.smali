.class public final Lcom/facebook/ads/redexgen/X/8a;
.super Lcom/facebook/ads/redexgen/X/Le;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/86;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/86;)V
    .locals 0

    .line 18162
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8a;->A00:Lcom/facebook/ads/redexgen/X/86;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Le;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 3

    .line 18163
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8a;->A00:Lcom/facebook/ads/redexgen/X/86;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/86;->A02(Lcom/facebook/ads/redexgen/X/86;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/86;->A0A(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/7w;Z)V

    .line 18164
    return-void

    .line 18165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 18166
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8a;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method

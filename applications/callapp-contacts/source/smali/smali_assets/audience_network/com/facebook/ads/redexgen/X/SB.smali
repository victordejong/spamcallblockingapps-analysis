.class public final Lcom/facebook/ads/redexgen/X/SB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/75;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableAdCacheListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/1U;

.field public final A01:Lcom/facebook/ads/redexgen/X/1i;

.field public final A02:Lcom/facebook/ads/redexgen/X/7D;

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1i;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/1U;Z)V
    .locals 0

    .line 52032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52033
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SB;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52034
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SB;->A01:Lcom/facebook/ads/redexgen/X/1i;

    .line 52035
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SB;->A02:Lcom/facebook/ads/redexgen/X/7D;

    .line 52036
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/1U;

    .line 52037
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/SB;->A04:Z

    .line 52038
    return-void
.end method

.method private final A00()V
    .locals 5

    .line 52039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 52040
    .local p0, "precacheWebView":Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 52041
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/1U;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SB;->A01:Lcom/facebook/ads/redexgen/X/1i;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/SB;->A04:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/1j;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/1j;-><init>(Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/1i;Z)V

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52043
    return-void
.end method

.method private A01(Z)V
    .locals 2

    .line 52044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0A()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1V;->A05:Lcom/facebook/ads/redexgen/X/1V;

    if-ne v1, v0, :cond_0

    .line 52045
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SB;->A00()V

    .line 52046
    return-void

    .line 52047
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0F()Ljava/lang/String;

    move-result-object v1

    .line 52048
    .local p0, "markupUrlResult":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 52049
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SB;->A02:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52050
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1U;->A0I(Ljava/lang/String;)V

    .line 52051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A01:Lcom/facebook/ads/redexgen/X/1i;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1i;->AB6()V

    .line 52052
    return-void
.end method


# virtual methods
.method public final A9h()V
    .locals 2

    .line 52053
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A04:Z

    if-eqz v0, :cond_0

    .line 52054
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SB;->A01:Lcom/facebook/ads/redexgen/X/1i;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1i;->AB5(Lcom/facebook/ads/AdError;)V

    .line 52055
    :goto_0
    return-void

    .line 52056
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SB;->A01(Z)V

    goto :goto_0
.end method

.method public final A9o()V
    .locals 1

    .line 52057
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SB;->A01(Z)V

    .line 52058
    return-void
.end method

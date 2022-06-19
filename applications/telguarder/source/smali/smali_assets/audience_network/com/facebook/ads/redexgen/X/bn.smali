.class public final Lcom/facebook/ads/redexgen/X/bn;
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

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1i;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/1U;Z)V
    .locals 0

    .line 70254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70255
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bn;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70256
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/1i;

    .line 70257
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bn;->A02:Lcom/facebook/ads/redexgen/X/7D;

    .line 70258
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/1U;

    .line 70259
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/bn;->A04:Z

    .line 70260
    return-void
.end method

.method private final A00()V
    .locals 5

    .line 70261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 70262
    .local p0, "precacheWebView":Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 70263
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/1U;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/1i;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/bn;->A04:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/1j;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/1j;-><init>(Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/1i;Z)V

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 70265
    return-void
.end method

.method private A01(Z)V
    .locals 2

    .line 70266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A09()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1V;->A05:Lcom/facebook/ads/redexgen/X/1V;

    if-ne v1, v0, :cond_0

    .line 70267
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bn;->A00()V

    .line 70268
    return-void

    .line 70269
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0E()Ljava/lang/String;

    move-result-object v1

    .line 70270
    .local p0, "markupUrlResult":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 70271
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bn;->A02:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70272
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1U;->A0H(Ljava/lang/String;)V

    .line 70273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/1i;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1i;->AB6()V

    .line 70274
    return-void
.end method


# virtual methods
.method public final A9g()V
    .locals 2

    .line 70275
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bn;->A04:Z

    if-eqz v0, :cond_0

    .line 70276
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bn;->A01:Lcom/facebook/ads/redexgen/X/1i;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1i;->AB5(Lcom/facebook/ads/AdError;)V

    .line 70277
    :goto_0
    return-void

    .line 70278
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bn;->A01(Z)V

    goto :goto_0
.end method

.method public final A9n()V
    .locals 1

    .line 70279
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bn;->A01(Z)V

    .line 70280
    return-void
.end method

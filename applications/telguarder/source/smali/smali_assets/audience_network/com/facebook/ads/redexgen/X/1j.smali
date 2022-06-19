.class public final Lcom/facebook/ads/redexgen/X/1j;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableWebViewClient"
.end annotation


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/1U;

.field public final A02:Lcom/facebook/ads/redexgen/X/1i;

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/1i;Z)V
    .locals 1

    .line 3641
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 3642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:Z

    .line 3643
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1j;->A01:Lcom/facebook/ads/redexgen/X/1U;

    .line 3644
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Lcom/facebook/ads/redexgen/X/1i;

    .line 3645
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/1j;->A03:Z

    .line 3646
    return-void
.end method

.method private A00()V
    .locals 2

    .line 3647
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A03:Z

    if-eqz v0, :cond_0

    .line 3648
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Lcom/facebook/ads/redexgen/X/1i;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1i;->AB5(Lcom/facebook/ads/AdError;)V

    .line 3649
    :goto_0
    return-void

    .line 3650
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1j;->A01()V

    goto :goto_0
.end method

.method private A01()V
    .locals 1

    .line 3651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Lcom/facebook/ads/redexgen/X/1i;

    if-eqz v0, :cond_0

    .line 3652
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1i;->AB6()V

    .line 3653
    :cond_0
    return-void
.end method

.method private A02(Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 3654
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1j;->A00()V

    .line 3655
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1j;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 3656
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1j;->A02(Landroid/webkit/WebResourceError;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 3657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:Z

    .line 3658
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1j;->A01()V

    .line 3659
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 3660
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3661
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/bm;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/bm;-><init>(Lcom/facebook/ads/redexgen/X/1j;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A01:Lcom/facebook/ads/redexgen/X/1U;

    .line 3662
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A08()I

    move-result v0

    int-to-long v0, v0

    .line 3663
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3664
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 3665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:Z

    .line 3666
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/1j;->A02(Landroid/webkit/WebResourceError;)V

    .line 3667
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 3668
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A2N:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NN;->A03(I)V

    .line 3669
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1j;->A00()V

    .line 3670
    const/4 v0, 0x1

    return v0
.end method

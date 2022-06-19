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

    .line 3535
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 3536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:Z

    .line 3537
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1j;->A01:Lcom/facebook/ads/redexgen/X/1U;

    .line 3538
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Lcom/facebook/ads/redexgen/X/1i;

    .line 3539
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/1j;->A03:Z

    .line 3540
    return-void
.end method

.method private A00()V
    .locals 2

    .line 3541
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A03:Z

    if-eqz v0, :cond_0

    .line 3542
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Lcom/facebook/ads/redexgen/X/1i;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1i;->AB5(Lcom/facebook/ads/AdError;)V

    .line 3543
    :goto_0
    return-void

    .line 3544
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1j;->A01()V

    goto :goto_0
.end method

.method private A01()V
    .locals 1

    .line 3545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A02:Lcom/facebook/ads/redexgen/X/1i;

    if-eqz v0, :cond_0

    .line 3546
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1i;->AB6()V

    .line 3547
    :cond_0
    return-void
.end method

.method private A02(Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 3548
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1j;->A00()V

    .line 3549
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1j;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 3550
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1j;->A02(Landroid/webkit/WebResourceError;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 3551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:Z

    .line 3552
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1j;->A01()V

    .line 3553
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 3554
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3555
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/SC;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/SC;-><init>(Lcom/facebook/ads/redexgen/X/1j;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A01:Lcom/facebook/ads/redexgen/X/1U;

    .line 3556
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A09()I

    move-result v0

    int-to-long v0, v0

    .line 3557
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3558
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 3559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1j;->A00:Z

    .line 3560
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/1j;->A02(Landroid/webkit/WebResourceError;)V

    .line 3561
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 3562
    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A2K:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A03(I)V

    .line 3563
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1j;->A00()V

    .line 3564
    const/4 v0, 0x1

    return v0
.end method

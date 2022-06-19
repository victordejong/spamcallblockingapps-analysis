.class public final Lcom/facebook/ads/redexgen/X/Xb;
.super Lcom/facebook/ads/redexgen/X/NS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/OS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicWebView"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OS;Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 2

    .line 58053
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xb;->A00:Lcom/facebook/ads/redexgen/X/OS;

    .line 58054
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 58055
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Xb;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 58056
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Xb;->setBackgroundColor(I)V

    .line 58057
    return-void
.end method


# virtual methods
.method public final A0D()Landroid/webkit/WebChromeClient;
    .locals 3

    .line 58058
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Xb;->A00:Lcom/facebook/ads/redexgen/X/OS;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/ON;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ON;-><init>(Lcom/facebook/ads/redexgen/X/OS;Lcom/facebook/ads/redexgen/X/Xc;)V

    return-object v0
.end method

.method public final A0E()Landroid/webkit/WebViewClient;
    .locals 3

    .line 58059
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Xb;->A00:Lcom/facebook/ads/redexgen/X/OS;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/OO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/OO;-><init>(Lcom/facebook/ads/redexgen/X/OS;Lcom/facebook/ads/redexgen/X/Xc;)V

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xb;->A00:Lcom/facebook/ads/redexgen/X/OS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OS;->A05(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/La;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 58061
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Xb;->requestDisallowInterceptTouchEvent(Z)V

    .line 58062
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NS;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

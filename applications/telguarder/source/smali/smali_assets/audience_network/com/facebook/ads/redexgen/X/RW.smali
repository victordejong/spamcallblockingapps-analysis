.class public final Lcom/facebook/ads/redexgen/X/RW;
.super Lcom/facebook/ads/redexgen/X/NN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicWebView"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ON;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 50123
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RW;->A00:Lcom/facebook/ads/redexgen/X/ON;

    .line 50124
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/NN;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 50125
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RW;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 50126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RW;->setBackgroundColor(I)V

    .line 50127
    return-void
.end method


# virtual methods
.method public final A0E()Landroid/webkit/WebChromeClient;
    .locals 3

    .line 50128
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RW;->A00:Lcom/facebook/ads/redexgen/X/ON;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/OI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/OI;-><init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/RX;)V

    return-object v0
.end method

.method public final A0F()Landroid/webkit/WebViewClient;
    .locals 3

    .line 50129
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RW;->A00:Lcom/facebook/ads/redexgen/X/ON;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/OJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/OJ;-><init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/RX;)V

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 50130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Lc;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 50131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RW;->requestDisallowInterceptTouchEvent(Z)V

    .line 50132
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NN;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

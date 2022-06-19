.class public abstract Lcom/facebook/ads/redexgen/X/NN;
.super Landroid/webkit/WebView;
.source ""


# static fields
.field public static A01:[B

.field public static final A02:Ljava/lang/String;


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 45062
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NN;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/NN;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NN;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 45063
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 45064
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NN;->A01()V

    .line 45065
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 45066
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 45067
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NN;->A01()V

    .line 45068
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NN;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 4

    .line 45069
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NN;->A0E()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NN;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 45070
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NN;->A0F()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NN;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 45071
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NT;->A04(Landroid/webkit/WebView;)V

    .line 45072
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NN;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 45073
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NN;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 45074
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 45075
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NN;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 45076
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45077
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_1

    .line 45078
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/NN;->setWebContentsDebuggingEnabled(Z)V

    .line 45079
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/NN;->setHorizontalScrollBarEnabled(Z)V

    .line 45080
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/NN;->setHorizontalScrollbarOverlay(Z)V

    .line 45081
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/NN;->setVerticalScrollBarEnabled(Z)V

    .line 45082
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/NN;->setVerticalScrollbarOverlay(Z)V

    .line 45083
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_2

    .line 45084
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45085
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/NN;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45086
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NN;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1ft
        -0x4t
        0x4t
        0x7t
        0x0t
        -0x1t
        -0x45t
        0xft
        0xat
        -0x45t
        0x4t
        0x9t
        0x4t
        0xft
        0x4t
        -0x4t
        0x7t
        0x4t
        0x15t
        0x0t
        -0x45t
        -0x22t
        0xat
        0xat
        0x6t
        0x4t
        0x0t
        -0x18t
        -0x4t
        0x9t
        -0x4t
        0x2t
        0x0t
        0xdt
        -0x37t
        -0x46t
        -0x47t
        -0x7dt
        -0x3at
        -0x2bt
        -0x3ct
        -0x2at
        -0x35t
        -0x38t
        -0x39t
        0x3ft
        0x36t
        0x4bt
        0x36t
        0x48t
        0x38t
        0x47t
        0x3et
        0x45t
        0x49t
        0xft
        -0x4t
        -0x16t
        -0x19t
        -0x1ct
        -0x5t
        -0x12t
        -0x16t
        -0x4t
    .end array-data
.end method

.method public static A03(I)V
    .locals 5

    .line 45087
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8C;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 45088
    .local p0, "context":Lcom/facebook/ads/redexgen/X/Wl;
    if-eqz v0, :cond_0

    .line 45089
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    const/16 v2, 0x23

    const/16 v1, 0xa

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NN;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 45090
    const/16 v2, 0x38

    const/16 v1, 0x8

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p0, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 45091
    :cond_0
    return-void
.end method

.method private A04(Ljava/lang/String;)V
    .locals 4

    .line 45092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    const/16 v1, 0xb

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NN;->loadUrl(Ljava/lang/String;)V

    .line 45093
    return-void
.end method


# virtual methods
.method public final A05(Ljava/lang/String;)V
    .locals 2

    .line 45094
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 45095
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/NN;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 45096
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NN;->A04(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45097
    .local p0, "ise":Ljava/lang/IllegalStateException;
    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NN;->A04(Ljava/lang/String;)V

    .line 45098
    .end local p0    # "ise":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 45099
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NN;->A00:Z

    return v0
.end method

.method public A0E()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 45100
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-object v0
.end method

.method public A0F()Landroid/webkit/WebViewClient;
    .locals 1

    .line 45101
    new-instance v0, Lcom/facebook/ads/redexgen/X/NM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NM;-><init>(Lcom/facebook/ads/redexgen/X/NN;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 45102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NN;->A00:Z

    .line 45103
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 45104
    return-void
.end method

.class public abstract Lcom/facebook/ads/redexgen/X/NS;
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

    .line 45108
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NS;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/NS;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NS;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 45109
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 45110
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NS;->A01()V

    .line 45111
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 45112
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 45113
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NS;->A01()V

    .line 45114
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NS;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x69

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

    .line 45115
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NS;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 45116
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NS;->A0E()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 45117
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NY;->A05(Landroid/webkit/WebView;)V

    .line 45118
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NS;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 45119
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NS;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 45120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 45121
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NS;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 45122
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_1

    .line 45124
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/NS;->setWebContentsDebuggingEnabled(Z)V

    .line 45125
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/NS;->setHorizontalScrollBarEnabled(Z)V

    .line 45126
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/NS;->setHorizontalScrollbarOverlay(Z)V

    .line 45127
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/NS;->setVerticalScrollBarEnabled(Z)V

    .line 45128
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/NS;->setVerticalScrollbarOverlay(Z)V

    .line 45129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_2

    .line 45130
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45131
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/NS;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45132
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

    sput-object v0, Lcom/facebook/ads/redexgen/X/NS;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        0x70t
        0x78t
        0x7dt
        0x74t
        0x75t
        0x31t
        0x65t
        0x7et
        0x31t
        0x78t
        0x7ft
        0x78t
        0x65t
        0x78t
        0x70t
        0x7dt
        0x78t
        0x6bt
        0x74t
        0x31t
        0x52t
        0x7et
        0x7et
        0x7at
        0x78t
        0x74t
        0x5ct
        0x70t
        0x7ft
        0x70t
        0x76t
        0x74t
        0x63t
        0x3ft
        0x5ct
        0x5dt
        0x2bt
        0x68t
        0x79t
        0x6at
        0x78t
        0x63t
        0x6et
        0x6ft
        0x1bt
        0x10t
        0x7t
        0x10t
        0x2t
        0x12t
        0x3t
        0x18t
        0x1t
        0x5t
        0x4bt
        0x52t
        0x40t
        0x47t
        0x7at
        0x53t
        0x4ct
        0x40t
        0x52t
    .end array-data
.end method

.method public static A03(I)V
    .locals 5

    .line 45133
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8C;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    .line 45134
    .local p0, "context":Lcom/facebook/ads/redexgen/X/XK;
    if-eqz v0, :cond_0

    .line 45135
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    const/16 v2, 0x23

    const/16 v1, 0xa

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 45136
    const/16 v2, 0x38

    const/16 v1, 0x8

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p0, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 45137
    :cond_0
    return-void
.end method

.method private A04(Ljava/lang/String;)V
    .locals 4

    .line 45138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    const/16 v1, 0xb

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NS;->loadUrl(Ljava/lang/String;)V

    .line 45139
    return-void
.end method


# virtual methods
.method public final A05(Ljava/lang/String;)V
    .locals 2

    .line 45140
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 45141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/NS;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 45142
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NS;->A04(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45143
    .local p0, "ise":Ljava/lang/IllegalStateException;
    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NS;->A04(Ljava/lang/String;)V

    .line 45144
    .end local p0    # "ise":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 45145
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A00:Z

    return v0
.end method

.method public A0D()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 45146
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-object v0
.end method

.method public A0E()Landroid/webkit/WebViewClient;
    .locals 1

    .line 45147
    new-instance v0, Lcom/facebook/ads/redexgen/X/NR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NR;-><init>(Lcom/facebook/ads/redexgen/X/NS;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 45148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NS;->A00:Z

    .line 45149
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 45150
    return-void
.end method

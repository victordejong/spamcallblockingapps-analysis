.class public Lcom/amazon/device/ads/DTBAdViewSupportClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "DTBAdViewSupportClient"


# instance fields
.field b:Landroid/content/Context;

.field c:Lcom/amazon/device/ads/DTBAdMRAIDController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdMRAIDController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->b:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "image/png"

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 84
    :catch_0
    sget-object v0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed to get injection response: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    .line 132
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 136
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.mobile.shopping.web"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "android.intent.action.VIEW"

    if-eqz v2, :cond_0

    const-string v2, "//"

    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x2

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->j()V

    return v3

    :cond_0
    :try_start_0
    const-string v2, "com.amazon.mobile.shopping"

    .line 150
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.amazon.mShop.android.shopping"

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 155
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 158
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "products/"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "https://www.amazon.com/dp/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    move-object p1, v1

    .line 167
    :goto_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 168
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->j()V

    return v3

    :cond_3
    const-string p1, "market"

    .line 170
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "amzn"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 187
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 190
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->j()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    return v3

    .line 172
    :cond_5
    :goto_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 174
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 175
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->j()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 179
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DTBAdUtil;->a(Lcom/amazon/device/ads/DTBAdMRAIDController;Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return v3

    .line 182
    :catch_1
    :try_start_3
    sget-object p1, Lcom/amazon/device/ads/DTBAdViewSupportClient;->a:Ljava/lang/String;

    const-string v0, "App stores and browsers not found"

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 194
    :catch_2
    sget-object p1, Lcom/amazon/device/ads/DTBAdViewSupportClient;->a:Ljava/lang/String;

    const-string v0, "Activity not found com.amazon.mobile.shopping"

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 128
    sget-object p1, Lcom/amazon/device/ads/DTBAdViewSupportClient;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Load Resource:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 103
    sget-object v0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Page finished:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    instance-of p1, p1, Lcom/amazon/device/ads/DTBAdView;

    if-eqz p1, :cond_1

    const-string p1, "MRAID_ENV"

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c()V

    return-void

    :cond_0
    const-string p1, "https://c.amazon-adsystem.com/"

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c()V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 203
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 204
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->l()V

    return-void

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->m()V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 47
    sget-object v0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Should intercept Resource url: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1060
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x2f

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdViewSupportClient;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdViewSupportClient;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 1675
    iget-boolean p1, p1, Lcom/amazon/device/ads/DTBAdMRAIDController;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/DTBAdViewSupportClient;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

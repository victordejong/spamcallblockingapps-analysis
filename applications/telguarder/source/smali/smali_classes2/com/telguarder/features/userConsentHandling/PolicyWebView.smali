.class public Lcom/telguarder/features/userConsentHandling/PolicyWebView;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PolicyWebView.java"


# static fields
.field private static mUrl:Ljava/lang/String;


# instance fields
.field public loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

.field private mRequestStartTime:J

.field private webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->mRequestStartTime:J

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 99
    new-instance v0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;-><init>(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)V

    iput-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->webViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)Ljava/util/Map;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->getCustomHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->handleOpenFinished()V

    return-void
.end method

.method private getCustomHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-static {p0}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-DeviceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private handleOpenFinished()V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPolicyPageOpenError(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->mRequestStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPolicyPageOpenSuccess(J)V

    :goto_1
    return-void
.end method

.method public static openPolicy(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 46
    :cond_0
    sput-object p1, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->mUrl:Ljava/lang/String;

    .line 47
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private setupWebView()V
    .locals 3

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->mRequestStartTime:J

    const v0, 0x7f0802d6

    .line 86
    invoke-virtual {p0, v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/telguarder/helpers/web/LollipopFixedWebView;

    iput-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    .line 87
    iget-object v1, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    sget-object v1, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->mUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->getCustomHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->goBack()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->finish()V

    .line 78
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->setRequestedOrientation(I)V

    const v0, 0x7f0b009c

    .line 55
    invoke-virtual {p0, v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->setContentView(I)V

    const v0, 0x7f0802d7

    .line 56
    invoke-virtual {p0, v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 57
    invoke-direct {p0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->setupWebView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 68
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

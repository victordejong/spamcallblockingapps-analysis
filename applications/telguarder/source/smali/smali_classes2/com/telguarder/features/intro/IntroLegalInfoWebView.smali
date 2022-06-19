.class public Lcom/telguarder/features/intro/IntroLegalInfoWebView;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "IntroLegalInfoWebView.java"


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

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->mRequestStartTime:J

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 98
    new-instance v0, Lcom/telguarder/features/intro/IntroLegalInfoWebView$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/intro/IntroLegalInfoWebView$1;-><init>(Lcom/telguarder/features/intro/IntroLegalInfoWebView;)V

    iput-object v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->webViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/intro/IntroLegalInfoWebView;)Ljava/util/Map;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->getCustomHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/intro/IntroLegalInfoWebView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->handleOpenFinished()V

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

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-static {p0}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-DeviceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private handleOpenFinished()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLegalInfoPageOpenError(Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->mRequestStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLegalInfoPageOpenSuccess(J)V

    :goto_1
    return-void
.end method

.method public static openLegalInfo(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 45
    :cond_0
    sput-object p1, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->mUrl:Ljava/lang/String;

    .line 46
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private setupWebView()V
    .locals 3

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->mRequestStartTime:J

    const v0, 0x7f0802d6

    .line 85
    invoke-virtual {p0, v0}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/telguarder/helpers/web/LollipopFixedWebView;

    iput-object v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    .line 86
    iget-object v1, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    sget-object v1, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->mUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->getCustomHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->goBack()V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->finish()V

    .line 77
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b00c9

    .line 53
    invoke-virtual {p0, p1}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->setContentView(I)V

    const p1, 0x7f0802d7

    .line 54
    invoke-virtual {p0, p1}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 55
    invoke-direct {p0}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->setupWebView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

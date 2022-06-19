.class public Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AnalyzeActivity.java"


# static fields
.field private static mCached:Z = true

.field private static mUrl:Ljava/lang/String;


# instance fields
.field public loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

.field private mRequestStartTime:J

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->mRequestStartTime:J

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 117
    new-instance v0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity$2;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity$2;-><init>(Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->webViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;)Ljava/util/Map;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->getCustomHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->handleOpenFinished()V

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

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-static {p0}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-DeviceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private handleOpenFinished()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAnalysePageOpenError(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->mRequestStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAnalysePageOpenSuccess(J)V

    :goto_1
    return-void
.end method

.method public static openAnalyze(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1

    .line 46
    sput-object p2, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->mUrl:Ljava/lang/String;

    .line 47
    sput-boolean p3, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->mCached:Z

    .line 48
    const-class p2, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;

    sget-object p3, Lcom/telguarder/helpers/ui/UiHelper$PageType;->ANALYZE:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/telguarder/helpers/ui/UiHelper;->openMainFeatureActivity(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/Class;Lcom/telguarder/helpers/ui/UiHelper$PageType;Z)V

    return-void
.end method

.method private setupWebView()V
    .locals 3

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->mRequestStartTime:J

    const v0, 0x7f080062

    .line 94
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/telguarder/helpers/web/LollipopFixedWebView;

    iput-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    .line 95
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-boolean v1, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->mCached:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    new-instance v1, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity$1;-><init>(Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;)V

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    sget-object v1, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->mUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->getCustomHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->webView:Lcom/telguarder/helpers/web/LollipopFixedWebView;

    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->goBack()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->finish()V

    .line 86
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001d

    .line 56
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->setContentView(I)V

    const v0, 0x7f080060

    .line 57
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f080089

    .line 58
    invoke-virtual {p0, v2}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 59
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->setCircularActivityTransition(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Landroid/view/View;)V

    const p1, 0x7f080061

    .line 60
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f1001a2

    .line 61
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;I)V

    .line 62
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->setupWebView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 76
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

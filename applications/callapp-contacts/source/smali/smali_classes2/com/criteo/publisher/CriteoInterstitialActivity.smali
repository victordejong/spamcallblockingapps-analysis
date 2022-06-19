.class public Lcom/criteo/publisher/CriteoInterstitialActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/CriteoInterstitialActivity$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/os/ResultReceiver;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->a:Lcom/criteo/publisher/logging/g;

    return-void
.end method

.method private a()V
    .locals 3

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Action"

    const/16 v2, 0xc9

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/CriteoInterstitialActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/criteo/publisher/CriteoInterstitialActivity;)V
    .locals 3

    .line 1105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Action"

    const/16 v2, 0xca

    .line 1106
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1107
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "webviewdata"

    .line 56
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2065
    sget p1, Lcom/criteo/publisher/a$b;->activity_criteo_interstitial:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 2066
    sget p1, Lcom/criteo/publisher/a$a;->AdLayout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->d:Landroid/widget/FrameLayout;

    .line 2074
    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    .line 2075
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->d:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 2077
    sget p1, Lcom/criteo/publisher/a$a;->closeButton:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 2079
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2080
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2081
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "resultreceiver"

    .line 2082
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    const-string v0, "callingactivity"

    .line 2083
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->e:Landroid/content/ComponentName;

    .line 2126
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2128
    new-instance v0, Lcom/criteo/publisher/CriteoInterstitialActivity$b;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/CriteoInterstitialActivity$b;-><init>(Ljava/lang/ref/WeakReference;Lcom/criteo/publisher/CriteoInterstitialActivity$a;)V

    .line 2132
    new-instance v1, Lcom/criteo/publisher/b/a;

    iget-object v2, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->e:Landroid/content/ComponentName;

    invoke-direct {v1, v0, v2}, Lcom/criteo/publisher/b/a;-><init>(Lcom/criteo/publisher/b/c;Landroid/content/ComponentName;)V

    .line 2137
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3121
    iget-object v3, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    const-string v4, "https://criteo.com"

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const-string v8, "about:blank"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    :cond_0
    new-instance v0, Lcom/criteo/publisher/CriteoInterstitialActivity$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/CriteoInterstitialActivity$a;-><init>(Lcom/criteo/publisher/CriteoInterstitialActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 59
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 115
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 116
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 117
    iput-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    return-void
.end method

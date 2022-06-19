.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;
.super Lcom/kedlin/cca/ui/CCAFragmentActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;,
        Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ProgressBar;

.field public b:Landroid/os/Handler;

.field public c:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic A(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->a:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic C(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->c:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic D(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->c:Landroid/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lfa1$e;->j()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->C:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->finish()V

    :cond_1
    const v1, 0x1030073

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x53

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0025

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x7f0a007e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;

    invoke-direct {v2, p0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)V

    const-string v3, "CallControl"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const p1, 0x7f0a007d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$a;

    invoke-direct {p1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$b;

    invoke-direct {p1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const p1, 0x7f0a007c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$c;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lr71$a;->r0:Lr71$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lr71$a;->r1:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->g()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

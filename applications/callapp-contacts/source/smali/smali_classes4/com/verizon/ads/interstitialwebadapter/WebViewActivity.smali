.class public Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;
.super Lcom/verizon/ads/support/VASActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;
    }
.end annotation


# static fields
.field private static final c:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->c:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/verizon/ads/support/VASActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->finish()V

    :cond_0
    return-void
.end method

.method public static launch(Landroid/content/Context;Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;)V
    .locals 1

    .line 30
    const-class v0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;

    invoke-static {p0, v0, p1}, Lcom/verizon/ads/support/VASActivity;->launch(Landroid/content/Context;Ljava/lang/Class;Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)V

    return-void
.end method


# virtual methods
.method final a()Landroid/view/ViewGroup;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 43
    invoke-super {p0, p1}, Lcom/verizon/ads/support/VASActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object p1, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    check-cast p1, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;

    if-eqz p1, :cond_3

    .line 47
    invoke-static {p1}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;->a(Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;->a(Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    sget-object p1, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->c:Lcom/verizon/ads/Logger;

    const-string v0, "interstitialWebAdapter was released. Closing ad."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->b()V

    return-void

    .line 63
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->b:Landroid/view/ViewGroup;

    .line 64
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->b:Landroid/view/ViewGroup;

    const-string v1, "webview_activity_root_view"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->b:Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->b:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-static {p1}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;->a(Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    move-result-object v4

    .line 1416
    iget-object v8, v4, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    .line 1428
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v4, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->b:Ljava/lang/ref/WeakReference;

    .line 1430
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1433
    iget-object p1, v4, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    invoke-virtual {p1}, Lcom/verizon/ads/webcontroller/WebController;->getVASAdsMRAIDWebView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1436
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a:Ljava/lang/String;

    const/4 v1, -0x3

    const-string v2, "Could not attach WebView. Verizon ad view provided by controller was null."

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onError(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 1442
    :cond_2
    new-instance p1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;-><init>(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 48
    :cond_3
    :goto_0
    sget-object p1, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->c:Lcom/verizon/ads/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interstitialWebAdapter cannot be null, aborting activity launch <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 2087
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    if-eqz v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    check-cast v0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;

    invoke-static {v0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;->a(Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    move-result-object v0

    .line 2469
    iget-object v1, v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v1, :cond_0

    .line 2470
    iget-object v0, v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onClosed()V

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/verizon/ads/support/VASActivity;->onDestroy()V

    return-void
.end method

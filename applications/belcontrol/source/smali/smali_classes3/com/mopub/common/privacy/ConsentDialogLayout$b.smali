.class public Lcom/mopub/common/privacy/ConsentDialogLayout$b;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/ConsentDialogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/ConsentDialogLayout;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->i(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->i(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$d;

    move-result-object v0

    sget v1, Lcom/mopub/common/privacy/ConsentDialogLayout;->v:I

    invoke-interface {v0, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout$d;->onLoadProgress(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->i(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->i(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/mopub/common/privacy/ConsentDialogLayout$d;->onLoadProgress(I)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    :goto_0
    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "mopub://consent?yes"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->h(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->h(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$c;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-interface {p1, p2}, Lcom/mopub/common/privacy/ConsentDialogLayout$c;->onConsentClick(Lcom/mopub/common/privacy/ConsentStatus;)V

    :cond_0
    return v1

    :cond_1
    const-string v0, "mopub://consent?no"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->h(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->h(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$c;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-interface {p1, p2}, Lcom/mopub/common/privacy/ConsentDialogLayout$c;->onConsentClick(Lcom/mopub/common/privacy/ConsentStatus;)V

    :cond_2
    return v1

    :cond_3
    const-string v0, "mopub://close"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->h(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$c;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->h(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentDialogLayout$c;->onCloseClick()V

    :cond_4
    return v1

    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$b;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open native browser for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mopub/common/util/Intents;->launchActionViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

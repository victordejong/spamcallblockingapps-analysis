.class public final Lcom/google/android/gms/internal/ads/acl;
.super Landroid/webkit/WebChromeClient;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    .line 3
    return-void
.end method

.method private static a(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/act;

    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    check-cast p0, Lcom/google/android/gms/internal/ads/act;

    .line 103
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/act;->f()Landroid/app/Activity;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aef;->a()Lcom/google/android/gms/ads/internal/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aef;->a()Lcom/google/android/gms/ads/internal/c;

    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "window."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/c;->a(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 11
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13
    if-eqz p8, :cond_1

    .line 15
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v4, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 22
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/google/android/gms/internal/ads/acr;

    invoke-direct {v3, p7, v4}, Lcom/google/android/gms/internal/ads/acr;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/google/android/gms/internal/ads/aco;

    invoke-direct {v3, p7}, Lcom/google/android/gms/internal/ads/aco;-><init>(Landroid/webkit/JsPromptResult;)V

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/acp;

    invoke-direct {v2, p7}, Lcom/google/android/gms/internal/ads/acp;-><init>(Landroid/webkit/JsPromptResult;)V

    .line 27
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    const-string/jumbo v2, "Fail to display Dialog."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 33
    :cond_1
    :try_start_1
    invoke-virtual {v1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/google/android/gms/internal/ads/acm;

    invoke-direct {v3, p6}, Lcom/google/android/gms/internal/ads/acm;-><init>(Landroid/webkit/JsResult;)V

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/google/android/gms/internal/ads/acn;

    invoke-direct {v3, p6}, Lcom/google/android/gms/internal/ads/acn;-><init>(Landroid/webkit/JsResult;)V

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/ack;

    invoke-direct {v2, p6}, Lcom/google/android/gms/internal/ads/ack;-><init>(Landroid/webkit/JsResult;)V

    .line 36
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 50
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/act;

    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "Tried to close a WebView that wasn\'t an AdWebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    const-string/jumbo v0, "Tried to close an AdWebView not associated with an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a()V

    goto :goto_0
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5

    .prologue
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "JS: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "Application Cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 75
    :goto_0
    return v0

    .line 65
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/acq;->a:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 75
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0

    .line 66
    :pswitch_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :pswitch_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :pswitch_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :pswitch_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3

    .prologue
    .line 43
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 44
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->w()Landroid/webkit/WebViewClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->w()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 47
    :cond_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 48
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public final onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 5

    .prologue
    .line 76
    const-wide/32 v0, 0x500000

    sub-long/2addr v0, p7

    .line 77
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 78
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 93
    :goto_0
    return-void

    .line 80
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    .line 81
    cmp-long v0, p5, v0

    if-gtz v0, :cond_1

    const-wide/32 v0, 0x100000

    cmp-long v0, p5, v0

    if-gtz v0, :cond_1

    .line 92
    :goto_1
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0

    .line 83
    :cond_1
    const-wide/16 p5, 0x0

    goto :goto_1

    .line 84
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_4

    .line 85
    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 86
    add-long/2addr v0, p3

    const-wide/32 v2, 0x100000

    .line 87
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_3
    :goto_2
    move-wide p5, p3

    .line 91
    goto :goto_1

    .line 89
    :cond_4
    const-wide/32 v2, 0x100000

    sub-long/2addr v2, p3

    .line 90
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 91
    cmp-long v0, p5, v0

    if-gtz v0, :cond_3

    add-long/2addr p3, p5

    goto :goto_2
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 133
    if-eqz p2, :cond_1

    .line 135
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    .line 136
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    .line 138
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 139
    :goto_0
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 140
    :cond_1
    return-void

    .line 138
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onHideCustomView()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    const-string/jumbo v0, "Could not get ad overlay when hiding custom view."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->b()V

    goto :goto_0
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 105
    .line 106
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/acl;->a(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "alert"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, v5

    .line 107
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/acl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 108
    .line 109
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/acl;->a(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "onBeforeUnload"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, v5

    .line 110
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/acl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 111
    .line 112
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/acl;->a(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "confirm"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, v5

    .line 113
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/acl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 9

    .prologue
    .line 114
    .line 115
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/acl;->a(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "prompt"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 116
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/acl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/google/android/gms/common/util/m;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/bc;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 157
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    .line 146
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    .line 147
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aef;->l()Lcom/google/android/gms/internal/ads/st;

    move-result-object v0

    if-nez v0, :cond_3

    .line 148
    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    .line 151
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aef;->l()Lcom/google/android/gms/internal/ads/st;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/st;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    array-length v1, v0

    if-lez v1, :cond_4

    .line 155
    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    goto :goto_0
.end method

.method public final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 5

    .prologue
    .line 117
    const-wide/32 v0, 0x500000

    sub-long/2addr v0, p3

    .line 118
    const-wide/32 v2, 0x20000

    add-long/2addr v2, p1

    .line 119
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 120
    const-wide/16 v0, 0x0

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acl;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    const-string/jumbo v0, "Could not get ad overlay when showing custom view."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 128
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 131
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/c;->a(I)V

    goto :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/acl;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 124
    return-void
.end method

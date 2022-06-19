.class final Lcom/facebook/internal/ag$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/ag;


# direct methods
.method private constructor <init>(Lcom/facebook/internal/ag;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/ag;Lcom/facebook/internal/ag$1;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1}, Lcom/facebook/internal/ag$b;-><init>(Lcom/facebook/internal/ag;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 696
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 697
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-static {p1}, Lcom/facebook/internal/ag;->b(Lcom/facebook/internal/ag;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 698
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-static {p1}, Lcom/facebook/internal/ag;->c(Lcom/facebook/internal/ag;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 704
    :cond_0
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-static {p1}, Lcom/facebook/internal/ag;->d(Lcom/facebook/internal/ag;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 705
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-static {p1}, Lcom/facebook/internal/ag;->e(Lcom/facebook/internal/ag;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 706
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-static {p1}, Lcom/facebook/internal/ag;->f(Lcom/facebook/internal/ag;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-static {p1}, Lcom/facebook/internal/ag;->g(Lcom/facebook/internal/ag;)Z

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 687
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Webview loading URL: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 688
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 689
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-static {p1}, Lcom/facebook/internal/ag;->b(Lcom/facebook/internal/ag;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 690
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-static {p1}, Lcom/facebook/internal/ag;->c(Lcom/facebook/internal/ag;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 669
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    new-instance v0, Lcom/facebook/FacebookDialogException;

    invoke-direct {v0, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/facebook/internal/ag;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 678
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 680
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 681
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    new-instance p2, Lcom/facebook/FacebookDialogException;

    const/4 p3, 0x0

    const/16 v0, -0xb

    invoke-direct {p2, p3, v0, p3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/facebook/internal/ag;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 605
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Redirect URL: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 606
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 608
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^/(v\\d+\\.\\d+/)??dialog/.*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 611
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-static {v0}, Lcom/facebook/internal/ag;->a(Lcom/facebook/internal/ag;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 612
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-virtual {p1, p2}, Lcom/facebook/internal/ag;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "error"

    .line 614
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "error_type"

    .line 616
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v0, "error_msg"

    .line 619
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "error_message"

    .line 621
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "error_description"

    .line 624
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "error_code"

    .line 626
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_4

    .line 630
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    const/4 v1, -0x1

    .line 636
    :goto_1
    invoke-static {p2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 637
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v1, v4, :cond_5

    .line 639
    iget-object p2, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    .line 1504
    iget-object v0, p2, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ag$c;

    if-eqz v0, :cond_9

    iget-boolean v0, p2, Lcom/facebook/internal/ag;->b:Z

    if-nez v0, :cond_9

    .line 1505
    iput-boolean v2, p2, Lcom/facebook/internal/ag;->b:Z

    .line 1506
    iget-object v0, p2, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ag$c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/internal/ag$c;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 1507
    invoke-virtual {p2}, Lcom/facebook/internal/ag;->dismiss()V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    const-string p1, "access_denied"

    .line 641
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "OAuthAccessDeniedException"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 642
    :cond_6
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-virtual {p1}, Lcom/facebook/internal/ag;->cancel()V

    goto :goto_2

    :cond_7
    const/16 p1, 0x1069

    if-ne v1, p1, :cond_8

    .line 644
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-virtual {p1}, Lcom/facebook/internal/ag;->cancel()V

    goto :goto_2

    .line 646
    :cond_8
    new-instance p1, Lcom/facebook/FacebookRequestError;

    invoke-direct {p1, v1, p2, v0}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object p2, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    new-instance v1, Lcom/facebook/FacebookServiceException;

    invoke-direct {v1, p1, v0}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/facebook/internal/ag;->a(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    return v2

    :cond_a
    const-string v0, "fbconnect://cancel"

    .line 651
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 652
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-virtual {p1}, Lcom/facebook/internal/ag;->cancel()V

    return v2

    :cond_b
    if-nez p1, :cond_d

    const-string p1, "touch"

    .line 654
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 659
    :cond_c
    :try_start_1
    iget-object p1, p0, Lcom/facebook/internal/ag$b;->a:Lcom/facebook/internal/ag;

    invoke-virtual {p1}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    :cond_d
    :goto_3
    return v1
.end method

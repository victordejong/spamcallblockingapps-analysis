.class Lcom/facebook/internal/z$b;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/z;


# direct methods
.method private constructor <init>(Lcom/facebook/internal/z;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/z;Lcom/facebook/internal/z$1;)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/facebook/internal/z$b;-><init>(Lcom/facebook/internal/z;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 662
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->b(Lcom/facebook/internal/z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->c(Lcom/facebook/internal/z;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->d(Lcom/facebook/internal/z;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 671
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->e(Lcom/facebook/internal/z;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->f(Lcom/facebook/internal/z;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/internal/z;->a(Lcom/facebook/internal/z;Z)Z

    .line 674
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 653
    const-string/jumbo v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 655
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->b(Lcom/facebook/internal/z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->c(Lcom/facebook/internal/z;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 658
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 635
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/z;->a(Ljava/lang/Throwable;)V

    .line 637
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 644
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 646
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 647
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/z;->a(Ljava/lang/Throwable;)V

    .line 649
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 577
    const-string/jumbo v1, "FacebookSDK.WebDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Redirect URL: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-static {v1}, Lcom/facebook/internal/z;->a(Lcom/facebook/internal/z;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 579
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-virtual {v0, p2}, Lcom/facebook/internal/z;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 581
    const-string/jumbo v0, "error"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    if-nez v0, :cond_0

    .line 583
    const-string/jumbo v0, "error_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_0
    const-string/jumbo v1, "error_msg"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    if-nez v1, :cond_1

    .line 588
    const-string/jumbo v1, "error_message"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    :cond_1
    if-nez v1, :cond_2

    .line 591
    const-string/jumbo v1, "error_description"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    :cond_2
    const-string/jumbo v2, "error_code"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v2}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 597
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 603
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 604
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v2, v3, :cond_4

    .line 605
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-virtual {v0, v5}, Lcom/facebook/internal/z;->a(Landroid/os/Bundle;)V

    :goto_1
    move v0, v4

    .line 628
    :cond_3
    :goto_2
    return v0

    .line 598
    :catch_0
    move-exception v2

    move v2, v3

    .line 599
    goto :goto_0

    .line 606
    :cond_4
    if-eqz v0, :cond_6

    const-string/jumbo v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "OAuthAccessDeniedException"

    .line 607
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 608
    :cond_5
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-virtual {v0}, Lcom/facebook/internal/z;->cancel()V

    goto :goto_1

    .line 609
    :cond_6
    const/16 v3, 0x1069

    if-ne v2, v3, :cond_7

    .line 610
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-virtual {v0}, Lcom/facebook/internal/z;->cancel()V

    goto :goto_1

    .line 612
    :cond_7
    new-instance v3, Lcom/facebook/i;

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/i;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    new-instance v2, Lcom/facebook/FacebookServiceException;

    invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/i;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/facebook/internal/z;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 616
    :cond_8
    const-string/jumbo v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 617
    iget-object v0, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-virtual {v0}, Lcom/facebook/internal/z;->cancel()V

    move v0, v4

    .line 618
    goto :goto_2

    .line 619
    :cond_9
    const-string/jumbo v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 624
    :try_start_1
    iget-object v1, p0, Lcom/facebook/internal/z$b;->a:Lcom/facebook/internal/z;

    invoke-virtual {v1}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    .line 625
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 624
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    .line 626
    goto :goto_2

    .line 627
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_0
.end method

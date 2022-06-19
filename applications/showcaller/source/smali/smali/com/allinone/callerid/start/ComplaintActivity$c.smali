.class Lcom/allinone/callerid/start/ComplaintActivity$c;
.super Landroid/webkit/WebViewClient;
.source "ComplaintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/ComplaintActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/ComplaintActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/ComplaintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/ComplaintActivity$c;->a:Lcom/allinone/callerid/start/ComplaintActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/start/ComplaintActivity$c;->a:Lcom/allinone/callerid/start/ComplaintActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/ComplaintActivity;->Y(Lcom/allinone/callerid/start/ComplaintActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/start/ComplaintActivity$c;->a:Lcom/allinone/callerid/start/ComplaintActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/ComplaintActivity;->X(Lcom/allinone/callerid/start/ComplaintActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/start/ComplaintActivity$c;->a:Lcom/allinone/callerid/start/ComplaintActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/ComplaintActivity;->Z(Lcom/allinone/callerid/start/ComplaintActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/start/ComplaintActivity$c;->a:Lcom/allinone/callerid/start/ComplaintActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/ComplaintActivity;->Y(Lcom/allinone/callerid/start/ComplaintActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/start/ComplaintActivity$c;->a:Lcom/allinone/callerid/start/ComplaintActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/ComplaintActivity;->Y(Lcom/allinone/callerid/start/ComplaintActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/start/ComplaintActivity$c;->a:Lcom/allinone/callerid/start/ComplaintActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/ComplaintActivity;->Z(Lcom/allinone/callerid/start/ComplaintActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

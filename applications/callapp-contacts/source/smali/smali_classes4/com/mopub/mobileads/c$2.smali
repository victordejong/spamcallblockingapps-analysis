.class final Lcom/mopub/mobileads/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/c;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/c;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mopub/mobileads/c$2;->a:Lcom/mopub/mobileads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    return-void
.end method

.method public final urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/mopub/mobileads/c$2;->a:Lcom/mopub/mobileads/c;

    invoke-static {p1}, Lcom/mopub/mobileads/c;->a(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/mopub/mobileads/c$2;->a:Lcom/mopub/mobileads/c;

    invoke-static {p1}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/mopub/mobileads/c$2;->a:Lcom/mopub/mobileads/c;

    invoke-static {p1}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClicked()V

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/c$2;->a:Lcom/mopub/mobileads/c;

    invoke-static {p1}, Lcom/mopub/mobileads/c;->a(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->onResetUserClick()V

    :cond_1
    return-void
.end method

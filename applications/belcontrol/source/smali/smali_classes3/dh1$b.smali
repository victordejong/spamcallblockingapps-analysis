.class public Ldh1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldh1;


# direct methods
.method public constructor <init>(Ldh1;)V
    .locals 0

    iput-object p1, p0, Ldh1$b;->a:Ldh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    iget-object p1, p0, Ldh1$b;->a:Ldh1;

    invoke-static {p1}, Ldh1;->a(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldh1$b;->a:Ldh1;

    invoke-static {p1}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldh1$b;->a:Ldh1;

    invoke-static {p1}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClicked()V

    :cond_0
    iget-object p1, p0, Ldh1$b;->a:Ldh1;

    invoke-static {p1}, Ldh1;->a(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->onResetUserClick()V

    :cond_1
    return-void
.end method

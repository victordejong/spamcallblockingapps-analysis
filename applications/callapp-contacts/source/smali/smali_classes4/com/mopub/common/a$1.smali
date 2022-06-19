.class final Lcom/mopub/common/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/a;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/a;


# direct methods
.method constructor <init>(Lcom/mopub/common/a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mopub/common/a$1;->a:Lcom/mopub/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    return-void
.end method

.method public final urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-virtual {p2, v0}, Lcom/mopub/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/mopub/common/a$1;->a:Lcom/mopub/common/a;

    invoke-static {p2}, Lcom/mopub/common/a;->a(Lcom/mopub/common/a;)Lcom/mopub/common/MoPubBrowser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/common/MoPubBrowser;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/mopub/common/a$1;->a:Lcom/mopub/common/a;

    invoke-static {p1}, Lcom/mopub/common/a;->a(Lcom/mopub/common/a;)Lcom/mopub/common/MoPubBrowser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/MoPubBrowser;->finish()V

    return-void
.end method

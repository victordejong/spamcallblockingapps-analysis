.class final enum Lcom/mopub/common/UrlAction$1;
.super Lcom/mopub/common/UrlAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/UrlAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/common/UrlAction;-><init>(Ljava/lang/String;IZLcom/mopub/common/UrlAction$1;)V

    return-void
.end method


# virtual methods
.method protected final performAction(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 54
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 1222
    iget-object p3, p3, Lcom/mopub/common/UrlHandler;->a:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    const-string p4, "finishLoad"

    .line 58
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 59
    invoke-interface {p3}, Lcom/mopub/common/UrlHandler$MoPubSchemeListener;->onFinishLoad()V

    return-void

    :cond_0
    const-string p4, "close"

    .line 60
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 61
    invoke-interface {p3}, Lcom/mopub/common/UrlHandler$MoPubSchemeListener;->onClose()V

    return-void

    :cond_1
    const-string p4, "failLoad"

    .line 62
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 63
    invoke-interface {p3}, Lcom/mopub/common/UrlHandler$MoPubSchemeListener;->onFailLoad()V

    return-void

    :cond_2
    const-string p4, "crash"

    .line 64
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 65
    invoke-interface {p3}, Lcom/mopub/common/UrlHandler$MoPubSchemeListener;->onCrash()V

    return-void

    .line 67
    :cond_3
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Could not handle MoPub Scheme url: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final shouldTryHandlingUrl(Landroid/net/Uri;)Z
    .locals 1

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mopub"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

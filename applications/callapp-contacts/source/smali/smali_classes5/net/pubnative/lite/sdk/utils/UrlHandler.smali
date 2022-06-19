.class public Lnet/pubnative/lite/sdk/utils/UrlHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UrlHandler"


# instance fields
.field private final mIntentHandler:Lnet/pubnative/lite/sdk/utils/IntentHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lnet/pubnative/lite/sdk/utils/IntentHandler;

    invoke-direct {v0, p1}, Lnet/pubnative/lite/sdk/utils/IntentHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlHandler;->mIntentHandler:Lnet/pubnative/lite/sdk/utils/IntentHandler;

    return-void
.end method


# virtual methods
.method public handleUrl(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    sget-object v0, Lnet/pubnative/lite/sdk/utils/UrlHandler;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Handling url: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v3, "redirect"

    const-string v4, "false"

    invoke-virtual {p1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string v3, "play.google.com"

    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "market.android.com"

    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "market"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "market.android.com/"

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "http"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlHandler;->mIntentHandler:Lnet/pubnative/lite/sdk/utils/IntentHandler;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/utils/IntentHandler;->handleDeepLink(Landroid/net/Uri;)Z

    :cond_3
    return-void

    .line 74
    :cond_4
    :goto_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlHandler;->mIntentHandler:Lnet/pubnative/lite/sdk/utils/IntentHandler;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/utils/IntentHandler;->handleBrowserLink(Landroid/net/Uri;)Z

    return-void

    .line 69
    :cond_5
    :goto_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlHandler;->mIntentHandler:Lnet/pubnative/lite/sdk/utils/IntentHandler;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/utils/IntentHandler;->handleDeepLink(Landroid/net/Uri;)Z

    return-void
.end method

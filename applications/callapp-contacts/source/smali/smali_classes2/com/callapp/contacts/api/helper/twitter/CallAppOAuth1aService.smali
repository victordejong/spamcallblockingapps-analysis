.class Lcom/callapp/contacts/api/helper/twitter/CallAppOAuth1aService;
.super Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/internal/g;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;-><init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/internal/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;
    .locals 3

    const-string v0, "https://twitterauth.callapp.com"

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/CallAppOAuth1aService;->getTwitterCore()Lcom/twitter/sdk/android/core/r;

    invoke-static {}, Lcom/twitter/sdk/android/core/r;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getConsumerKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

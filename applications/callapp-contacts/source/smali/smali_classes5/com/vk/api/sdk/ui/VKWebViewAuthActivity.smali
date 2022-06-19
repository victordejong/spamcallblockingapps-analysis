.class public Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;,
        Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0003J\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0011H\u0014J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0012\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u000fH\u0014J\u0008\u0010\u0019\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;",
        "Landroid/app/Activity;",
        "()V",
        "params",
        "Lcom/vk/api/sdk/auth/VKAuthParams;",
        "progress",
        "Landroid/widget/ProgressBar;",
        "redirectUrl",
        "",
        "kotlin.jvm.PlatformType",
        "getRedirectUrl",
        "()Ljava/lang/String;",
        "webView",
        "Landroid/webkit/WebView;",
        "configureWebView",
        "",
        "getUrlParams",
        "",
        "loadUrl",
        "needValidationResult",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "showWebView",
        "Companion",
        "OAuthWebViewClient",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;

.field private static e:Lcom/vk/api/sdk/i$b;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Lcom/vk/api/sdk/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/vk/api/sdk/i$b;
    .locals 1

    .line 54
    sget-object v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->e:Lcom/vk/api/sdk/i$b;

    return-object v0
.end method

.method public static final synthetic a(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)Ljava/lang/String;
    .locals 1

    .line 4122
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "vk_validation_url"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4123
    :cond_0
    iget-object p0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->d:Lcom/vk/api/sdk/a/d;

    if-nez p0, :cond_1

    const-string v0, "params"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 5030
    :cond_1
    iget-object p0, p0, Lcom/vk/api/sdk/a/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lcom/vk/api/sdk/i$b;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->e:Lcom/vk/api/sdk/i$b;

    return-void
.end method

.method private final b()V
    .locals 15

    const/4 v0, 0x0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "vk_validation_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_0
    const-string v1, "https://oauth.vk.com/authorize"

    .line 105
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Lkotlin/n;

    const-string v3, "client_id"

    .line 2092
    iget-object v4, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->d:Lcom/vk/api/sdk/a/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "params"

    if-nez v4, :cond_1

    :try_start_1
    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 3030
    :cond_1
    iget v4, v4, Lcom/vk/api/sdk/a/d;->b:I

    .line 2092
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "scope"

    .line 2093
    iget-object v6, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->d:Lcom/vk/api/sdk/a/d;

    if-nez v6, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 3057
    :cond_2
    iget-object v6, v6, Lcom/vk/api/sdk/a/d;->a:Ljava/util/Set;

    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    const-string v6, ","

    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    invoke-static/range {v7 .. v14}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    .line 2093
    invoke-static {v4, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "redirect_uri"

    .line 2094
    iget-object v6, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->d:Lcom/vk/api/sdk/a/d;

    if-nez v6, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 4030
    :cond_3
    iget-object v5, v6, Lcom/vk/api/sdk/a/d;->c:Ljava/lang/String;

    .line 2094
    invoke-static {v4, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "response_type"

    const-string v5, "token"

    .line 2095
    invoke-static {v4, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "display"

    const-string v5, "mobile"

    .line 2096
    invoke-static {v4, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "v"

    .line 2097
    invoke-static {}, Lcom/vk/api/sdk/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "revoke"

    const-string v5, "1"

    .line 2098
    invoke-static {v4, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2091
    invoke-static {v2}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_1
    iget-object v2, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->b:Landroid/webkit/WebView;

    if-nez v2, :cond_5

    const-string v3, "webView"

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 115
    :catch_0
    invoke-virtual {p0, v0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->finish()V

    return-void
.end method

.method public static final synthetic b(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->c()Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V
    .locals 2

    .line 5126
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->c:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progress"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5127
    iget-object p0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->b:Landroid/webkit/WebView;

    if-nez p0, :cond_1

    const-string v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method private final c()Z
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vk_validation_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final synthetic d(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget p1, Lcom/vk/api/sdk/a$b;->vk_webview_auth_dialog:I

    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->setContentView(I)V

    .line 65
    sget p1, Lcom/vk/api/sdk/a$a;->webView:I

    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.webView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->b:Landroid/webkit/WebView;

    .line 66
    sget p1, Lcom/vk/api/sdk/a$a;->progress:I

    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.progress)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->c:Landroid/widget/ProgressBar;

    .line 68
    sget-object p1, Lcom/vk/api/sdk/a/d;->d:Lcom/vk/api/sdk/a/d$a;

    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "vk_auth_params"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    const-string v0, "vk_app_id"

    .line 1075
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "vk_app_scope"

    .line 1076
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    .line 1083
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1084
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1085
    check-cast v3, Ljava/lang/String;

    const-string v4, "it"

    .line 1076
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vk/api/sdk/a/f;->valueOf(Ljava/lang/String;)Lcom/vk/api/sdk/a/f;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1086
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 1083
    check-cast v2, Ljava/util/Collection;

    goto :goto_1

    .line 2036
    :cond_2
    sget-object v1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v1, Ljava/util/Set;

    .line 1076
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    :goto_1
    const-string v1, "vk_app_redirect_url"

    const-string v3, "https://oauth.vk.com/blank.html"

    .line 1077
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1079
    new-instance v1, Lcom/vk/api/sdk/a/d;

    const-string v3, "redirectUrl"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, p1, v2}, Lcom/vk/api/sdk/a/d;-><init>(ILjava/lang/String;Ljava/util/Collection;)V

    move-object p1, v1

    :goto_2
    if-nez p1, :cond_3

    .line 70
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->c()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->finish()V

    goto :goto_3

    .line 72
    :cond_3
    iput-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->d:Lcom/vk/api/sdk/a/d;

    .line 2080
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->b:Landroid/webkit/WebView;

    const-string v0, "webView"

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 2081
    :cond_5
    new-instance v1, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;

    invoke-direct {v1, p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;-><init>(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 v1, 0x0

    .line 2082
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x4

    .line 2083
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 v1, 0x2

    .line 2084
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 2086
    iget-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->b:Landroid/webkit/WebView;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 2087
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->b()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 132
    sget-object v0, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->b()V

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

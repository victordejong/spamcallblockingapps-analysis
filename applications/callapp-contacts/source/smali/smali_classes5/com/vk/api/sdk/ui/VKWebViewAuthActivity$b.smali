.class public final Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u000c\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u000f\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J.\u0010\u000f\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0018\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u001c\u0010\u0018\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0019\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$OAuthWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V",
        "hasError",
        "",
        "handleUrl",
        "url",
        "",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onReceivedError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "shouldOverrideUrlLoading",
        "showError",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->b:Z

    .line 205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 207
    sget p2, Lcom/vk/api/sdk/a$c;->vk_retry:I

    new-instance v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b$a;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b$a;-><init>(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    .line 211
    new-instance v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b$b;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b$b;-><init>(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 217
    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 219
    :catch_0
    iget-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->setResult(I)V

    .line 220
    iget-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-virtual {p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->finish()V

    return-void
.end method

.method public static final synthetic a(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->b:Z

    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 149
    iget-object v1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-static {v1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "redirectUrl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1405
    invoke-static {p1, v1, v0}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 151
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vk.auth-token"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x6

    const-string v4, "#"

    invoke-static {v2, v4, v0, v0, v3}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "extra-token-data"

    .line 153
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-static {v2}, Lcom/vk/api/sdk/e/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v5, "error"

    .line 157
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "cancel"

    .line 158
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 160
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-virtual {v2, v0, v1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 162
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-static {v0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->b(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "?"

    .line 163
    invoke-static {p1, v4, v0}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "success"

    .line 164
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "access_token"

    .line 165
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "secret"

    .line 166
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    .line 167
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 168
    :goto_1
    sget-object v2, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;

    new-instance v2, Lcom/vk/api/sdk/i$b;

    invoke-direct {v2, v1, v0, p1}, Lcom/vk/api/sdk/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2231
    invoke-static {v2}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a(Lcom/vk/api/sdk/i$b;)V

    .line 171
    :cond_4
    sget-object p1, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->b()V

    .line 173
    iget-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-virtual {p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->finish()V

    return v3

    :cond_5
    :goto_2
    return v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 186
    iget-boolean p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-static {p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->c(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 181
    invoke-direct {p0, p2}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p1, p3}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 191
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 192
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 193
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 141
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 145
    invoke-direct {p0, p2}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

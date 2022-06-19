.class final Lcom/facebook/login/WebViewLoginMethodHandler$a;
.super Lcom/facebook/internal/ag$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/WebViewLoginMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/facebook/login/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "oauth"

    .line 115
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/internal/ag$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "fbconnect://success"

    .line 111
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->d:Ljava/lang/String;

    .line 112
    sget-object p1, Lcom/facebook/login/d;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/d;

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->e:Lcom/facebook/login/d;

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/internal/ag;
    .locals 5

    .line 151
    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->d:Ljava/lang/String;

    const-string v2, "redirect_uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->b:Ljava/lang/String;

    const-string v2, "e2e"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "response_type"

    const-string v2, "token,signed_request,graph_domain"

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "return_scopes"

    const-string v2, "true"

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->c:Ljava/lang/String;

    const-string v2, "auth_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->e:Lcom/facebook/login/d;

    invoke-virtual {v1}, Lcom/facebook/login/d;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "login_behavior"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->d()I

    move-result v2

    .line 1820
    iget-object v3, p0, Lcom/facebook/internal/ag$a;->a:Lcom/facebook/internal/ag$c;

    const-string v4, "oauth"

    .line 163
    invoke-static {v1, v4, v0, v2, v3}, Lcom/facebook/internal/ag;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/ag$c;)Lcom/facebook/internal/ag;

    move-result-object v0

    return-object v0
.end method

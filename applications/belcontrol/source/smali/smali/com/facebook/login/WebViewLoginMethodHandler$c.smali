.class public Lcom/facebook/login/WebViewLoginMethodHandler$c;
.super Lhn0$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/WebViewLoginMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "oauth"

    invoke-direct {p0, p1, p2, v0, p3}, Lhn0$e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "fbconnect://success"

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$c;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lhn0;
    .locals 5

    invoke-virtual {p0}, Lhn0$e;->f()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$c;->j:Ljava/lang/String;

    const-string v2, "redirect_uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lhn0$e;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$c;->h:Ljava/lang/String;

    const-string v2, "e2e"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "response_type"

    const-string v2, "token,signed_request,graph_domain"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "return_scopes"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$c;->i:Ljava/lang/String;

    const-string v2, "auth_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lhn0$e;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lhn0$e;->g()I

    move-result v2

    invoke-virtual {p0}, Lhn0$e;->e()Lhn0$g;

    move-result-object v3

    const-string v4, "oauth"

    invoke-static {v1, v4, v0, v2, v3}, Lhn0;->q(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILhn0$g;)Lhn0;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$c;
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$c;
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$c;->h:Ljava/lang/String;

    return-object p0
.end method

.method public k(Z)Lcom/facebook/login/WebViewLoginMethodHandler$c;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "fbconnect://chrome_os_success"

    goto :goto_0

    :cond_0
    const-string p1, "fbconnect://success"

    :goto_0
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$c;->j:Ljava/lang/String;

    return-object p0
.end method

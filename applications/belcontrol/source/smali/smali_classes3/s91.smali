.class public Ls91;
.super Lv91;
.source ""

# interfaces
.implements Lpi0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv91;",
        "Lpi0<",
        "Lxn0;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Lni0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv91;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lv91;->c:Lv91$b;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lv91$b;->b(Lv91;Z)V

    return-void
.end method

.method public b(Lri0;)V
    .locals 1

    instance-of p1, p1, Loi0;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lwn0;->e()Lwn0;

    move-result-object p1

    invoke-virtual {p1}, Lwn0;->n()V

    :cond_0
    iget-object p1, p0, Lv91;->c:Lv91$b;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lv91$b;->b(Lv91;Z)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(IILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Ls91;->o()Lni0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lni0;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lui0;->F(Z)V

    invoke-static {}, Lni0$a;->a()Lni0;

    move-result-object v0

    iput-object v0, p0, Ls91;->f:Lni0;

    invoke-static {}, Lwn0;->e()Lwn0;

    move-result-object v0

    iget-object v1, p0, Ls91;->f:Lni0;

    invoke-virtual {v0, v1, p0}, Lwn0;->r(Lni0;Lpi0;)V

    return-void
.end method

.method public l()V
    .locals 4

    invoke-static {}, Lwn0;->e()Lwn0;

    move-result-object v0

    iget-object v1, p0, Lv91;->b:Landroid/app/Activity;

    const-string v2, "public_profile"

    const-string v3, "email"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwn0;->m(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lwn0;->e()Lwn0;

    move-result-object v0

    invoke-virtual {v0}, Lwn0;->n()V

    :cond_0
    iget-object v0, p0, Lv91;->c:Lv91$b;

    invoke-interface {v0, p0}, Lv91$b;->d(Lv91;)V

    return-void
.end method

.method public o()Lni0;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    iget-object v0, p0, Ls91;->f:Lni0;

    if-nez v0, :cond_0

    invoke-static {}, Lni0$a;->a()Lni0;

    move-result-object v0

    iput-object v0, p0, Ls91;->f:Lni0;

    :cond_0
    iget-object v0, p0, Ls91;->f:Lni0;

    return-object v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lxn0;

    invoke-virtual {p0, p1}, Ls91;->p(Lxn0;)V

    return-void
.end method

.method public p(Lxn0;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facebook callback success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-virtual {p1}, Lxn0;->a()Lcom/facebook/AccessToken;

    move-result-object v3

    sget-object v6, Lbj0;->a:Lbj0;

    new-instance v7, Ls91$a;

    invoke-direct {v7, p0}, Ls91$a;-><init>(Ls91;)V

    const-string v4, "/me/ids_for_business"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbj0;Lcom/facebook/GraphRequest$e;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lyi0;

    return-void
.end method

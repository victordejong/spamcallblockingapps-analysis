.class public Lem0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lem0$a;
    }
.end annotation


# direct methods
.method public static a(Ldm0;)Z
    .locals 1

    invoke-static {p0}, Lem0;->c(Ldm0;)Lzm0$g;

    move-result-object p0

    invoke-virtual {p0}, Lzm0$g;->e()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ldm0;)Landroid/net/Uri;
    .locals 2

    invoke-interface {p0}, Ldm0;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ldm0;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lmm0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmm0$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmm0$a;->b()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ldm0;)Lzm0$g;
    .locals 2

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ldm0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lem0;->d(Ljava/lang/String;Ljava/lang/String;Ldm0;)[I

    move-result-object p0

    invoke-static {v1, p0}, Lzm0;->u(Ljava/lang/String;[I)Lzm0$g;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ldm0;)[I
    .locals 1

    invoke-interface {p2}, Ldm0;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmm0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmm0$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmm0$a;->d()[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    invoke-interface {p2}, Ldm0;->a()I

    move-result p2

    aput p2, p0, p1

    return-object p0
.end method

.method public static e(Lyl0;Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Lyl0;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lyl0;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lyl0;->g()Z

    return-void
.end method

.method public static f(Lyl0;Lpm0;)V
    .locals 2

    invoke-virtual {p0}, Lyl0;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lyl0;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lpm0;->d(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lyl0;->g()Z

    return-void
.end method

.method public static g(Lyl0;)V
    .locals 2

    new-instance v0, Lri0;

    const-string v1, "Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."

    invoke-direct {v0, v1}, Lri0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lem0;->j(Lyl0;Lri0;)V

    return-void
.end method

.method public static h(Lyl0;Lri0;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgn0;->f(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/facebook/FacebookActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lyl0;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lzm0;->x()I

    move-result v3

    invoke-static {p1}, Lzm0;->i(Lri0;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lzm0;->D(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lyl0;->h(Landroid/content/Intent;)V

    return-void
.end method

.method public static i(Lyl0;Lem0$a;Ldm0;)V
    .locals 4

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2}, Ldm0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lem0;->c(Ldm0;)Lzm0$g;

    move-result-object p2

    invoke-virtual {p2}, Lzm0$g;->e()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Lzm0;->C(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lem0$a;->getParameters()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lem0$a;->a()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lyl0;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, p2, p1}, Lzm0;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lzm0$g;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lyl0;->h(Landroid/content/Intent;)V

    return-void

    :cond_2
    new-instance p0, Lri0;

    const-string p1, "Unable to create Intent; this likely means theFacebook app is not installed."

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lri0;

    const-string p1, "Cannot present this dialog. This likely means that the Facebook app is not installed."

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Lyl0;Lri0;)V
    .locals 0

    invoke-static {p0, p1}, Lem0;->h(Lyl0;Lri0;)V

    return-void
.end method

.method public static k(Lyl0;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgn0;->f(Landroid/content/Context;)V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgn0;->h(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "params"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lyl0;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lzm0;->x()I

    move-result v2

    invoke-static {p2, v1, p1, v2, v0}, Lzm0;->D(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p1, "FacebookDialogFragment"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lyl0;->h(Landroid/content/Intent;)V

    return-void
.end method

.method public static l(Lyl0;Landroid/os/Bundle;Ldm0;)V
    .locals 3

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgn0;->f(Landroid/content/Context;)V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgn0;->h(Landroid/content/Context;)V

    invoke-interface {p2}, Ldm0;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lem0;->b(Ldm0;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lzm0;->x()I

    move-result v0

    invoke-virtual {p0}, Lyl0;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcn0;->e(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1, p1}, Lfn0;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string v1, "is_fallback"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lyl0;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ldm0;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lzm0;->x()I

    move-result v2

    invoke-static {p1, v1, p2, v2, v0}, Lzm0;->D(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "FacebookDialogFragment"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lyl0;->h(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-instance p0, Lri0;

    const-string p1, "Unable to fetch the app\'s key-hash"

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lri0;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to fetch the Url for the DialogFeature : \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lri0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

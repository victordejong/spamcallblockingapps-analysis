.class public Lcom/facebook/login/widget/LoginButton$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lwn0;
    .locals 2

    invoke-static {}, Lwn0;->e()Lwn0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getDefaultAudience()Lqn0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwn0;->u(Lqn0;)Lwn0;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getLoginBehavior()Ltn0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwn0;->w(Ltn0;)Lwn0;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwn0;->t(Ljava/lang/String;)Lwn0;

    return-object v0
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$e;->a()Lwn0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->s(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$d;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$d;->a(Lcom/facebook/login/widget/LoginButton$d;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwn0;->k(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/FacebookButtonBase;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->s(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$d;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$d;->a(Lcom/facebook/login/widget/LoginButton$d;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwn0;->j(Landroid/app/Fragment;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->t(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->s(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$d;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$d;->a(Lcom/facebook/login/widget/LoginButton$d;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwn0;->i(Landroid/app/Activity;Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$e;->a()Lwn0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->u(Lcom/facebook/login/widget/LoginButton;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lco0;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lco0;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/facebook/Profile;->c()Lcom/facebook/Profile;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/Profile;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v5}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lco0;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/facebook/Profile;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v3}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lco0;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lcom/facebook/login/widget/LoginButton$e$a;

    invoke-direct {v3, p0, v0}, Lcom/facebook/login/widget/LoginButton$e$a;-><init>(Lcom/facebook/login/widget/LoginButton$e;Lwn0;)V

    invoke-virtual {p1, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lwn0;->n()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0, p1}, Lcom/facebook/login/widget/LoginButton;->q(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton$e;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$e;->b()V

    :goto_0
    new-instance v0, Lxj0;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lxj0;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    const-string v2, "logging_in"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result p1

    const-string v2, "access_token_expired"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton$e;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {p1}, Lcom/facebook/login/widget/LoginButton;->r(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lxj0;->i(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

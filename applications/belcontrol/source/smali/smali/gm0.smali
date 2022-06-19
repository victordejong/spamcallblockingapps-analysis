.class public Lgm0;
.super Lfd;
.source ""


# instance fields
.field public a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfd;-><init>()V

    return-void
.end method

.method public static synthetic j(Lgm0;Landroid/os/Bundle;Lri0;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgm0;->l(Landroid/os/Bundle;Lri0;)V

    return-void
.end method

.method public static synthetic k(Lgm0;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgm0;->m(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final l(Landroid/os/Bundle;Lri0;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lzm0;->n(Landroid/content/Intent;Landroid/os/Bundle;Lri0;)Landroid/content/Intent;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final m(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public n(Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lgm0;->a:Landroid/app/Dialog;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lgm0;->a:Landroid/app/Dialog;

    instance-of p1, p1, Lhn0;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgm0;->a:Landroid/app/Dialog;

    check-cast p1, Lhn0;

    invoke-virtual {p1}, Lhn0;->s()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lfd;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lgm0;->a:Landroid/app/Dialog;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lzm0;->y(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_fallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "FacebookDialogFragment"

    if-nez v1, :cond_1

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Cannot start a WebDialog with an empty/missing \'actionName\'"

    :goto_0
    invoke-static {v3, v0}, Lfn0;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance v2, Lhn0$e;

    invoke-direct {v2, p1, v1, v0}, Lhn0$e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lgm0$a;

    invoke-direct {p1, p0}, Lgm0$a;-><init>(Lgm0;)V

    invoke-virtual {v2, p1}, Lhn0$e;->h(Lhn0$g;)Lhn0$e;

    invoke-virtual {v2}, Lhn0$e;->a()Lhn0;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Cannot start a fallback WebDialog with an empty/missing \'url\'"

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "fb%s://bridge/"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljm0;->A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljm0;

    move-result-object p1

    new-instance v0, Lgm0$b;

    invoke-direct {v0, p0}, Lgm0$b;-><init>(Lgm0;)V

    invoke-virtual {p1, v0}, Lhn0;->w(Lhn0$g;)V

    :goto_1
    iput-object p1, p0, Lgm0;->a:Landroid/app/Dialog;

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    iget-object p1, p0, Lgm0;->a:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lgm0;->l(Landroid/os/Bundle;Lri0;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lfd;->setShowsDialog(Z)V

    :cond_0
    iget-object p1, p0, Lgm0;->a:Landroid/app/Dialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lfd;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfd;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Lfd;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lgm0;->a:Landroid/app/Dialog;

    instance-of v1, v0, Lhn0;

    if-eqz v1, :cond_0

    check-cast v0, Lhn0;

    invoke-virtual {v0}, Lhn0;->s()V

    :cond_0
    return-void
.end method

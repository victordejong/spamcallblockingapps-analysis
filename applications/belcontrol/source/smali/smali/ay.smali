.class public Lay;
.super Lfd;
.source ""


# instance fields
.field public a:Z

.field public b:Landroid/app/Dialog;

.field public c:Lcz;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfd;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lay;->a:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfd;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 2

    iget-object v0, p0, Lay;->c:Lcz;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcz;->d(Landroid/os/Bundle;)Lcz;

    move-result-object v0

    iput-object v0, p0, Lay;->c:Lcz;

    :cond_0
    iget-object v0, p0, Lay;->c:Lcz;

    if-nez v0, :cond_1

    sget-object v0, Lcz;->c:Lcz;

    iput-object v0, p0, Lay;->c:Lcz;

    :cond_1
    return-void
.end method

.method public k(Landroid/content/Context;Landroid/os/Bundle;)Lzx;
    .locals 0

    new-instance p2, Lzx;

    invoke-direct {p2, p1}, Lzx;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public l(Landroid/content/Context;)Ley;
    .locals 1

    new-instance v0, Ley;

    invoke-direct {v0, p1}, Ley;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m(Lcz;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lay;->j()V

    iget-object v0, p0, Lay;->c:Lcz;

    invoke-virtual {v0, p1}, Lcz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lay;->c:Lcz;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcz;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "selector"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lay;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lay;->a:Z

    if-eqz v1, :cond_1

    check-cast v0, Ley;

    invoke-virtual {v0, p1}, Ley;->j(Lcz;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Z)V
    .locals 1

    iget-object v0, p0, Lay;->b:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lay;->a:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This must be called before creating dialog"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lay;->b:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lay;->a:Z

    if-eqz v0, :cond_0

    check-cast p1, Ley;

    invoke-virtual {p1}, Ley;->l()V

    goto :goto_0

    :cond_0
    check-cast p1, Lzx;

    invoke-virtual {p1}, Lzx;->C()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-boolean v0, p0, Lay;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lay;->l(Landroid/content/Context;)Ley;

    move-result-object p1

    iput-object p1, p0, Lay;->b:Landroid/app/Dialog;

    check-cast p1, Ley;

    iget-object v0, p0, Lay;->c:Lcz;

    invoke-virtual {p1, v0}, Ley;->j(Lcz;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lay;->k(Landroid/content/Context;Landroid/os/Bundle;)Lzx;

    move-result-object p1

    iput-object p1, p0, Lay;->b:Landroid/app/Dialog;

    :goto_0
    iget-object p1, p0, Lay;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lfd;->onStop()V

    iget-object v0, p0, Lay;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lay;->a:Z

    if-nez v1, :cond_0

    check-cast v0, Lzx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzx;->g(Z)V

    :cond_0
    return-void
.end method

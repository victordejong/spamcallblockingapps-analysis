.class public Lmd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lmd$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lnd;


# direct methods
.method public constructor <init>(Lnd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lmd;->b:Lnd;

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lmd;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1, p2}, Lnd$g;->a(Lnd;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lmd;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1, p2}, Lnd$g;->b(Lnd;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lmd;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1, p2}, Lnd$g;->c(Lnd;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmd;->d(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1}, Lnd$g;->d(Lnd;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public e(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmd;->e(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1}, Lnd$g;->e(Lnd;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public f(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmd;->f(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1}, Lnd$g;->f(Lnd;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public g(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lmd;->g(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1, p2}, Lnd$g;->g(Lnd;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lmd;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1, p2}, Lnd$g;->h(Lnd;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public i(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmd;->i(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1}, Lnd$g;->i(Lnd;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lmd;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1, p2}, Lnd$g;->j(Lnd;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmd;->k(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1}, Lnd$g;->k(Lnd;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public l(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmd;->l(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1}, Lnd$g;->l(Lnd;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lmd;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p4, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1, p2, p3}, Lnd$g;->m(Lnd;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public n(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Lmd;->b:Lnd;

    invoke-virtual {v0}, Lnd;->l0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k0()Lmd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmd;->n(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Lmd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmd$a;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Lmd$a;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Lmd$a;->a:Lnd$g;

    iget-object v2, p0, Lmd;->b:Lnd;

    invoke-virtual {v1, v2, p1}, Lnd$g;->n(Lnd;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

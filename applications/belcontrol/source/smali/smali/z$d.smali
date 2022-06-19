.class public Lz$d;
.super Lj0;
.source ""

# interfaces
.implements Lx0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lx0;

.field public f:Lj0$a;

.field public g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Lz;


# direct methods
.method public constructor <init>(Lz;Landroid/content/Context;Lj0$a;)V
    .locals 0

    iput-object p1, p0, Lz$d;->h:Lz;

    invoke-direct {p0}, Lj0;-><init>()V

    iput-object p2, p0, Lz$d;->c:Landroid/content/Context;

    iput-object p3, p0, Lz$d;->f:Lj0$a;

    new-instance p1, Lx0;

    invoke-direct {p1, p2}, Lx0;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lx0;->setDefaultShowAsAction(I)Lx0;

    move-result-object p1

    iput-object p1, p0, Lz$d;->d:Lx0;

    invoke-virtual {p1, p0}, Lx0;->setCallback(Lx0$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v1, v0, Lz;->j:Lz$d;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lz;->r:Z

    iget-boolean v0, v0, Lz;->s:Z

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lz;->v(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz$d;->h:Lz;

    iput-object p0, v0, Lz;->k:Lj0;

    iget-object v1, p0, Lz$d;->f:Lj0$a;

    iput-object v1, v0, Lz;->l:Lj0$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz$d;->f:Lj0$a;

    invoke-interface {v0, p0}, Lj0$a;->a(Lj0;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lz$d;->f:Lj0$a;

    iget-object v1, p0, Lz$d;->h:Lz;

    invoke-virtual {v1, v2}, Lz;->u(Z)V

    iget-object v1, p0, Lz$d;->h:Lz;

    iget-object v1, v1, Lz;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->g()V

    iget-object v1, p0, Lz$d;->h:Lz;

    iget-object v1, v1, Lz;->e:Ly1;

    invoke-interface {v1}, Ly1;->j()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lz$d;->h:Lz;

    iget-object v2, v1, Lz;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Lz;->x:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Lz$d;->h:Lz;

    iput-object v0, v1, Lz;->j:Lz$d;

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz$d;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lz$d;->d:Lx0;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lo0;

    iget-object v1, p0, Lz$d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->j:Lz$d;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz$d;->d:Lx0;

    invoke-virtual {v0}, Lx0;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lz$d;->f:Lj0$a;

    iget-object v1, p0, Lz$d;->d:Lx0;

    invoke-interface {v0, p0, v1}, Lj0$a;->d(Lj0;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz$d;->d:Lx0;

    invoke-virtual {v0}, Lx0;->startDispatchingItemsChanged()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lz$d;->d:Lx0;

    invoke-virtual {v1}, Lx0;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->j()Z

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz$d;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz$d;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o(I)V
    .locals 1

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz$d;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMenuItemSelected(Lx0;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lz$d;->f:Lj0$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Lj0$a;->c(Lj0;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Lx0;)V
    .locals 0

    iget-object p1, p0, Lz$d;->f:Lj0$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lz$d;->i()V

    iget-object p1, p0, Lz$d;->h:Lz;

    iget-object p1, p1, Lz;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->l()Z

    return-void
.end method

.method public p(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q(Z)V
    .locals 1

    invoke-super {p0, p1}, Lj0;->q(Z)V

    iget-object v0, p0, Lz$d;->h:Lz;

    iget-object v0, v0, Lz;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public r()Z
    .locals 2

    iget-object v0, p0, Lz$d;->d:Lx0;

    invoke-virtual {v0}, Lx0;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lz$d;->f:Lj0$a;

    iget-object v1, p0, Lz$d;->d:Lx0;

    invoke-interface {v0, p0, v1}, Lj0$a;->b(Lj0;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lz$d;->d:Lx0;

    invoke-virtual {v1}, Lx0;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lz$d;->d:Lx0;

    invoke-virtual {v1}, Lx0;->startDispatchingItemsChanged()V

    throw v0
.end method

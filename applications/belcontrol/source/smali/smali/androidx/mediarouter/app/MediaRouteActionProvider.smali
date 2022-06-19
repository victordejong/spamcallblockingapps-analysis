.class public Landroidx/mediarouter/app/MediaRouteActionProvider;
.super Lra;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteActionProvider$a;
    }
.end annotation


# instance fields
.field public final d:Ldz;

.field public e:Lcz;

.field public f:Lby;

.field public g:Landroidx/mediarouter/app/MediaRouteButton;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lra;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcz;->c:Lcz;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Lcz;

    invoke-static {}, Lby;->a()Lby;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Lby;

    invoke-static {p1}, Ldz;->g(Landroid/content/Context;)Ldz;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->d:Ldz;

    new-instance p1, Landroidx/mediarouter/app/MediaRouteActionProvider$a;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteActionProvider$a;-><init>(Landroidx/mediarouter/app/MediaRouteActionProvider;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 3

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->d:Ldz;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Lcz;

    invoke-virtual {v0, v2, v1}, Ldz;->m(Lcz;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public d()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    if-eqz v0, :cond_0

    const-string v0, "MRActionProvider"

    const-string v1, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old menu item..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteActionProvider;->n()Landroidx/mediarouter/app/MediaRouteButton;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setCheatSheetEnabled(Z)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Lcz;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setRouteSelector(Lcz;)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->h:Z

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setAlwaysVisible(Z)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Lby;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setDialogFactory(Lby;)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()Landroidx/mediarouter/app/MediaRouteButton;
    .locals 2

    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton;

    invoke-virtual {p0}, Lra;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public o()V
    .locals 0

    invoke-virtual {p0}, Lra;->i()V

    return-void
.end method

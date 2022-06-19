.class public Ls$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public a:Lj0$a;

.field public final synthetic b:Ls;


# direct methods
.method public constructor <init>(Ls;Lj0$a;)V
    .locals 0

    iput-object p1, p0, Ls$i;->b:Ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls$i;->a:Lj0$a;

    return-void
.end method


# virtual methods
.method public a(Lj0;)V
    .locals 2

    iget-object v0, p0, Ls$i;->a:Lj0$a;

    invoke-interface {v0, p1}, Lj0$a;->a(Lj0;)V

    iget-object p1, p0, Ls$i;->b:Ls;

    iget-object v0, p1, Ls;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ls;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ls$i;->b:Ls;

    iget-object v0, v0, Ls;->t:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Ls$i;->b:Ls;

    iget-object v0, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ls;->T()V

    iget-object p1, p0, Ls$i;->b:Ls;

    iget-object v0, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Ljb;->d(Landroid/view/View;)Lnb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnb;->a(F)Lnb;

    iput-object v0, p1, Ls;->u:Lnb;

    iget-object p1, p0, Ls$i;->b:Ls;

    iget-object p1, p1, Ls;->u:Lnb;

    new-instance v0, Ls$i$a;

    invoke-direct {v0, p0}, Ls$i$a;-><init>(Ls$i;)V

    invoke-virtual {p1, v0}, Lnb;->f(Lob;)Lnb;

    :cond_1
    iget-object p1, p0, Ls$i;->b:Ls;

    iget-object v0, p1, Ls;->j:Lq;

    if-eqz v0, :cond_2

    iget-object p1, p1, Ls;->q:Lj0;

    invoke-interface {v0, p1}, Lq;->onSupportActionModeFinished(Lj0;)V

    :cond_2
    iget-object p1, p0, Ls$i;->b:Ls;

    const/4 v0, 0x0

    iput-object v0, p1, Ls;->q:Lj0;

    iget-object p1, p1, Ls;->x:Landroid/view/ViewGroup;

    invoke-static {p1}, Ljb;->k0(Landroid/view/View;)V

    return-void
.end method

.method public b(Lj0;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ls$i;->a:Lj0$a;

    invoke-interface {v0, p1, p2}, Lj0$a;->b(Lj0;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public c(Lj0;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Ls$i;->a:Lj0$a;

    invoke-interface {v0, p1, p2}, Lj0$a;->c(Lj0;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d(Lj0;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ls$i;->b:Ls;

    iget-object v0, v0, Ls;->x:Landroid/view/ViewGroup;

    invoke-static {v0}, Ljb;->k0(Landroid/view/View;)V

    iget-object v0, p0, Ls$i;->a:Lj0$a;

    invoke-interface {v0, p1, p2}, Lj0$a;->d(Lj0;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

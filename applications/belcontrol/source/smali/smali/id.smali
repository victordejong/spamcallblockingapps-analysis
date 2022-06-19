.class public Lid;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkd<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkd<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid;->a:Lkd;

    return-void
.end method

.method public static b(Lkd;)Lid;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkd<",
            "*>;)",
            "Lid;"
        }
    .end annotation

    new-instance v0, Lid;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Loa;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lkd;

    invoke-direct {v0, p0}, Lid;-><init>(Lkd;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v1, v0, Lkd;->d:Lnd;

    invoke-virtual {v1, v0, v0, p1}, Lnd;->h(Lkd;Lhd;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->s()V

    return-void
.end method

.method public d(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1}, Lnd;->t(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1}, Lnd;->u(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->v()V

    return-void
.end method

.method public g(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1, p2}, Lnd;->w(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->x()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->z()V

    return-void
.end method

.method public j(Z)V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1}, Lnd;->A(Z)V

    return-void
.end method

.method public k(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1}, Lnd;->B(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public l(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1}, Lnd;->C(Landroid/view/Menu;)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->E()V

    return-void
.end method

.method public n(Z)V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1}, Lnd;->F(Z)V

    return-void
.end method

.method public o(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1}, Lnd;->G(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->I()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->J()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->L()V

    return-void
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnd;->R(Z)Z

    move-result v0

    return v0
.end method

.method public t(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1}, Lnd;->a0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public u()Lnd;
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    return-object v0
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->E0()V

    return-void
.end method

.method public w(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->j0()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public x(Landroid/os/Parcelable;)V
    .locals 2

    iget-object v0, p0, Lid;->a:Lkd;

    instance-of v1, v0, Lhf;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0, p1}, Lnd;->T0(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lid;->a:Lkd;

    iget-object v0, v0, Lkd;->d:Lnd;

    invoke-virtual {v0}, Lnd;->V0()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

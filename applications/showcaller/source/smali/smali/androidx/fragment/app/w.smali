.class Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/savedstate/c;
.implements Landroidx/lifecycle/u;


# instance fields
.field private final d:Landroidx/fragment/app/Fragment;

.field private final e:Landroidx/lifecycle/t;

.field private f:Landroidx/lifecycle/i;

.field private g:Landroidx/savedstate/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/w;->f:Landroidx/lifecycle/i;

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/w;->g:Landroidx/savedstate/b;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/w;->d:Landroidx/fragment/app/Fragment;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/w;->e:Landroidx/lifecycle/t;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/w;->d()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/w;->f:Landroidx/lifecycle/i;

    return-object v0
.end method

.method b(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->f:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->f:Landroidx/lifecycle/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/w;->f:Landroidx/lifecycle/i;

    .line 3
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/w;->g:Landroidx/savedstate/b;

    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->f:Landroidx/lifecycle/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->g:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method g(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->g:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method h(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->f:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/i;->o(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public p()Landroidx/lifecycle/t;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/w;->d()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/w;->e:Landroidx/lifecycle/t;

    return-object v0
.end method

.method public r()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/w;->d()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/w;->g:Landroidx/savedstate/b;

    invoke-virtual {v0}, Landroidx/savedstate/b;->b()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

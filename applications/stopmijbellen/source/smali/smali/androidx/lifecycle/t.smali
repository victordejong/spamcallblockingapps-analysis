.class public Landroidx/lifecycle/t;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/t$b;,
        Landroidx/lifecycle/t$a;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Landroidx/lifecycle/t$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/lifecycle/l;

    const-string v1, "handleLifecycleEvent"

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroidx/lifecycle/l;

    invoke-interface {p0}, Landroidx/lifecycle/l;->getLifecycle()Landroidx/lifecycle/k;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v1}, Landroidx/lifecycle/k;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroidx/lifecycle/f$b;->a()Landroidx/lifecycle/f$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/k;->g(Landroidx/lifecycle/f$c;)V

    return-void

    .line 5
    :cond_0
    instance-of v0, p0, Landroidx/lifecycle/j;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Landroidx/lifecycle/j;

    invoke-interface {p0}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object p0

    .line 7
    instance-of v0, p0, Landroidx/lifecycle/k;

    if-eqz v0, :cond_1

    .line 8
    check-cast p0, Landroidx/lifecycle/k;

    .line 9
    invoke-virtual {p0, v1}, Landroidx/lifecycle/k;->d(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroidx/lifecycle/f$b;->a()Landroidx/lifecycle/f$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/k;->g(Landroidx/lifecycle/f$c;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/t$b;->registerIn(Landroid/app/Activity;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/t;

    invoke-direct {v2}, Landroidx/lifecycle/t;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 6
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/f$b;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/t;->a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    sget-object v0, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/f$b;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/t$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/t$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Landroidx/lifecycle/r$b;

    .line 4
    iget-object v0, v0, Landroidx/lifecycle/r$b;->a:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->a()V

    .line 5
    :cond_0
    sget-object v0, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/t$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Landroidx/lifecycle/r$b;

    .line 4
    iget-object v0, v0, Landroidx/lifecycle/r$b;->a:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->c()V

    .line 5
    :cond_0
    sget-object v0, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    sget-object v0, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.class public Lze;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lze$b;,
        Lze$a;
    }
.end annotation


# instance fields
.field public a:Lze$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lme$a;)V
    .locals 1

    instance-of v0, p0, Lse;

    if-eqz v0, :cond_0

    check-cast p0, Lse;

    invoke-interface {p0}, Lse;->getLifecycle()Lre;

    move-result-object p0

    invoke-virtual {p0, p1}, Lre;->i(Lme$a;)V

    return-void

    :cond_0
    instance-of v0, p0, Lqe;

    if-eqz v0, :cond_1

    check-cast p0, Lqe;

    invoke-interface {p0}, Lqe;->getLifecycle()Lme;

    move-result-object p0

    instance-of v0, p0, Lre;

    if-eqz v0, :cond_1

    check-cast p0, Lre;

    invoke-virtual {p0, p1}, Lre;->i(Lme$a;)V

    :cond_1
    return-void
.end method

.method public static f(Landroid/app/Activity;)Lze;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lze;

    return-object p0
.end method

.method public static g(Landroid/app/Activity;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lze$b;

    invoke-direct {v0}, Lze$b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lze;

    invoke-direct {v2}, Lze;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lme$a;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lze;->a(Landroid/app/Activity;Lme$a;)V

    :cond_0
    return-void
.end method

.method public final c(Lze$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lze$a;->b()V

    :cond_0
    return-void
.end method

.method public final d(Lze$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lze$a;->onResume()V

    :cond_0
    return-void
.end method

.method public final e(Lze$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lze$a;->onStart()V

    :cond_0
    return-void
.end method

.method public h(Lze$a;)V
    .locals 0

    iput-object p1, p0, Lze;->a:Lze$a;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lze;->a:Lze$a;

    invoke-virtual {p0, p1}, Lze;->c(Lze$a;)V

    sget-object p1, Lme$a;->ON_CREATE:Lme$a;

    invoke-virtual {p0, p1}, Lze;->b(Lme$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Lme$a;->ON_DESTROY:Lme$a;

    invoke-virtual {p0, v0}, Lze;->b(Lme$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lze;->a:Lze$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lme$a;->ON_PAUSE:Lme$a;

    invoke-virtual {p0, v0}, Lze;->b(Lme$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lze;->a:Lze$a;

    invoke-virtual {p0, v0}, Lze;->d(Lze$a;)V

    sget-object v0, Lme$a;->ON_RESUME:Lme$a;

    invoke-virtual {p0, v0}, Lze;->b(Lme$a;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lze;->a:Lze$a;

    invoke-virtual {p0, v0}, Lze;->e(Lze$a;)V

    sget-object v0, Lme$a;->ON_START:Lme$a;

    invoke-virtual {p0, v0}, Lze;->b(Lme$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Lme$a;->ON_STOP:Lme$a;

    invoke-virtual {p0, v0}, Lze;->b(Lme$a;)V

    return-void
.end method

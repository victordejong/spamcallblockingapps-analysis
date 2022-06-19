.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$b;,
        Landroidx/lifecycle/ReportFragment$a;
    }
.end annotation


# instance fields
.field a:Landroidx/lifecycle/ReportFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {p0}, Landroidx/lifecycle/ReportFragment$b;->registerIn(Landroid/app/Activity;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ReportFragment;

    invoke-direct {v2}, Landroidx/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 54
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method static a(Landroid/app/Activity;Landroidx/lifecycle/j$a;)V
    .locals 1

    .line 60
    instance-of v0, p0, Landroidx/lifecycle/q;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Landroidx/lifecycle/q;

    invoke-interface {p0}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    return-void

    .line 65
    :cond_0
    instance-of v0, p0, Landroidx/lifecycle/p;

    if-eqz v0, :cond_1

    .line 66
    check-cast p0, Landroidx/lifecycle/p;

    invoke-interface {p0}, Landroidx/lifecycle/p;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p0

    .line 67
    instance-of v0, p0, Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_1

    .line 68
    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    :cond_1
    return-void
.end method

.method private a(Landroidx/lifecycle/j$a;)V
    .locals 2

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroidx/lifecycle/ReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/ReportFragment;->a(Landroid/app/Activity;Landroidx/lifecycle/j$a;)V

    :cond_0
    return-void
.end method

.method static b(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ReportFragment;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    sget-object p1, Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;

    invoke-direct {p0, p1}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 134
    sget-object v0, Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/j$a;)V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 122
    sget-object v0, Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 115
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    if-eqz v0, :cond_0

    .line 1094
    invoke-interface {v0}, Landroidx/lifecycle/ReportFragment$a;->b()V

    .line 116
    :cond_0
    sget-object v0, Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 108
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    if-eqz v0, :cond_0

    .line 1088
    invoke-interface {v0}, Landroidx/lifecycle/ReportFragment$a;->a()V

    .line 109
    :cond_0
    sget-object v0, Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 128
    sget-object v0, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.class public Landroidx/lifecycle/q;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/q$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/lifecycle/q$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 40
    const-string/jumbo v1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/q;

    invoke-direct {v2}, Landroidx/lifecycle/q;-><init>()V

    const-string/jumbo v3, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 43
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 45
    :cond_0
    return-void
.end method

.method private a(Landroidx/lifecycle/e$a;)V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Landroidx/lifecycle/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    instance-of v1, v0, Landroidx/lifecycle/j;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Landroidx/lifecycle/j;

    invoke-interface {v0}, Landroidx/lifecycle/j;->a()Landroidx/lifecycle/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    instance-of v1, v0, Landroidx/lifecycle/h;

    if-eqz v1, :cond_0

    .line 121
    check-cast v0, Landroidx/lifecycle/h;

    invoke-interface {v0}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/e;

    move-result-object v0

    .line 122
    instance-of v1, v0, Landroidx/lifecycle/i;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Landroidx/lifecycle/i;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    goto :goto_0
.end method

.method private a(Landroidx/lifecycle/q$a;)V
    .locals 0

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Landroidx/lifecycle/q$a;->a()V

    .line 58
    :cond_0
    return-void
.end method

.method private b(Landroidx/lifecycle/q$a;)V
    .locals 0

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Landroidx/lifecycle/q$a;->b()V

    .line 64
    :cond_0
    return-void
.end method

.method private c(Landroidx/lifecycle/q$a;)V
    .locals 0

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Landroidx/lifecycle/q$a;->c()V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Landroidx/lifecycle/q;->a:Landroidx/lifecycle/q$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/q$a;)V

    .line 76
    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/e$a;)V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 108
    sget-object v0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/e$a;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/q;->a:Landroidx/lifecycle/q$a;

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 96
    sget-object v0, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/e$a;)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 89
    iget-object v0, p0, Landroidx/lifecycle/q;->a:Landroidx/lifecycle/q$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q;->c(Landroidx/lifecycle/q$a;)V

    .line 90
    sget-object v0, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/e$a;)V

    .line 91
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 82
    iget-object v0, p0, Landroidx/lifecycle/q;->a:Landroidx/lifecycle/q$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/q$a;)V

    .line 83
    sget-object v0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/e$a;)V

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 102
    sget-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/e$a;)V

    .line 103
    return-void
.end method

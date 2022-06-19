.class public Landroidx/fragment/app/o;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Lc0/a$b;
.implements Lc0/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/o$a;
    }
.end annotation


# instance fields
.field public final h:Landroidx/fragment/app/v;

.field public final i:Landroidx/lifecycle/k;

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    new-instance v0, Landroidx/fragment/app/o$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/o$a;-><init>(Landroidx/fragment/app/o;)V

    .line 3
    new-instance v1, Landroidx/fragment/app/v;

    invoke-direct {v1, v0}, Landroidx/fragment/app/v;-><init>(Landroidx/fragment/app/x;)V

    .line 4
    iput-object v1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 5
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/fragment/app/o;->i:Landroidx/lifecycle/k;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/o;->l:Z

    .line 7
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/savedstate/b;

    .line 8
    iget-object v0, v0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    .line 9
    new-instance v1, Landroidx/fragment/app/m;

    invoke-direct {v1, p0}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/o;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/a;->b(Ljava/lang/String;Landroidx/savedstate/a$b;)V

    .line 10
    new-instance v0, Landroidx/fragment/app/n;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/o;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->l(Lc/b;)V

    return-void
.end method

.method public static p(Landroidx/fragment/app/a0;Landroidx/lifecycle/f$c;)Z
    .locals 7

    .line 1
    sget-object v0, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;

    .line 2
    iget-object p0, p0, Landroidx/fragment/app/a0;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->i()Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-nez v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/a0;

    move-result-object v5

    .line 6
    invoke-static {v5, p1}, Landroidx/fragment/app/o;->p(Landroidx/fragment/app/a0;Landroidx/lifecycle/f$c;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 7
    :cond_2
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/u0;

    const-string v6, "setCurrentState"

    if-eqz v5, :cond_4

    .line 8
    invoke-virtual {v5}, Landroidx/fragment/app/u0;->c()V

    .line 9
    iget-object v5, v5, Landroidx/fragment/app/u0;->b:Landroidx/lifecycle/k;

    .line 10
    iget-object v5, v5, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    .line 11
    invoke-virtual {v5, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    .line 12
    iget-object v3, v4, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/u0;

    .line 13
    iget-object v3, v3, Landroidx/fragment/app/u0;->b:Landroidx/lifecycle/k;

    .line 14
    invoke-virtual {v3, v6}, Landroidx/lifecycle/k;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, p1}, Landroidx/lifecycle/k;->g(Landroidx/lifecycle/f$c;)V

    const/4 v3, 0x1

    .line 16
    :cond_4
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/k;

    .line 17
    iget-object v5, v5, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    .line 18
    invoke-virtual {v5, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_0

    .line 19
    iget-object v3, v4, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/k;

    .line 20
    invoke-virtual {v3, v6}, Landroidx/lifecycle/k;->d(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, p1}, Landroidx/lifecycle/k;->g(Landroidx/lifecycle/f$c;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Landroidx/fragment/app/o;->j:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Landroidx/fragment/app/o;->k:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Landroidx/fragment/app/o;->l:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Lb1/a;->b(Landroidx/lifecycle/j;)Lb1/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lb1/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 13
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/a0;->y(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public o()Landroidx/fragment/app/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->a()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->a()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/a0;->k(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/o;->i:Landroidx/lifecycle/k;

    sget-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/f$b;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object p1, p1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {p1}, Landroidx/fragment/app/a0;->m()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p2, v1}, Landroidx/fragment/app/a0;->n(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/a0;->f:Landroidx/fragment/app/y;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/y;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 7
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    .line 8
    iget-object v0, v0, Landroidx/fragment/app/a0;->f:Landroidx/fragment/app/y;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/y;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v0}, Landroidx/fragment/app/a0;->o()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/o;->i:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v0}, Landroidx/fragment/app/a0;->p()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 3
    iget-object p1, p1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object p1, p1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/a0;->l(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 5
    iget-object p1, p1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object p1, p1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/a0;->r(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/a0;->q(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->a()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/a0;->s(Landroid/view/Menu;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->k:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->w(I)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/o;->i:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/a0;->u(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/o;->i:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/f$b;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Landroidx/fragment/app/a0;->B:Z

    .line 6
    iput-boolean v1, v0, Landroidx/fragment/app/a0;->C:Z

    .line 7
    iget-object v2, v0, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 8
    iput-boolean v1, v2, Landroidx/fragment/app/d0;->h:Z

    const/4 v1, 0x7

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a0;->w(I)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 3
    iget-object p2, p2, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object p2, p2, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/a0;->v(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->a()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/o;->k:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 5
    iget-object v1, v1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v1, v1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a0;->C(Z)Z

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/o;->l:Z

    .line 4
    iget-boolean v1, p0, Landroidx/fragment/app/o;->j:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5
    iput-boolean v2, p0, Landroidx/fragment/app/o;->j:Z

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 7
    iget-object v1, v1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v1, v1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    .line 8
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->B:Z

    .line 9
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->C:Z

    .line 10
    iget-object v3, v1, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 11
    iput-boolean v0, v3, Landroidx/fragment/app/d0;->h:Z

    const/4 v3, 0x4

    .line 12
    invoke-virtual {v1, v3}, Landroidx/fragment/app/a0;->w(I)V

    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v1, v1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/a0;->C(Z)Z

    .line 15
    iget-object v1, p0, Landroidx/fragment/app/o;->i:Landroidx/lifecycle/k;

    sget-object v2, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/f$b;)V

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 17
    iget-object v1, v1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v1, v1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    .line 18
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->B:Z

    .line 19
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->C:Z

    .line 20
    iget-object v2, v1, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 21
    iput-boolean v0, v2, Landroidx/fragment/app/d0;->h:Z

    const/4 v0, 0x5

    .line 22
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a0;->w(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->l:Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;

    invoke-static {v1, v2}, Landroidx/fragment/app/o;->p(Landroidx/fragment/app/a0;Landroidx/lifecycle/f$c;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 5
    iget-object v1, v1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v1, v1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    .line 6
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->C:Z

    .line 7
    iget-object v2, v1, Landroidx/fragment/app/a0;->J:Landroidx/fragment/app/d0;

    .line 8
    iput-boolean v0, v2, Landroidx/fragment/app/d0;->h:Z

    const/4 v0, 0x4

    .line 9
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a0;->w(I)V

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/o;->i:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public q()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

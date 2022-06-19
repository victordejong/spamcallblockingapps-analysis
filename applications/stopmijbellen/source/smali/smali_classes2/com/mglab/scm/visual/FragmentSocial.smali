.class public Lcom/mglab/scm/visual/FragmentSocial;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# static fields
.field public static b:Lm8/i;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public a:Lbutterknife/Unbinder;

.field public frameSocial:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/mglab/scm/visual/FragmentSocial;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionButtonClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    sget-object v0, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    invoke-virtual {v0}, Lm8/i;->e()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0060

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentSocial;->a:Lbutterknife/Unbinder;

    .line 3
    new-instance p2, Lm8/i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lm8/i;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sput-object p2, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "number"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "openFeedback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5
    iput-object p3, p2, Lm8/i;->c:Ljava/lang/String;

    .line 6
    iput-boolean v0, p2, Lm8/i;->p:Z

    .line 7
    invoke-virtual {p2}, Lm8/i;->c()V

    .line 8
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentSocial;->frameSocial:Landroid/view/View;

    const p3, 0x7f0900c2

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f060049

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f060048

    :goto_0
    invoke-static {p3, v0}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 5

    .line 1
    invoke-static {}, Lf8/g;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    invoke-virtual {v0}, Lm8/i;->d()Lm8/d;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    invoke-virtual {v0}, Lm8/i;->d()Lm8/d;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lm8/d;->d:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    const-class v1, Lh8/l;

    .line 6
    new-instance v2, Lw8/q;

    invoke-direct {v2, v1}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lw8/n;

    .line 7
    sget-object v3, Lh8/m;->z:Lx8/b;

    .line 8
    invoke-virtual {v3, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v1, v3

    sget-object v0, Lh8/m;->A:Lx8/b;

    .line 9
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v1, v4

    .line 10
    invoke-virtual {v2, v1}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    new-array v1, v4, [Lw8/n;

    sget-object v2, Lh8/m;->h:Lx8/b;

    sget-object v4, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    .line 11
    iget-object v4, v4, Lm8/i;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v4}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v1, v3

    .line 13
    new-instance v2, Lw8/r;

    invoke-direct {v2, v0, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 14
    invoke-virtual {v2}, Lw8/r;->i()Lc9/g;

    .line 15
    sget-object v0, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    .line 16
    iget-object v0, v0, Lm8/i;->c:Ljava/lang/String;

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/g;->D(Landroid/content/Context;)V

    .line 18
    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 19
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentSocial;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    return-void
.end method

.method public onMessageEventEditFeedback(Lk8/g;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentSocial;->onActionButtonClick()V

    return-void
.end method

.method public onRetryButton()V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    sget-object v0, Lcom/mglab/scm/visual/FragmentSocial;->b:Lm8/i;

    .line 2
    iget-object v1, v0, Lm8/i;->o:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v1, v0, Lm8/i;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Lm8/i;->l:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, v0, Lm8/i;->k:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x10

    .line 6
    invoke-static {v1}, Lf8/g;->B(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ls6/k;

    invoke-direct {v2}, Ls6/k;-><init>()V

    const-string v3, ""

    .line 8
    invoke-virtual {v2, v3}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v3

    .line 9
    iget-object v4, v2, Ls6/k;->a:Lt6/e;

    const-string v5, "initserver"

    invoke-virtual {v4, v5, v3}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Ls6/i;->toString()Ljava/lang/String;

    .line 11
    invoke-virtual {v2}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "body"

    invoke-static {v1, v4, v3}, Lg8/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ls6/k;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->toString()Ljava/lang/String;

    .line 12
    sget-object v3, Lm8/i;->r:Landroid/content/Context;

    invoke-static {v3}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lm8/i;->r:Landroid/content/Context;

    .line 13
    invoke-static {v6}, Lf8/h;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "app_preinit.php"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lw7/p;

    invoke-virtual {v3, v5}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    sget-object v5, Lm8/i;->r:Landroid/content/Context;

    .line 14
    invoke-static {v5}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceid"

    invoke-interface {v3, v6, v5}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const/16 v5, 0x17e

    .line 15
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appvc"

    invoke-interface {v3, v6, v5}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    sget-object v5, Lm8/i;->r:Landroid/content/Context;

    .line 16
    invoke-static {v5}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tcc"

    invoke-interface {v3, v6, v5}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const-string v5, "data"

    .line 17
    invoke-interface {v3, v5, v1}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    sget-object v5, Lm8/i;->r:Landroid/content/Context;

    .line 18
    invoke-static {v5}, Lf8/h;->i(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "commandid"

    invoke-interface {v3, v6, v5}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 19
    invoke-static {}, Lf8/g;->y()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    goto :goto_0

    :cond_0
    const-string v5, "0"

    :goto_0
    const-string v6, "ispro"

    invoke-interface {v3, v6, v5}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 20
    invoke-virtual {v2}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lg8/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ls6/k;

    move-result-object v2

    invoke-interface {v3, v2}, Lz7/a;->b(Ls6/k;)Ljava/lang/Object;

    check-cast v3, Lz7/b;

    .line 21
    invoke-interface {v3}, Lz7/b;->d()Lc8/a;

    move-result-object v2

    new-instance v3, Ly2/k;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v1, v4}, Ly2/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 22
    check-cast v2, Lm7/g;

    invoke-virtual {v2, v3}, Lm7/g;->k(Lm7/d;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->m(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    const p2, 0x7f110041

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    check-cast p1, Lf/j;

    invoke-virtual {p1}, Lf/j;->s()Lf/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lf/a;->p(I)V

    .line 5
    :cond_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/t;

    invoke-direct {p2}, Lk8/t;-><init>()V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method

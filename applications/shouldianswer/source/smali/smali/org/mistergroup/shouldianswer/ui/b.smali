.class public abstract Lorg/mistergroup/shouldianswer/ui/b;
.super Lorg/mistergroup/shouldianswer/ui/c;
.source "BaseActivityToolbarFragment.kt"


# instance fields
.field protected a:Lorg/mistergroup/shouldianswer/ui/a;

.field private b:Landroidx/appcompat/widget/Toolbar;

.field private c:Landroidx/appcompat/app/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lorg/mistergroup/shouldianswer/ui/a;
    .locals 2

    .line 13
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->a:Lorg/mistergroup/shouldianswer/ui/a;

    if-nez v0, :cond_0

    const-string v1, "baseActivity"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/b;->a:Lorg/mistergroup/shouldianswer/ui/a;

    const-string v0, "baseActivity"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    .line 52
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroidx/core/app/f;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 55
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "ACTIVITY:onAppToolbarClick upIntent=null -> finish()"

    invoke-static {v0, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    goto :goto_1

    .line 58
    :cond_1
    invoke-static {v1, v2}, Landroidx/core/app/f;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/b;->a:Lorg/mistergroup/shouldianswer/ui/a;

    if-nez v1, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "baseActivity.intent"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_0

    .line 72
    :cond_3
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "ACTIVITY:onAppToolbarClick finish"

    invoke-static {v0, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 76
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    goto :goto_1

    .line 59
    :cond_4
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "ACTIVITY:onAppToolbarClick startActivity"

    invoke-static {v0, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 68
    invoke-virtual {p1, v2}, Lorg/mistergroup/shouldianswer/ui/a;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    :goto_1
    return-void
.end method

.method public abstract a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end method

.method protected final b()Landroidx/appcompat/app/a;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->c:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method public abstract c()Landroidx/appcompat/widget/Toolbar;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/b;->c()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->b:Landroidx/appcompat/widget/Toolbar;

    .line 20
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/a;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->a:Lorg/mistergroup/shouldianswer/ui/a;

    .line 21
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->a:Lorg/mistergroup/shouldianswer/ui/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "baseActivity"

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/ui/a;->a(Ljava/lang/ref/WeakReference;)V

    .line 24
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    const-string v2, "arguments!!"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    :cond_2
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->a:Lorg/mistergroup/shouldianswer/ui/a;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "baseActivity.intent"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/b;->setArguments(Landroid/os/Bundle;)V

    .line 27
    :cond_4
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->a:Lorg/mistergroup/shouldianswer/ui/a;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/b;->b:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/ui/a;->a(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->a:Lorg/mistergroup/shouldianswer/ui/a;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/a;->c()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->a(Z)V

    .line 30
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->b(Z)V

    .line 31
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->c:Landroidx/appcompat/app/a;

    .line 34
    :cond_7
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->b:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_8

    .line 35
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/b$a;

    invoke-direct {v2, p0}, Lorg/mistergroup/shouldianswer/ui/b$a;-><init>(Lorg/mistergroup/shouldianswer/ui/b;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_8
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/b;->a:Lorg/mistergroup/shouldianswer/ui/a;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0, v0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V

    goto :goto_0

    .line 20
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type org.mistergroup.shouldianswer.ui.BaseActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 42
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

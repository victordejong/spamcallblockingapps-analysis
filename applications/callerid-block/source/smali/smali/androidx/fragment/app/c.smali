.class Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c$e;,
        Landroidx/fragment/app/c$d;
    }
.end annotation


# direct methods
.method static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/c$d;Landroidx/fragment/app/q$g;)V
    .locals 7

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v5, Ld/h/i/a;

    invoke-direct {v5}, Ld/h/i/a;-><init>()V

    new-instance v0, Landroidx/fragment/app/c$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$a;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v0}, Ld/h/i/a;->c(Ld/h/i/a$a;)V

    invoke-interface {p2, p0, v5}, Landroidx/fragment/app/q$g;->b(Landroidx/fragment/app/Fragment;Ld/h/i/a;)V

    iget-object v0, p1, Landroidx/fragment/app/c$d;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/fragment/app/c$e;

    iget-object p1, p1, Landroidx/fragment/app/c$d;->a:Landroid/view/animation/Animation;

    invoke-direct {v0, p1, v1, v2}, Landroidx/fragment/app/c$e;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->p1(Landroid/view/View;)V

    new-instance p1, Landroidx/fragment/app/c$b;

    invoke-direct {p1, v1, p0, p2, v5}, Landroidx/fragment/app/c$b;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/q$g;Ld/h/i/a;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/c$d;->b:Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->q1(Landroid/animation/Animator;)V

    new-instance v6, Landroidx/fragment/app/c$c;

    move-object v0, v6

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/c$c;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/q$g;Ld/h/i/a;)V

    invoke-virtual {p1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method static b(Landroid/content/Context;Landroidx/fragment/app/d;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/c$d;
    .locals 6

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->F()I

    move-result v0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->E()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->u1(I)V

    iget v3, p2, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {p1, v3}, Landroidx/fragment/app/d;->e(I)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget v4, Ld/m/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p2, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/Fragment;->n0(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p0, Landroidx/fragment/app/c$d;

    invoke-direct {p0, p1}, Landroidx/fragment/app/c$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    :cond_2
    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/Fragment;->o0(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p0, Landroidx/fragment/app/c$d;

    invoke-direct {p0, p1}, Landroidx/fragment/app/c$d;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_3
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v4, Landroidx/fragment/app/c$d;

    invoke-direct {v4, p2}, Landroidx/fragment/app/c$d;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception p0

    throw p0

    :cond_5
    :goto_0
    if-nez v2, :cond_7

    :try_start_1
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v2, Landroidx/fragment/app/c$d;

    invoke-direct {v2, p2}, Landroidx/fragment/app/c$d;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    move-exception p2

    if-nez p1, :cond_6

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p0, Landroidx/fragment/app/c$d;

    invoke-direct {p0, p1}, Landroidx/fragment/app/c$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    :cond_6
    throw p2

    :cond_7
    if-nez v0, :cond_8

    return-object v3

    :cond_8
    invoke-static {v0, p3}, Landroidx/fragment/app/c;->c(IZ)I

    move-result p1

    if-gez p1, :cond_9

    return-object v3

    :cond_9
    new-instance p2, Landroidx/fragment/app/c$d;

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/fragment/app/c$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p2
.end method

.method private static c(IZ)I
    .locals 1

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget p0, Ld/m/a;->fragment_close_enter:I

    goto :goto_0

    :cond_1
    sget p0, Ld/m/a;->fragment_close_exit:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget p0, Ld/m/a;->fragment_fade_enter:I

    goto :goto_0

    :cond_3
    sget p0, Ld/m/a;->fragment_fade_exit:I

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    sget p0, Ld/m/a;->fragment_open_enter:I

    goto :goto_0

    :cond_5
    sget p0, Ld/m/a;->fragment_open_exit:I

    :goto_0
    return p0
.end method

.class final Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/d$b;,
        Landroidx/fragment/app/d$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/d$a;
    .locals 5

    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 1123
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result p3

    goto :goto_0

    .line 1125
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result p3

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1129
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result p3

    goto :goto_0

    .line 1131
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result p3

    :goto_0
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 55
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v4, Landroidx/fragment/a$b;->visible_removing_fragment_view_tag:I

    .line 56
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 57
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v4, Landroidx/fragment/a$b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 60
    :cond_3
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v3

    .line 63
    :cond_4
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 65
    new-instance p0, Landroidx/fragment/app/d$a;

    invoke-direct {p0, v2}, Landroidx/fragment/app/d$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 68
    :cond_5
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 70
    new-instance p0, Landroidx/fragment/app/d$a;

    invoke-direct {p0, p1}, Landroidx/fragment/app/d$a;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_6
    if-nez p3, :cond_d

    if-eqz v0, :cond_d

    const/4 p1, -0x1

    const/16 p3, 0x1001

    if-eq v0, p3, :cond_b

    const/16 p3, 0x1003

    if-eq v0, p3, :cond_9

    const/16 p3, 0x2002

    if-eq v0, p3, :cond_7

    const/4 p3, -0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 1221
    sget p1, Landroidx/fragment/a$a;->fragment_close_enter:I

    goto :goto_1

    :cond_8
    sget p1, Landroidx/fragment/a$a;->fragment_close_exit:I

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_a

    .line 1224
    sget p1, Landroidx/fragment/a$a;->fragment_fade_enter:I

    goto :goto_1

    :cond_a
    sget p1, Landroidx/fragment/a$a;->fragment_fade_exit:I

    goto :goto_1

    :cond_b
    if-eqz p2, :cond_c

    .line 1218
    sget p1, Landroidx/fragment/a$a;->fragment_open_enter:I

    goto :goto_1

    :cond_c
    sget p1, Landroidx/fragment/a$a;->fragment_open_exit:I

    :goto_1
    move p3, p1

    :cond_d
    :goto_2
    if-eqz p3, :cond_11

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 85
    :try_start_0
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 87
    new-instance v0, Landroidx/fragment/app/d$a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/d$a;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_e
    const/4 v1, 0x1

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    :catch_1
    move-exception p0

    .line 92
    throw p0

    :cond_f
    :goto_3
    if-nez v1, :cond_11

    .line 100
    :try_start_1
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 102
    new-instance v0, Landroidx/fragment/app/d$a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/d$a;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p2

    if-nez p1, :cond_10

    .line 110
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 112
    new-instance p1, Landroidx/fragment/app/d$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/d$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 107
    :cond_10
    throw p2

    :cond_11
    return-object v3
.end method

.method static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/d$a;Landroidx/fragment/app/t$a;)V
    .locals 7

    .line 146
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 147
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 148
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 149
    new-instance v5, Landroidx/core/os/a;

    invoke-direct {v5}, Landroidx/core/os/a;-><init>()V

    .line 150
    new-instance v0, Landroidx/fragment/app/d$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/d$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v0}, Landroidx/core/os/a;->a(Landroidx/core/os/a$a;)V

    .line 161
    invoke-interface {p2, p0, v5}, Landroidx/fragment/app/t$a;->a(Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V

    .line 162
    iget-object v0, p1, Landroidx/fragment/app/d$a;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Landroidx/fragment/app/d$b;

    iget-object p1, p1, Landroidx/fragment/app/d$a;->a:Landroid/view/animation/Animation;

    invoke-direct {v0, p1, v1, v2}, Landroidx/fragment/app/d$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 165
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 166
    new-instance p1, Landroidx/fragment/app/d$2;

    invoke-direct {p1, v1, p0, p2, v5}, Landroidx/fragment/app/d$2;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/t$a;Landroidx/core/os/a;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 193
    :cond_0
    iget-object v6, p1, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    .line 194
    iget-object p1, p1, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 195
    new-instance p1, Landroidx/fragment/app/d$3;

    move-object v0, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/d$3;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/t$a;Landroidx/core/os/a;)V

    invoke-virtual {v6, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    return-void
.end method

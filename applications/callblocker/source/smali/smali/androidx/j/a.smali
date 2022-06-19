.class Landroidx/j/a;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/a$a;
    }
.end annotation


# direct methods
.method static a(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    .line 50
    :cond_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 43
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 44
    instance-of v4, v0, Landroidx/j/a$a;

    if-eqz v4, :cond_2

    .line 45
    check-cast v0, Landroidx/j/a$a;

    invoke-interface {v0, p0}, Landroidx/j/a$a;->onAnimationPause(Landroid/animation/Animator;)V

    .line 42
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 2

    .prologue
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 34
    :cond_0
    return-void
.end method

.method static b(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 54
    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    .line 66
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 60
    instance-of v4, v0, Landroidx/j/a$a;

    if-eqz v4, :cond_2

    .line 61
    check-cast v0, Landroidx/j/a$a;

    invoke-interface {v0, p0}, Landroidx/j/a$a;->onAnimationResume(Landroid/animation/Animator;)V

    .line 58
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

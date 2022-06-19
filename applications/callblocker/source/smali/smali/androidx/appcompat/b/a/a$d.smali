.class Landroidx/appcompat/b/a/a$d;
.super Landroidx/appcompat/b/a/a$f;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/animation/ObjectAnimator;

.field private final b:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/a$f;-><init>(Landroidx/appcompat/b/a/a$1;)V

    .line 393
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    .line 394
    if-eqz p2, :cond_1

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    .line 395
    :goto_0
    if-eqz p2, :cond_2

    move v0, v1

    .line 396
    :goto_1
    new-instance v3, Landroidx/appcompat/b/a/a$e;

    invoke-direct {v3, p1, p2}, Landroidx/appcompat/b/a/a$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .line 398
    const-string/jumbo v4, "currentIndex"

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v2, v5, v1

    aput v0, v5, v6

    .line 399
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 400
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 401
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 403
    :cond_0
    invoke-virtual {v3}, Landroidx/appcompat/b/a/a$e;->a()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 404
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    iput-boolean p3, p0, Landroidx/appcompat/b/a/a$d;->b:Z

    .line 406
    iput-object v0, p0, Landroidx/appcompat/b/a/a$d;->a:Landroid/animation/ObjectAnimator;

    .line 407
    return-void

    :cond_1
    move v2, v1

    .line 394
    goto :goto_0

    .line 395
    :cond_2
    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Landroidx/appcompat/b/a/a$d;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 417
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroidx/appcompat/b/a/a$d;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 427
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Landroidx/appcompat/b/a/a$d;->b:Z

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroidx/appcompat/b/a/a$d;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 422
    return-void
.end method

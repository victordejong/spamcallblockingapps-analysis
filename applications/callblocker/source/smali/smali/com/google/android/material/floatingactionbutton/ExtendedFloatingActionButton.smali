.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "ExtendedFloatingActionButton.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;
    }
.end annotation


# static fields
.field static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:I


# instance fields
.field private final e:Landroid/graphics/Rect;

.field private final f:Lcom/google/android/material/floatingactionbutton/d;

.field private final g:Lcom/google/android/material/floatingactionbutton/d;

.field private final h:Lcom/google/android/material/floatingactionbutton/d;

.field private final i:Lcom/google/android/material/floatingactionbutton/d;

.field private final j:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b",
            "<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    sput v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->c:I

    .line 597
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a:Landroid/util/Property;

    .line 616
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->b:Landroid/util/Property;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->f:Lcom/google/android/material/floatingactionbutton/d;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V

    return-void
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 524
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->b()Z

    move-result v0

    .line 529
    if-nez v0, :cond_1

    .line 530
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->a()V

    .line 531
    invoke-interface {p1, p2}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->measure(II)V

    .line 536
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->c()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 537
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 562
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 563
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 566
    :cond_2
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i:Lcom/google/android/material/floatingactionbutton/d;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 590
    invoke-static {p0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->g:Lcom/google/android/material/floatingactionbutton/d;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/d;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:Lcom/google/android/material/floatingactionbutton/d;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->e:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b",
            "<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->j:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    return-object v0
.end method

.method getCollapsedSize()I
    .locals 2

    .prologue
    .line 637
    invoke-static {p0}, Landroidx/core/h/u;->i(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Landroidx/core/h/u;->j(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 638
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIconSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 637
    return v0
.end method

.method public getExtendMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->g:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->b()Lcom/google/android/material/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->b()Lcom/google/android/material/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->b()Lcom/google/android/material/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getShrinkMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->f:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->b()Lcom/google/android/material/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    .line 210
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->k:Z

    .line 212
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->f:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->a()V

    .line 214
    :cond_0
    return-void
.end method

.method public setExtendMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->g:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/a/h;)V

    .line 485
    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Lcom/google/android/material/a/h;)V

    .line 494
    return-void
.end method

.method public setExtended(Z)V
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->k:Z

    if-ne v0, p1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->g:Lcom/google/android/material/floatingactionbutton/d;

    .line 232
    :goto_1
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d;->a()V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->f:Lcom/google/android/material/floatingactionbutton/d;

    goto :goto_1
.end method

.method public setHideMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/a/h;)V

    .line 461
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Lcom/google/android/material/a/h;)V

    .line 470
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/a/h;)V

    .line 437
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Lcom/google/android/material/a/h;)V

    .line 446
    return-void
.end method

.method public setShrinkMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->f:Lcom/google/android/material/floatingactionbutton/d;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/a/h;)V

    .line 511
    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Lcom/google/android/material/a/h;)V

    .line 520
    return-void
.end method

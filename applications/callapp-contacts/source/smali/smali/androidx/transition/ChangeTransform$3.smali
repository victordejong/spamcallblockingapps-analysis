.class final Landroidx/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/graphics/Matrix;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroidx/transition/ChangeTransform$c;

.field final synthetic e:Landroidx/transition/ChangeTransform$b;

.field final synthetic f:Landroidx/transition/ChangeTransform;

.field private g:Z

.field private h:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$c;Landroidx/transition/ChangeTransform$b;)V
    .locals 0

    .line 331
    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->f:Landroidx/transition/ChangeTransform;

    iput-boolean p2, p0, Landroidx/transition/ChangeTransform$3;->a:Z

    iput-object p3, p0, Landroidx/transition/ChangeTransform$3;->b:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroidx/transition/ChangeTransform$3;->c:Landroid/view/View;

    iput-object p5, p0, Landroidx/transition/ChangeTransform$3;->d:Landroidx/transition/ChangeTransform$c;

    iput-object p6, p0, Landroidx/transition/ChangeTransform$3;->e:Landroidx/transition/ChangeTransform$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 333
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->h:Landroid/graphics/Matrix;

    return-void
.end method

.method private a(Landroid/graphics/Matrix;)V
    .locals 2

    .line 366
    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 367
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->c:Landroid/view/View;

    sget v0, Landroidx/transition/o$a;->transition_transform:I

    iget-object v1, p0, Landroidx/transition/ChangeTransform$3;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 368
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->d:Landroidx/transition/ChangeTransform$c;

    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/transition/ChangeTransform$c;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 337
    iput-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->g:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 342
    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->g:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 343
    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->f:Landroidx/transition/ChangeTransform;

    iget-boolean p1, p1, Landroidx/transition/ChangeTransform;->a:Z

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform$3;->a(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->c:Landroid/view/View;

    sget v1, Landroidx/transition/o$a;->transition_transform:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 347
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->c:Landroid/view/View;

    sget v1, Landroidx/transition/o$a;->parent_matrix:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 350
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->c:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/transition/ai;->c(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 351
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->d:Landroidx/transition/ChangeTransform$c;

    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/transition/ChangeTransform$c;->a(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 0

    .line 356
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->e:Landroidx/transition/ChangeTransform$b;

    .line 1590
    iget-object p1, p1, Landroidx/transition/ChangeTransform$b;->a:Landroid/graphics/Matrix;

    .line 357
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform$3;->a(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    .line 362
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->c:Landroid/view/View;

    invoke-static {p1}, Landroidx/transition/ChangeTransform;->a(Landroid/view/View;)V

    return-void
.end method

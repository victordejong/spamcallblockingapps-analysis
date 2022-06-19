.class Landroidx/k/a/a/c$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/k/a/a/i;

.field c:Landroid/animation/AnimatorSet;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/k/a/a/c$a;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 599
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 600
    if-eqz p2, :cond_3

    .line 601
    iget v0, p2, Landroidx/k/a/a/c$a;->a:I

    iput v0, p0, Landroidx/k/a/a/c$a;->a:I

    .line 602
    iget-object v0, p2, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p2, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    invoke-virtual {v0}, Landroidx/k/a/a/i;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 604
    if-eqz p4, :cond_1

    .line 605
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/k/a/a/i;

    iput-object v0, p0, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    .line 609
    :goto_0
    iget-object v0, p0, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    invoke-virtual {v0}, Landroidx/k/a/a/i;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/k/a/a/i;

    iput-object v0, p0, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    .line 610
    iget-object v0, p0, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    invoke-virtual {v0, p3}, Landroidx/k/a/a/i;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 611
    iget-object v0, p0, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    iget-object v2, p2, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    invoke-virtual {v2}, Landroidx/k/a/a/i;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/k/a/a/i;->setBounds(Landroid/graphics/Rect;)V

    .line 612
    iget-object v0, p0, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    invoke-virtual {v0, v1}, Landroidx/k/a/a/i;->a(Z)V

    .line 614
    :cond_0
    iget-object v0, p2, Landroidx/k/a/a/c$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p2, Landroidx/k/a/a/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/k/a/a/c$a;->d:Ljava/util/ArrayList;

    .line 617
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0, v2}, Landroidx/b/a;-><init>(I)V

    iput-object v0, p0, Landroidx/k/a/a/c$a;->e:Landroidx/b/a;

    .line 618
    :goto_1
    if-ge v1, v2, :cond_2

    .line 619
    iget-object v0, p2, Landroidx/k/a/a/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 620
    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v3

    .line 621
    iget-object v4, p2, Landroidx/k/a/a/c$a;->e:Landroidx/b/a;

    invoke-virtual {v4, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 622
    iget-object v4, p0, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    invoke-virtual {v4, v0}, Landroidx/k/a/a/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 623
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 624
    iget-object v4, p0, Landroidx/k/a/a/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v4, p0, Landroidx/k/a/a/c$a;->e:Landroidx/b/a;

    invoke-virtual {v4, v3, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 607
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/k/a/a/i;

    iput-object v0, p0, Landroidx/k/a/a/c$a;->b:Landroidx/k/a/a/i;

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {p0}, Landroidx/k/a/a/c$a;->a()V

    .line 630
    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Landroidx/k/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    .line 651
    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroidx/k/a/a/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 652
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Landroidx/k/a/a/c$a;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 634
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

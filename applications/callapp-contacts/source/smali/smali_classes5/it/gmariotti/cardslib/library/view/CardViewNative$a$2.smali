.class final Lit/gmariotti/cardslib/library/view/CardViewNative$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/view/CardViewNative$a;->d(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$a$2;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 903
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$a$2;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 1834
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a:Landroid/view/View;

    const/16 v0, 0x8

    .line 903
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$a$2;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 2834
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->b:Lit/gmariotti/cardslib/library/a/b;

    const/4 v0, 0x0

    .line 904
    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/b;->setExpanded(Z)V

    .line 906
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$a$2;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 3834
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 906
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnCollapseAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 907
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$a$2;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 4834
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 907
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnCollapseAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$b;

    move-result-object p1

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/b$b;->a()V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

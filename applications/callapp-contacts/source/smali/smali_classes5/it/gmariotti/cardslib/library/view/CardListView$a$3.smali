.class final Lit/gmariotti/cardslib/library/view/CardListView$a$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardListView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/a/a;

.field final synthetic b:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/a/a;Landroid/widget/AbsListView;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$3;->a:Lit/gmariotti/cardslib/library/view/a/a;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$3;->b:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 364
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 365
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$3;->a:Lit/gmariotti/cardslib/library/view/a/a;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lit/gmariotti/cardslib/library/view/a/a;->setExpanded(Z)V

    .line 367
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$3;->b:Landroid/widget/AbsListView;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/CardListView$a;->a(Landroid/widget/AbsListView;)V

    .line 369
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$3;->a:Lit/gmariotti/cardslib/library/view/a/a;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object p1

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/b$d;->a()V

    :cond_0
    return-void
.end method

.class final Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/a/a;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/a/a;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$3;->a:Lit/gmariotti/cardslib/library/view/a/a;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$3;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 269
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 270
    iget-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$3;->a:Lit/gmariotti/cardslib/library/view/a/a;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lit/gmariotti/cardslib/library/view/a/a;->setExpanded(Z)V

    .line 272
    iget-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$3;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$3;->a:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 274
    iget-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$3;->a:Lit/gmariotti/cardslib/library/view/a/a;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object p1

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/b$d;->a()V

    :cond_0
    return-void
.end method

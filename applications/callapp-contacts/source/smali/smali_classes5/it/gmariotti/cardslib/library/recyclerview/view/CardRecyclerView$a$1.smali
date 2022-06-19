.class final Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lit/gmariotti/cardslib/library/view/a/a;

.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/view/View;Lit/gmariotti/cardslib/library/view/a/a;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;->a:Landroid/view/View;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;->b:Lit/gmariotti/cardslib/library/view/a/a;

    iput-object p3, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;->b:Lit/gmariotti/cardslib/library/view/a/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lit/gmariotti/cardslib/library/view/a/a;->setExpanded(Z)V

    .line 217
    iget-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;->b:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 219
    iget-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$1;->b:Lit/gmariotti/cardslib/library/view/a/a;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnCollapseAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnCollapseAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$b;

    move-result-object p1

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/b$b;->a()V

    :cond_0
    return-void
.end method

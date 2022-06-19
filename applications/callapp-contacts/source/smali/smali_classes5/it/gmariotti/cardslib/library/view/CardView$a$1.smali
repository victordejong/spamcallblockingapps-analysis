.class final Lit/gmariotti/cardslib/library/view/CardView$a$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/view/CardView$a;->c(Lit/gmariotti/cardslib/library/view/CardView$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/CardView$b;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/CardView$b;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$a$1;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 865
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$a$1;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    .line 1820
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    const/4 v0, 0x1

    .line 865
    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/b;->setExpanded(Z)V

    .line 867
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$a$1;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    .line 2820
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 867
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 868
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$a$1;->a:Lit/gmariotti/cardslib/library/view/CardView$b;

    .line 3820
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardView$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 868
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object p1

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/b$d;->a()V

    :cond_0
    return-void
.end method

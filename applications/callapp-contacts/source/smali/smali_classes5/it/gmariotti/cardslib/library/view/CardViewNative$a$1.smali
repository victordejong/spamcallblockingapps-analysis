.class final Lit/gmariotti/cardslib/library/view/CardViewNative$a$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/view/CardViewNative$a;->c(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V
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

    .line 865
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$a$1;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 868
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$a$1;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 1834
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->b:Lit/gmariotti/cardslib/library/a/b;

    const/4 v0, 0x1

    .line 868
    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/b;->setExpanded(Z)V

    .line 870
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$a$1;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 2834
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 870
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 871
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$a$1;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 3834
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->b:Lit/gmariotti/cardslib/library/a/b;

    .line 871
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object p1

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/b$d;->a()V

    :cond_0
    return-void
.end method

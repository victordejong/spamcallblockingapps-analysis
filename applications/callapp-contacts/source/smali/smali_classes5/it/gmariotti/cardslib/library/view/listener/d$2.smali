.class final Lit/gmariotti/cardslib/library/view/listener/d$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:I

.field final synthetic c:Lit/gmariotti/cardslib/library/view/listener/d;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/d;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .line 267
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->c:Lit/gmariotti/cardslib/library/view/listener/d;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->a:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 271
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->c:Lit/gmariotti/cardslib/library/view/listener/d;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/d;->d(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/view/listener/d$a;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->c:Lit/gmariotti/cardslib/library/view/listener/d;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/listener/d;->b(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->c:Lit/gmariotti/cardslib/library/view/listener/d;

    invoke-static {v1}, Lit/gmariotti/cardslib/library/view/listener/d;->c(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/a/b;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lit/gmariotti/cardslib/library/view/listener/d$a;->a(Lit/gmariotti/cardslib/library/view/a/a;Lit/gmariotti/cardslib/library/a/b;)V

    .line 273
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->c:Lit/gmariotti/cardslib/library/view/listener/d;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/d;->b(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 274
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->c:Lit/gmariotti/cardslib/library/view/listener/d;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/d;->b(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 276
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->b:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->c:Lit/gmariotti/cardslib/library/view/listener/d;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/d;->b(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d$2;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

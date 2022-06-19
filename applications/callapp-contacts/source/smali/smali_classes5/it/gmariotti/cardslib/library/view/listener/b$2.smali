.class final Lit/gmariotti/cardslib/library/view/listener/b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:I

.field final synthetic c:Lit/gmariotti/cardslib/library/view/listener/b;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/b;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .line 263
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->c:Lit/gmariotti/cardslib/library/view/listener/b;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->a:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->c:Lit/gmariotti/cardslib/library/view/listener/b;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/b;->d(Lit/gmariotti/cardslib/library/view/listener/b;)Lit/gmariotti/cardslib/library/view/listener/b$a;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->c:Lit/gmariotti/cardslib/library/view/listener/b;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/listener/b;->b(Lit/gmariotti/cardslib/library/view/listener/b;)Landroid/view/View;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->c:Lit/gmariotti/cardslib/library/view/listener/b;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/listener/b;->c(Lit/gmariotti/cardslib/library/view/listener/b;)Ljava/lang/Object;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/b$a;->b()V

    .line 268
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->c:Lit/gmariotti/cardslib/library/view/listener/b;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/b;->b(Lit/gmariotti/cardslib/library/view/listener/b;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 269
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->c:Lit/gmariotti/cardslib/library/view/listener/b;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/b;->b(Lit/gmariotti/cardslib/library/view/listener/b;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 270
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->b:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->c:Lit/gmariotti/cardslib/library/view/listener/b;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/b;->b(Lit/gmariotti/cardslib/library/view/listener/b;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b$2;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

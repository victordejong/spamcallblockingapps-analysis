.class final Lit/gmariotti/cardslib/library/view/listener/c$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:I

.field final synthetic c:Lit/gmariotti/cardslib/library/view/listener/c;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/c;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .line 262
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->c:Lit/gmariotti/cardslib/library/view/listener/c;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->a:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 265
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->c:Lit/gmariotti/cardslib/library/view/listener/c;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/c;->d(Lit/gmariotti/cardslib/library/view/listener/c;)Lit/gmariotti/cardslib/library/view/listener/c$a;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->c:Lit/gmariotti/cardslib/library/view/listener/c;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/listener/c;->b(Lit/gmariotti/cardslib/library/view/listener/c;)Landroid/view/View;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->c:Lit/gmariotti/cardslib/library/view/listener/c;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/listener/c;->c(Lit/gmariotti/cardslib/library/view/listener/c;)Ljava/lang/Object;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/listener/c$a;->b()V

    .line 267
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->c:Lit/gmariotti/cardslib/library/view/listener/c;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/c;->b(Lit/gmariotti/cardslib/library/view/listener/c;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 268
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->c:Lit/gmariotti/cardslib/library/view/listener/c;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/c;->b(Lit/gmariotti/cardslib/library/view/listener/c;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 269
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->b:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->c:Lit/gmariotti/cardslib/library/view/listener/c;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/c;->b(Lit/gmariotti/cardslib/library/view/listener/c;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c$2;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

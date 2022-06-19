.class final Lit/gmariotti/cardslib/library/view/CardView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/view/CardView;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/CardView;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/CardView;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$1;->a:Lit/gmariotti/cardslib/library/view/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .line 442
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$1;->a:Lit/gmariotti/cardslib/library/view/CardView;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 444
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$1;->a:Lit/gmariotti/cardslib/library/view/CardView;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 445
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    const/high16 v0, -0x80000000

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    .line 446
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 447
    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardView$1;->a:Lit/gmariotti/cardslib/library/view/CardView;

    iget-object v3, v3, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 449
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$1;->a:Lit/gmariotti/cardslib/library/view/CardView;

    iget-object v2, v0, Lit/gmariotti/cardslib/library/view/CardView;->b:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/a/b;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v2

    check-cast v2, Lit/gmariotti/cardslib/library/view/CardView;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardView$1;->a:Lit/gmariotti/cardslib/library/view/CardView;

    iget-object v3, v3, Lit/gmariotti/cardslib/library/view/CardView;->q:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v1, v3}, Lit/gmariotti/cardslib/library/view/CardView$a;->a(Lit/gmariotti/cardslib/library/view/CardView;II)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lit/gmariotti/cardslib/library/view/CardView;->s:Landroid/animation/Animator;

    const/4 v0, 0x1

    return v0
.end method

.class final Lit/gmariotti/cardslib/library/view/CardListView$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardListView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:Landroid/view/View;

.field final synthetic d:Landroid/widget/AbsListView;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;)V
    .locals 1

    .line 345
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->d:Landroid/widget/AbsListView;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->a:I

    .line 347
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->b:I

    .line 348
    invoke-static {p2, p1}, Lit/gmariotti/cardslib/library/view/CardListView$a;->a(Landroid/view/View;Landroid/widget/AbsListView;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 352
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 353
    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->a:I

    if-le p1, v0, :cond_0

    .line 354
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 356
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->d:Landroid/widget/AbsListView;

    iget v2, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->a:I

    sub-int/2addr p1, v2

    iget v2, p0, Lit/gmariotti/cardslib/library/view/CardListView$a$2;->b:I

    add-int/2addr p1, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

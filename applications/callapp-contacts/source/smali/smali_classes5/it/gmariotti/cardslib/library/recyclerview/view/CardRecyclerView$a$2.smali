.class final Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:Landroid/view/View;

.field final synthetic d:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .line 245
    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->a:I

    .line 247
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->b:I

    .line 249
    invoke-static {p2, p1}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 253
    iget-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 255
    iget v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->a:I

    if-le p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    iget-object v1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    iget v3, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->a:I

    sub-int/2addr p1, v3

    iget v3, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$2;->b:I

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->a_(II)V

    :cond_0
    return-void
.end method

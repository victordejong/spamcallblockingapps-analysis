.class final Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 294
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 295
    new-instance p2, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$4;

    invoke-direct {p2, p0}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$a$4;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 2

    .line 1285
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eq p0, p1, :cond_0

    .line 1288
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 316
    instance-of v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;

    if-eqz v0, :cond_0

    .line 318
    check-cast p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;

    .line 319
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->T:Lit/gmariotti/cardslib/library/recyclerview/a/a;

    if-eqz v0, :cond_0

    .line 320
    iget-object p0, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->T:Lit/gmariotti/cardslib/library/recyclerview/a/a;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/recyclerview/a/a;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

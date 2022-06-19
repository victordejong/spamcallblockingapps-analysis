.class final Lit/gmariotti/cardslib/library/view/CardListView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 297
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

    .line 389
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 390
    new-instance p2, Lit/gmariotti/cardslib/library/view/CardListView$a$4;

    invoke-direct {p2, p0}, Lit/gmariotti/cardslib/library/view/CardListView$a$4;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic a(Landroid/view/View;Landroid/widget/AbsListView;)Landroid/view/View;
    .locals 2

    .line 1380
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eq p0, p1, :cond_0

    .line 1383
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/widget/AbsListView;)V
    .locals 1

    .line 411
    instance-of v0, p0, Lit/gmariotti/cardslib/library/view/CardListView;

    if-eqz v0, :cond_0

    .line 413
    check-cast p0, Lit/gmariotti/cardslib/library/view/CardListView;

    .line 414
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardListView;->b:Lit/gmariotti/cardslib/library/a/c;

    if-eqz v0, :cond_0

    .line 415
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/CardListView;->b:Lit/gmariotti/cardslib/library/a/c;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/c;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.class public Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "StickyHeaderLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c:Ljava/util/HashSet;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->h:I

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 577
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c()I

    .line 578
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 4

    .line 570
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 571
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;I)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(I)I

    move-result p0

    return p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;I)Landroid/view/View;
    .locals 5

    .line 267
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 271
    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 272
    invoke-direct {p0, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    if-ne v4, p2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->g(I)I

    move-result p2

    .line 279
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object p1

    .line 280
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 282
    invoke-virtual {p0, p1, v1, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(IZ)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;
    .locals 10

    .line 490
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 499
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b(Z)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 501
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const v3, 0x7fffffff

    .line 509
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v4

    move v5, v3

    move-object v3, v1

    :goto_1
    if-ge v0, v4, :cond_7

    .line 510
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 513
    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    goto :goto_2

    .line 518
    :cond_2
    invoke-direct {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c(Landroid/view/View;)I

    move-result v7

    if-eq v7, p1, :cond_3

    goto :goto_2

    .line 523
    :cond_3
    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v7

    .line 524
    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v8

    if-eqz p2, :cond_4

    if-ge v7, v2, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v2, 0x1

    if-gt v8, v9, :cond_5

    goto :goto_2

    :cond_5
    if-ge v7, v5, :cond_6

    move-object v3, v6

    move v5, v7

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 542
    invoke-direct {p0, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->e(Landroid/view/View;)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    move-result-object v1

    :cond_8
    return-object v1
.end method

.method private a(ILandroid/view/View;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;)V
    .locals 3

    .line 821
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    if-eq v0, p3, :cond_1

    .line 824
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->e:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;

    if-eqz v1, :cond_1

    .line 826
    invoke-interface {v1, p1, p2, v0, p3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;->a(ILandroid/view/View;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;)V

    goto :goto_0

    .line 831
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->e:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;

    if-eqz v0, :cond_1

    .line 833
    sget-object v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->a:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    invoke-interface {v0, p1, p2, v1, p3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;->a(ILandroid/view/View;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 10

    .line 588
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getHeight()I

    move-result v0

    .line 589
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v1

    .line 590
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 591
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_4

    .line 596
    invoke-virtual {p0, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 599
    invoke-direct {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 603
    :cond_0
    invoke-direct {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c(Landroid/view/View;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 604
    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_2

    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_1

    goto :goto_1

    .line 608
    :cond_1
    invoke-direct {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d(Landroid/view/View;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 605
    :cond_2
    :goto_1
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-ge v4, v1, :cond_8

    .line 617
    invoke-virtual {p0, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 620
    invoke-direct {p0, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    .line 624
    :cond_5
    invoke-direct {p0, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d(Landroid/view/View;)I

    move-result v6

    .line 625
    invoke-direct {p0, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c(Landroid/view/View;)I

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 626
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 627
    invoke-virtual {p0, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_6

    invoke-virtual {p0, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    int-to-float v7, v0

    cmpl-float v7, v8, v7

    if-lez v7, :cond_7

    .line 628
    :cond_6
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 630
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 635
    :cond_8
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 636
    invoke-virtual {p0, v1, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V

    goto :goto_5

    .line 641
    :cond_9
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c()I

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 7

    .line 645
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v0, 0x7fffffff

    const/4 v2, 0x0

    .line 653
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 654
    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 657
    invoke-virtual {p0, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 662
    :cond_1
    invoke-direct {p0, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 666
    :cond_2
    invoke-virtual {p0, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    if-ge v5, v0, :cond_3

    move-object v1, v4

    move v0, v5

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 12

    .line 743
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 744
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 745
    invoke-virtual {p0, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 746
    invoke-direct {p0, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    .line 747
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 748
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 749
    invoke-direct {p0, p1, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;I)Landroid/view/View;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 755
    :cond_1
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingLeft()I

    move-result p1

    .line 756
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 758
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 759
    invoke-direct {p0, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d(Landroid/view/View;)I

    move-result v10

    .line 764
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_6

    .line 765
    invoke-virtual {p0, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 768
    invoke-direct {p0, v8}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 772
    :cond_2
    invoke-direct {p0, v8}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c(Landroid/view/View;)I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    .line 777
    :cond_3
    invoke-direct {p0, v8}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d(Landroid/view/View;)I

    move-result v11

    if-ne v11, v10, :cond_4

    const/4 v11, 0x1

    if-ne v9, v11, :cond_5

    move-object v6, v8

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v10, 0x1

    if-ne v11, v9, :cond_5

    if-nez v7, :cond_5

    move-object v7, v8

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 789
    :cond_6
    invoke-virtual {p0, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v4

    .line 790
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingTop()I

    move-result v5

    .line 793
    sget-object v8, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    if-eqz v6, :cond_7

    .line 796
    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v6

    if-lt v6, v5, :cond_7

    .line 799
    sget-object v8, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    move v5, v6

    :cond_7
    if-eqz v7, :cond_8

    .line 804
    invoke-virtual {p0, v7}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v6, v5, :cond_8

    .line 807
    sget-object v8, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->d:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    move v7, v6

    goto :goto_4

    :cond_8
    move v7, v5

    :goto_4
    move-object v11, v8

    .line 812
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    add-int v9, v7, v4

    move-object v4, p0

    move-object v5, v3

    move v6, p1

    move v8, v0

    .line 813
    invoke-virtual/range {v4 .. v9}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 816
    invoke-direct {p0, v10, v3, v11}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(ILandroid/view/View;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;)V

    goto :goto_1

    :cond_9
    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 1

    .line 839
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()I
    .locals 2

    .line 717
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 718
    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    .line 719
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    .line 720
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    return v0

    .line 723
    :cond_0
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    .line 726
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    .line 727
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    return v0

    .line 735
    :cond_1
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    return v0
.end method

.method private c(Landroid/view/View;)I
    .locals 1

    .line 843
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroid/view/View;)I

    move-result p1

    .line 844
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->k(I)I

    move-result p1

    return p1
.end method

.method private d(Landroid/view/View;)I
    .locals 1

    .line 848
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroid/view/View;)I

    move-result p1

    .line 849
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f(I)I

    move-result p1

    return p1
.end method

.method private e(Landroid/view/View;)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;
    .locals 1

    const v0, 0x7f0a01f8

    .line 853
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    return-object p1
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 0

    .line 857
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->e(Landroid/view/View;)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;->getAdapterPosition()I

    move-result p1

    return p1
.end method

.method a()Landroid/view/View;
    .locals 7

    .line 677
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/high16 v0, -0x80000000

    const/4 v2, 0x0

    .line 685
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 686
    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 689
    invoke-virtual {p0, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 694
    :cond_1
    invoke-direct {p0, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 698
    :cond_2
    invoke-virtual {p0, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    if-le v5, v0, :cond_3

    move-object v1, v4

    move v0, v5

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public a(Z)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
    .locals 1

    const/4 v0, 0x2

    .line 467
    invoke-direct {p0, v0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(IZ)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    return-object p1
.end method

.method public a(Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->e:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;

    return-void
.end method

.method public b(Z)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-direct {p0, v0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(IZ)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;

    return-object p1
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 3

    .line 442
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    return-object v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 103
    :try_start_0
    check-cast p2, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->removeAllViews()V

    .line 109
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 110
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void

    .line 105
    :catch_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "StickyHeaderLayoutManager must be used with a RecyclerView where the adapter is a kind of SectioningAdapter"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 118
    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 120
    :catch_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "StickyHeaderLayoutManager must be used with a RecyclerView where the adapter is a kind of SectioningAdapter"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 129
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c()I

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 165
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->h:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ltz v0, :cond_1

    .line 170
    iput v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    .line 171
    iput v9, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    const/4 v0, -0x1

    .line 172
    iput v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->h:I

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->i:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->i:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    iget v0, v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->a:I

    iput v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    .line 175
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->i:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    iget v0, v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->b:I

    iput v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    .line 176
    iput-object v8, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->i:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    goto :goto_0

    .line 178
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c()I

    .line 181
    :goto_0
    iget v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    .line 184
    iget-object v1, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 185
    iget-object v1, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 186
    invoke-virtual/range {p0 .. p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingLeft()I

    move-result v10

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int v11, v1, v2

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int v12, v1, v2

    .line 195
    iget v1, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 196
    iput v9, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    .line 200
    :cond_3
    iget v1, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    move v14, v0

    move v13, v1

    move v15, v9

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result v0

    if-ge v13, v0, :cond_7

    .line 202
    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v5

    .line 203
    invoke-virtual {v6, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {v6, v5, v9, v9}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 206
    invoke-direct {v6, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c(Landroid/view/View;)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_4

    .line 208
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v6, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v16

    add-int v17, v14, v16

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v10

    move v3, v14

    move v8, v4

    move v4, v11

    move-object/from16 v18, v5

    move/from16 v5, v17

    .line 212
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    add-int/lit8 v13, v13, 0x1

    .line 216
    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v1

    .line 217
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 218
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_2

    :cond_4
    move v8, v4

    move-object/from16 v18, v5

    if-ne v0, v8, :cond_5

    add-int/lit8 v0, v13, -0x1

    .line 223
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v1

    .line 224
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 226
    invoke-virtual {v6, v1, v9, v9}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 227
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v16

    add-int v17, v14, v16

    move-object/from16 v0, p0

    move v2, v10

    move v3, v14

    move v4, v11

    move/from16 v5, v17

    .line 229
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    move-object/from16 v1, v18

    .line 230
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_2

    :cond_5
    move-object/from16 v5, v18

    .line 233
    invoke-virtual {v6, v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v16

    add-int v17, v14, v16

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v10

    move v3, v14

    move v4, v11

    move/from16 v5, v17

    .line 234
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    :goto_2
    add-int v14, v14, v16

    add-int v15, v15, v16

    .line 241
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lt v0, v12, :cond_6

    goto :goto_3

    :cond_6
    add-int/2addr v13, v8

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 247
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-ge v15, v0, :cond_8

    sub-int/2addr v15, v0

    const/4 v0, 0x0

    .line 251
    invoke-virtual {v6, v15, v7, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I

    goto :goto_4

    .line 254
    :cond_8
    invoke-direct/range {p0 .. p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;)V

    :goto_4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 154
    :cond_0
    instance-of v0, p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    if-eqz v0, :cond_1

    .line 155
    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->i:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    .line 156
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->requestLayout()V

    goto :goto_0

    .line 158
    :cond_1
    sget-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: invalid saved state class, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->i:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    if-eqz v0, :cond_0

    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->c()I

    .line 141
    :cond_1
    new-instance v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;-><init>()V

    .line 142
    iget v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    iput v1, v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->a:I

    .line 143
    iget v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    iput v1, v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;->b:I

    return-object v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 452
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getItemCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 456
    iput p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->h:I

    const/4 p1, 0x0

    .line 457
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->i:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    .line 458
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->requestLayout()V

    return-void

    .line 453
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "adapter position out of range"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    .line 294
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    return v9

    .line 299
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingLeft()I

    move-result v10

    .line 300
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    const/4 v12, 0x1

    if-gez v7, :cond_7

    .line 307
    invoke-direct/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    move v0, v9

    :goto_0
    if-le v0, v7, :cond_b

    .line 311
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v0, v7

    .line 312
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v13, v0, v2

    .line 315
    invoke-virtual {v6, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->offsetChildrenVertical(I)V

    .line 319
    iget v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    if-lez v0, :cond_c

    if-le v13, v7, :cond_c

    add-int/lit8 v0, v0, -0x1

    .line 320
    iput v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    .line 324
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    iget v2, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->k(I)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v12

    goto :goto_1

    :cond_1
    move v2, v9

    :goto_1
    if-eqz v2, :cond_4

    .line 329
    iget v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    sub-int/2addr v0, v12

    iput v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    .line 330
    iget v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    if-gez v0, :cond_2

    goto/16 :goto_7

    .line 334
    :cond_2
    iget-object v2, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->k(I)I

    move-result v0

    if-nez v0, :cond_3

    move v2, v12

    goto :goto_2

    :cond_3
    move v2, v9

    :goto_2
    if-eqz v2, :cond_4

    goto/16 :goto_7

    .line 342
    :cond_4
    iget v2, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v14

    .line 343
    invoke-virtual {v6, v14, v9}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;I)V

    .line 345
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    if-ne v0, v12, :cond_5

    move v0, v12

    goto :goto_3

    :cond_5
    move v0, v9

    :goto_3
    if-eqz v0, :cond_6

    .line 349
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    iget v1, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->f:I

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f(I)I

    move-result v0

    invoke-direct {v6, v8, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;I)Landroid/view/View;

    move-result-object v0

    .line 350
    invoke-virtual {v6, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    goto :goto_4

    .line 352
    :cond_6
    invoke-virtual {v6, v14, v9, v9}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 353
    invoke-virtual {v6, v14}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    :goto_4
    sub-int v0, v5, v0

    move v3, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v10

    move v4, v11

    .line 356
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    move v0, v13

    goto/16 :goto_0

    .line 369
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getHeight()I

    move-result v13

    .line 370
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    move v0, v9

    :goto_5
    if-ge v0, v7, :cond_b

    .line 373
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v2, v13

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v7, v0

    .line 374
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v2, v2

    sub-int v14, v0, v2

    .line 376
    invoke-virtual {v6, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->offsetChildrenVertical(I)V

    .line 378
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v15, v0, 0x1

    if-ge v14, v7, :cond_a

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result v0

    if-ge v15, v0, :cond_a

    .line 383
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v16

    .line 385
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    invoke-virtual {v0, v15}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->k(I)I

    move-result v0

    if-nez v0, :cond_8

    .line 389
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    invoke-virtual {v0, v15}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f(I)I

    move-result v0

    invoke-direct {v6, v8, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;I)Landroid/view/View;

    move-result-object v1

    .line 390
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v17

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v2, v10

    move v4, v11

    move/from16 v5, v17

    .line 391
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    add-int/lit8 v15, v15, 0x1

    .line 395
    invoke-virtual {v8, v15}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v15

    .line 396
    invoke-virtual {v6, v15}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    add-int v5, v16, v17

    move-object v1, v15

    move/from16 v3, v16

    .line 397
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_6

    :cond_8
    if-ne v0, v12, :cond_9

    .line 403
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/a;

    invoke-virtual {v0, v15}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f(I)I

    move-result v0

    invoke-direct {v6, v8, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;I)Landroid/view/View;

    move-result-object v1

    .line 404
    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v17

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v2, v10

    move v4, v11

    move/from16 v5, v17

    .line 405
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 408
    invoke-virtual {v8, v15}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v15

    .line 409
    invoke-virtual {v6, v15}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    add-int v5, v16, v17

    move-object v1, v15

    move/from16 v3, v16

    .line 410
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_6

    .line 415
    :cond_9
    invoke-virtual {v8, v15}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v15

    .line 416
    invoke-virtual {v6, v15}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 418
    invoke-virtual {v6, v15, v9, v9}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 419
    invoke-virtual {v6, v15}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    add-int v5, v16, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v10

    move/from16 v3, v16

    move v4, v11

    .line 420
    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    :goto_6
    move v0, v14

    goto/16 :goto_5

    :cond_a
    move v13, v14

    goto :goto_7

    :cond_b
    move v13, v0

    .line 430
    :cond_c
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 432
    invoke-virtual {v6, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iput v0, v6, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->g:I

    .line 435
    :cond_d
    invoke-direct {v6, v8}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 436
    invoke-direct {v6, v8}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;)V

    return v13
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;I)V
    .locals 2

    if-ltz p3, :cond_1

    .line 547
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->getItemCount()I

    move-result p2

    if-gt p3, p2, :cond_1

    const/4 p2, 0x0

    .line 551
    iput-object p2, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->i:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState;

    const/4 p2, 0x0

    .line 554
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 555
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 556
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, p3

    mul-int/2addr v1, v0

    .line 557
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int v0, p2

    .line 562
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 563
    new-instance p2, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;

    invoke-direct {p2, p0, p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;-><init>(Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;Landroid/content/Context;I)V

    .line 564
    invoke-virtual {p2, p3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;->c(I)V

    .line 565
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void

    .line 548
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "adapter position out of range"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
